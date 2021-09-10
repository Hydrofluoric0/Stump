using Stump.DofusProtocol.Enums;
using Stump.ORM.SubSonic.Extensions;
using Stump.Server.BaseServer.Database;
using Stump.Server.WorldServer.Game.Actors.Fight;
using Stump.Server.WorldServer.Game.Actors.RolePlay.Characters;
using Stump.Server.WorldServer.Game.Diverse;
using Stump.Server.WorldServer.Game.Fights.Challenges;
using Stump.Server.WorldServer.Game.Fights.Results;
using Stump.Server.WorldServer.Game.Fights.Teams;
using Stump.Server.WorldServer.Game.Formulas;
using Stump.Server.WorldServer.Game.Items;
using Stump.Server.WorldServer.Game.Items.Player;
using Stump.Server.WorldServer.Game.Items.Player.Custom;
using Stump.Server.WorldServer.Game.Maps;
using Stump.Server.WorldServer.Game.Zaap;
using Stump.Server.WorldServer.Handlers.Context;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;

namespace Stump.Server.WorldServer.Game.Fights
{
    public class FightPvM : Fight<FightMonsterTeam, FightPlayerTeam>
    {
        private bool m_ageBonusDefined;

        public FightPvM(int id, Map fightMap, FightMonsterTeam defendersTeam, FightPlayerTeam challengersTeam)
            : base(id, fightMap, defendersTeam, challengersTeam)
        {
        }

        public override void StartPlacement()
        {
            base.StartPlacement();

            m_placementTimer = Map.Area.CallDelayed(FightConfiguration.PlacementPhaseTime, StartFighting);
        }

        public override void StartFighting()
        {
            m_placementTimer.Dispose();
            if (PlayerTeam.Leader.Character.IsPartyLeader())
                ActiveIdols = PlayerTeam.Leader.Character.Party.IdolInventory.ComputeIdols(this).ToList();
            else
                ActiveIdols = PlayerTeam.Leader.Character.IdolInventory.ComputeIdols(this).ToList();

            base.StartFighting();
        }

        protected override void OnFightStarted()
        {
            base.OnFightStarted();

            if (!Map.AllowFightChallenges)
                return;

            initChallenge();

            if (Map.IsDungeon() || IsPvMArenaFight)
                initChallenge();

            if (Map.IsDungeon())
            {
                foreach (var fighter in Fighters.OfType<CharacterFighter>())
                    fighter.Character.Record.BackDungeon = Map.Id;
            }

            void initChallenge()
            {
                var challenge = ChallengeManager.Instance.GetRandomChallenge(this);

                // no challenge found
                if (challenge == null)
                    return;

                challenge.Initialize();
                AddChallenge(challenge);
            }
        }

        protected override void OnFighterAdded(FightTeam team, FightActor actor)
        {
            base.OnFighterAdded(team, actor);

            if (!(team is FightMonsterTeam) || m_ageBonusDefined)
                return;

            if (team.Leader is MonsterFighter monsterFighter)
                AgeBonus = monsterFighter.Monster.Group.AgeBonus;

            m_ageBonusDefined = true;
        }

        public FightPlayerTeam PlayerTeam => Teams.FirstOrDefault(x => x.TeamType == TeamTypeEnum.TEAM_TYPE_PLAYER) as FightPlayerTeam;

        public FightMonsterTeam MonsterTeam => Teams.FirstOrDefault(x => x.TeamType == TeamTypeEnum.TEAM_TYPE_MONSTER) as FightMonsterTeam;

        public override FightTypeEnum FightType => FightTypeEnum.FIGHT_TYPE_PvM;

        public override bool IsPvP => false;

        public bool IsPvMArenaFight
        {
            get;
            set;
        }

        private DroppedItem LootOrbs(int prospec)
        {
            var listMonster = Fighters.Where(x => x is MonsterFighter);
            if (listMonster.Count() > 8)
            {
                for (int i = 0; i < listMonster.Count() - 8; i++)
                {
                    listMonster.ToList().RemoveAt(listMonster.Count() - i - 1);
                    i++;
                }
            }
            int levelTotal = listMonster.Select(x => (int)x.Level).Sum();

            var calc = (uint)(levelTotal / 2.5 * prospec / 120f);

            if (levelTotal > 900)
                calc = (uint)(levelTotal / 4 * prospec / 120f);

            if (levelTotal > 450)
                calc = (uint)(levelTotal / 3.5 * prospec / 120f);

            if (calc <= 0)
                calc = 1;

            return new DroppedItem(30000, calc); ;

        }

        protected override List<IFightResult> GetResults()
        {
            var results = new List<IFightResult>();
            results.AddRange(GetFightersAndLeavers().Where(entry => entry.HasResult).Select(entry => entry.GetFightResult()));

            var taxCollectors = Map.SubArea.Maps.Select(x => x.TaxCollector).Where(x => x != null && x.CanGatherLoots());
            results.AddRange(taxCollectors.Select(x => new TaxCollectorProspectingResult(x, this)));

            foreach (var team in m_teams)
            {
                IEnumerable<FightActor> droppers = team.OpposedTeam.GetAllFighters(entry => entry.IsDead() && entry.CanDrop()).ToList();

                var looters = results.Where(x => x.CanLoot(team) && !(x is TaxCollectorProspectingResult)).OrderByDescending(entry => entry.Prospecting).

                    Concat(results.OfType<TaxCollectorProspectingResult>().Where(x => x.CanLoot(team)).OrderByDescending(x => x.Prospecting)); // tax collector loots at the end

                var teamPP = team.GetAllFighters<CharacterFighter>().Sum(entry => (entry.Stats[PlayerFields.Prospecting].Total >= 100) ? 100 : entry.Stats[PlayerFields.Prospecting].Total);

                var looterx = looters.ToList();

                var kamas = Winners == team ? droppers.Sum(entry => entry.GetDroppedKamas()) * team.GetAllFighters<CharacterFighter>().Count() : 0;

                foreach (var looter in looters)
                {
                    var character1 = World.Instance.GetCharacter(looter.Id);

                    if (team == Winners && looter is FightPlayerResult)
                    {
                        Character character = (looter as FightPlayerResult).Character;
                        var incrementKamas = false;
                        if (character.WorldAccount.Vip)
                            incrementKamas = true;

                        looter.Loot.Kamas = FightFormulas.CalculateEarnedKamas(looter, team.GetAllFighters(), droppers) * (incrementKamas ? 3 : 1);

                        /*if (looter is FightPlayerResult)
                        {
                            (looter as FightPlayerResult).Character.SendServerMessage($"Kamas : x {(incrementKamas ? 3 : 1)}");
                        }*/
                    }

                    //looter.Loot.Kamas = FightFormulas.CalculateEarnedKamas(looter, team.GetAllFighters(), droppers);
                    if (team == Winners)
                    {
                        //SAVE DUNGEON
                        //if (character1.Record.BackDungeon == Map.Id)
                        //    character1.Record.BackDungeon = 0;

                        foreach (var item in droppers.SelectMany(dropper => dropper.RollLoot(looter)))

                        {
                            looter.Loot.AddItem(item);

                        }
                        looter.Loot.AddItem(LootOrbs(looter.Prospecting));

                        #region ecailles
                        foreach (var monster in this.DefendersTeam.GetAllFighters())
                        {
                            if (monster is MonsterFighter)
                            {
                                if ((monster as MonsterFighter).Monster.Template.Id == 377 && !SoulStoneFilled.FIGHT_MAPS.Contains(PlayerTeam.Fight.Map.Id))
                                {
                                    looter.Loot.AddItem(new DroppedItem(14995, 1));
                                }
                                if ((monster as MonsterFighter).Monster.Template.Id == 375 && !SoulStoneFilled.FIGHT_MAPS.Contains(PlayerTeam.Fight.Map.Id))
                                {
                                    looter.Loot.AddItem(new DroppedItem(14994, 1));
                                }
                                if ((monster as MonsterFighter).Monster.Template.Id == 374 && !SoulStoneFilled.FIGHT_MAPS.Contains(PlayerTeam.Fight.Map.Id))
                                {
                                    looter.Loot.AddItem(new DroppedItem(14993, 1));
                                }
                            }
                        }
                        #endregion

                        #region Orbes
                        //if (team == Winners && looter is FightPlayerResult)
                        //{
                        //    Character character = (looter as FightPlayerResult).Character;
                        //    var incrementOrbe = false;
                        //    if (character.WorldAccount.Vip)
                        //        incrementOrbe = true;

                        //    int sum = 0;
                        //    foreach (var monster in DefendersTeam.GetAllFighters())
                        //    {
                        //        if (monster is MonsterFighter)
                        //        {
                        //            if ((monster as MonsterFighter).Monster.Template.Id != 494)
                        //            {
                        //                sum += monster.Level;
                        //            }
                        //        }
                        //    }

                        //    int maxLootNumbers = (int)((sum / (double)DefendersTeam.GetAllFighters().Count()));
                        //    looter.Loot.AddItem(new DroppedItem(30000, ((uint)new Random().Next((int)(maxLootNumbers / 4.0 < 1 ? 1 : maxLootNumbers / 4.0), (maxLootNumbers < 1 ? 1 : maxLootNumbers))) * (uint)Rates.OrbsRate * (uint)(incrementOrbe ? 3 : 1)));

                        //    /*if (looter is FightPlayerResult)
                        //    {
                        //        (looter as FightPlayerResult).Character.SendServerMessage($"Orbes : x {(incrementOrbe ? 3 : 1)}");
                        //    }*/
                        //}
                        #endregion

                        #region chasseur
                        if (team == Winners && looter is FightPlayerResult)
                        {
                            Character character = (looter as FightPlayerResult).Character;
                            BasePlayerItem Arme = character.Inventory.TryGetItem(CharacterInventoryPositionEnum.ACCESSORY_POSITION_WEAPON);
                            var items = character.Inventory.GetEquipedItems();
                            //var effectDamage = Arme.Effects.Find(x => x.EffectId == EffectsEnum.Effect_795);

                            if (Arme != null)
                            {
                                foreach (var item in items)
                                {
                                    if (item.Effects.Exists(x => x.EffectId == EffectsEnum.Effect_795))
                                    {
                                        foreach (MonsterFighter monster in this.DefendersTeam.GetAllFighters().Where(x => x is MonsterFighter))
                                        {
                                            int m_templates = monster.Monster.Template.Id;
                                            if (ChasseurManager.Instance.DropExist(m_templates))
                                            {
                                                if (Arme != null)
                                                {
                                                    if ((int)character.Jobs[(int)JobEnum.CHASSEUR].Level >= ChasseurManager.Instance.Level(m_templates))
                                                    {
                                                        looter.Loot.AddItem(new DroppedItem(ChasseurManager.Instance.ItemId(m_templates), (uint)1));
                                                    }
                                                }
                                            }
                                        }
                                    }

                                }

                            }
                        }
                        #endregion

                        #region cadeaux
                        int maxLootNumber = 0;
                        int multiplicateur = 0;
                        if (team == Winners && looter is FightPlayerResult)
                        {
                            foreach (var monster in DefendersTeam.GetAllFighters())
                            {
                                if (monster is MonsterFighter)
                                {
                                    if (monster.Area.Id == 42)
                                    {
                                        if (monster.Level <= 80)
                                            multiplicateur = 5;
                                        else if (monster.Level > 80 && monster.Level <= 160)
                                            multiplicateur = 10;
                                        else if (monster.Level > 160 && monster.Level <= 200)
                                            multiplicateur = 15;

                                        maxLootNumber = monster.Level * multiplicateur;
                                        looter.Loot.AddItem(new DroppedItem(12970, (uint)maxLootNumber / (uint)ChallengersTeam.GetAllFighters().Count()));
                                    }
                                }
                            }
                        }
                        #endregion

                        #region Ascension Boss
                        if (team == Winners && looter is FightPlayerResult)
                        {
                            foreach (var monster in this.DefendersTeam.GetAllFighters())
                            {
                                if (monster is MonsterFighter)
                                {
                                    Actors.RolePlay.Characters.Character character = (looter as FightPlayerResult).Character;
                                    if (AscensionEnum.getAscensionFloorMap(character.GetAscensionStair())[0].Equals(character.Map.Id))
                                    {
                                        foreach (var item in AscensionEnum.getAscensionFloorLoots(character.GetAscensionStair()))
                                        {
                                            looter.Loot.AddItem(new DroppedItem(item[0], (uint)item[1])); // si oui on loot l'item
                                        }
                                        if (character.GetAscensionStair() < 99)
                                        {
                                            character.SendServerMessage("Vous avez terminé l'étage " + (character.AscensionStair + 1));
                                            character.AddAscensionStair(1);
                                            if (character.GetAscensionStair() == 99)
                                            {
                                                character.SendServerMessage("Vous avez terminé tous les étages");
                                                World.Instance.SendAnnounce("<b>" + character.Name + "</b> a terminé tous les étages de la Tour de l'Ascension.", Color.Yellow);
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        #endregion

                        #region Coffre au trésor
                        if (team == Winners && looter is FightPlayerResult)
                        {
                            Character character = (looter as FightPlayerResult).Character;

                            foreach (var monster in DefendersTeam.GetAllFighters())
                            {
                                if (monster is MonsterFighter)
                                {
                                    var incrementXpTresor = false;
                                    if (character.Record.TreasureSearch == 2 || character.Record.TreasureSearch == 3)
                                        incrementXpTresor = true;

                                    //Coffre trésor lvl 20
                                    if ((monster as MonsterFighter).Monster.Template.Id == 3724 && (monster as MonsterFighter).Monster.Grade.Level == 20)
                                    {
                                        looter.Loot.AddItem(15263, 50 * (uint)(incrementXpTresor ? 2 : 1));//Rose des sables
                                        looter.Loot.AddItem(15265, 1 * (uint)(incrementXpTresor ? 2 : 1));//Coffre de ressources
                                        character.SendInformationMessage(TextInformationTypeEnum.TEXT_INFORMATION_MESSAGE, 21, 50, 15263);
                                        character.SendInformationMessage(TextInformationTypeEnum.TEXT_INFORMATION_MESSAGE, 21, 1, 15265);

                                        character.DisplayNotification("Félicitation, vous avez battu le Trésor.", NotificationEnum.INFORMATION);
                                        character.SendServerMessage("Chasse au trésor terminée, vous avez récupéré le trésor.");

                                        character.RemoveEmote(EmotesEnum.EMOTE_CHERCHER_UN_TRESOR);

                                        character.Record.TreasureSearch = 0;
                                        character.Record.TreasureMapCoffre = null;
                                        character.Record.TreasureTimeStart = DateTime.Now;
                                        character.Record.TreasureIndice = null;

                                        DataManager.DefaultDatabase.Update(character.Record);
                                    }
                                    //Coffre trésor lvl 40
                                    if ((monster as MonsterFighter).Monster.Template.Id == 3724 && (monster as MonsterFighter).Monster.Grade.Level == 40)
                                    {
                                        looter.Loot.AddItem(15263, 70 * (uint)(incrementXpTresor ? 2 : 1));//Rose des sables
                                        looter.Loot.AddItem(15265, 1 * (uint)(incrementXpTresor ? 2 : 1));//Coffre de ressources
                                        character.SendInformationMessage(TextInformationTypeEnum.TEXT_INFORMATION_MESSAGE, 21, 70, 15263);
                                        character.SendInformationMessage(TextInformationTypeEnum.TEXT_INFORMATION_MESSAGE, 21, 1, 15265);

                                        character.DisplayNotification("Félicitation, vous avez battu le Trésor.", NotificationEnum.INFORMATION);
                                        character.SendServerMessage("Chasse au trésor terminée, vous avez récupéré le trésor.");

                                        character.RemoveEmote(EmotesEnum.EMOTE_CHERCHER_UN_TRESOR);

                                        character.Record.TreasureSearch = 0;
                                        character.Record.TreasureMapCoffre = null;
                                        character.Record.TreasureTimeStart = DateTime.Now;
                                        character.Record.TreasureIndice = null;

                                        DataManager.DefaultDatabase.Update(character.Record);
                                    }
                                    //Coffre trésor lvl 60
                                    if ((monster as MonsterFighter).Monster.Template.Id == 3724 && (monster as MonsterFighter).Monster.Grade.Level == 60)
                                    {
                                        looter.Loot.AddItem(15263, 90 * (uint)(incrementXpTresor ? 2 : 1));//Rose des sables
                                        looter.Loot.AddItem(15265, 1 * (uint)(incrementXpTresor ? 2 : 1));//Coffre de ressources
                                        character.SendInformationMessage(TextInformationTypeEnum.TEXT_INFORMATION_MESSAGE, 21, 90, 15263);
                                        character.SendInformationMessage(TextInformationTypeEnum.TEXT_INFORMATION_MESSAGE, 21, 1, 15265);

                                        character.DisplayNotification("Félicitation, vous avez battu le Trésor.", NotificationEnum.INFORMATION);
                                        character.SendServerMessage("Chasse au trésor terminée, vous avez récupéré le trésor.");

                                        character.RemoveEmote(EmotesEnum.EMOTE_CHERCHER_UN_TRESOR);

                                        character.Record.TreasureSearch = 0;
                                        character.Record.TreasureMapCoffre = null;
                                        character.Record.TreasureTimeStart = DateTime.Now;
                                        character.Record.TreasureIndice = null;

                                        DataManager.DefaultDatabase.Update(character.Record);
                                    }
                                    //Coffre trésor lvl 80
                                    if ((monster as MonsterFighter).Monster.Template.Id == 3724 && (monster as MonsterFighter).Monster.Grade.Level == 80)
                                    {
                                        looter.Loot.AddItem(15263, 110 * (uint)(incrementXpTresor ? 2 : 1));//Rose des sables
                                        looter.Loot.AddItem(15265, 1 * (uint)(incrementXpTresor ? 2 : 1));//Coffre de ressources
                                        character.SendInformationMessage(TextInformationTypeEnum.TEXT_INFORMATION_MESSAGE, 21, 110, 15263);
                                        character.SendInformationMessage(TextInformationTypeEnum.TEXT_INFORMATION_MESSAGE, 21, 1, 15265);

                                        character.DisplayNotification("Félicitation, vous avez battu le Trésor.", NotificationEnum.INFORMATION);
                                        character.SendServerMessage("Chasse au trésor terminée, vous avez récupéré le trésor.");

                                        character.RemoveEmote(EmotesEnum.EMOTE_CHERCHER_UN_TRESOR);

                                        character.Record.TreasureSearch = 0;
                                        character.Record.TreasureMapCoffre = null;
                                        character.Record.TreasureTimeStart = DateTime.Now;
                                        character.Record.TreasureIndice = null;

                                        DataManager.DefaultDatabase.Update(character.Record);
                                    }
                                    //Coffre trésor lvl 100
                                    if ((monster as MonsterFighter).Monster.Template.Id == 3724 && (monster as MonsterFighter).Monster.Grade.Level == 100)
                                    {
                                        looter.Loot.AddItem(15263, 130 * (uint)(incrementXpTresor ? 2 : 1));//Rose des sables
                                        looter.Loot.AddItem(15265, 1 * (uint)(incrementXpTresor ? 2 : 1));//Coffre de ressources
                                        character.SendInformationMessage(TextInformationTypeEnum.TEXT_INFORMATION_MESSAGE, 21, 130, 15263);
                                        character.SendInformationMessage(TextInformationTypeEnum.TEXT_INFORMATION_MESSAGE, 21, 1, 15265);

                                        character.DisplayNotification("Félicitation, vous avez battu le Trésor.", NotificationEnum.INFORMATION);
                                        character.SendServerMessage("Chasse au trésor terminée, vous avez récupéré le trésor.");

                                        character.RemoveEmote(EmotesEnum.EMOTE_CHERCHER_UN_TRESOR);

                                        character.Record.TreasureSearch = 0;
                                        character.Record.TreasureMapCoffre = null;
                                        character.Record.TreasureTimeStart = DateTime.Now;
                                        character.Record.TreasureIndice = null;

                                        DataManager.DefaultDatabase.Update(character.Record);
                                    }
                                    //Coffre trésor lvl 120
                                    if ((monster as MonsterFighter).Monster.Template.Id == 3724 && (monster as MonsterFighter).Monster.Grade.Level == 120)
                                    {
                                        looter.Loot.AddItem(15263, 150 * (uint)(incrementXpTresor ? 2 : 1));//Rose des sables
                                        looter.Loot.AddItem(15265, 1 * (uint)(incrementXpTresor ? 2 : 1));//Coffre de ressources
                                        character.SendInformationMessage(TextInformationTypeEnum.TEXT_INFORMATION_MESSAGE, 21, 150, 15263);
                                        character.SendInformationMessage(TextInformationTypeEnum.TEXT_INFORMATION_MESSAGE, 21, 1, 15265);

                                        character.DisplayNotification("Félicitation, vous avez battu le Trésor.", NotificationEnum.INFORMATION);
                                        character.SendServerMessage("Chasse au trésor terminée, vous avez récupéré le trésor.");

                                        character.RemoveEmote(EmotesEnum.EMOTE_CHERCHER_UN_TRESOR);

                                        character.Record.TreasureSearch = 0;
                                        character.Record.TreasureMapCoffre = null;
                                        character.Record.TreasureTimeStart = DateTime.Now;
                                        character.Record.TreasureIndice = null;

                                        DataManager.DefaultDatabase.Update(character.Record);
                                    }
                                    //Coffre trésor lvl 140
                                    if ((monster as MonsterFighter).Monster.Template.Id == 3724 && (monster as MonsterFighter).Monster.Grade.Level == 140)
                                    {
                                        looter.Loot.AddItem(15263, 170 * (uint)(incrementXpTresor ? 2 : 1));//Rose des sables
                                        looter.Loot.AddItem(15265, 1 * (uint)(incrementXpTresor ? 2 : 1));//Coffre de ressources
                                        character.SendInformationMessage(TextInformationTypeEnum.TEXT_INFORMATION_MESSAGE, 21, 170, 15263);
                                        character.SendInformationMessage(TextInformationTypeEnum.TEXT_INFORMATION_MESSAGE, 21, 1, 15265);

                                        character.DisplayNotification("Félicitation, vous avez battu le Trésor.", NotificationEnum.INFORMATION);
                                        character.SendServerMessage("Chasse au trésor terminée, vous avez récupéré le trésor.");

                                        character.RemoveEmote(EmotesEnum.EMOTE_CHERCHER_UN_TRESOR);

                                        character.Record.TreasureSearch = 0;
                                        character.Record.TreasureMapCoffre = null;
                                        character.Record.TreasureTimeStart = DateTime.Now;
                                        character.Record.TreasureIndice = null;

                                        DataManager.DefaultDatabase.Update(character.Record);
                                    }
                                    //Coffre trésor lvl 160
                                    if ((monster as MonsterFighter).Monster.Template.Id == 3724 && (monster as MonsterFighter).Monster.Grade.Level == 160)
                                    {
                                        looter.Loot.AddItem(15263, 190 * (uint)(incrementXpTresor ? 2 : 1));//Rose des sables
                                        looter.Loot.AddItem(15265, 1 * (uint)(incrementXpTresor ? 2 : 1));//Coffre de ressources
                                        character.SendInformationMessage(TextInformationTypeEnum.TEXT_INFORMATION_MESSAGE, 21, 190, 15263);
                                        character.SendInformationMessage(TextInformationTypeEnum.TEXT_INFORMATION_MESSAGE, 21, 1, 15265);

                                        character.DisplayNotification("Félicitation, vous avez battu le Trésor.", NotificationEnum.INFORMATION);
                                        character.SendServerMessage("Chasse au trésor terminée, vous avez récupéré le trésor.");

                                        character.RemoveEmote(EmotesEnum.EMOTE_CHERCHER_UN_TRESOR);

                                        character.Record.TreasureSearch = 0;
                                        character.Record.TreasureMapCoffre = null;
                                        character.Record.TreasureTimeStart = DateTime.Now;
                                        character.Record.TreasureIndice = null;

                                        DataManager.DefaultDatabase.Update(character.Record);
                                    }
                                    //Coffre trésor lvl 180
                                    if ((monster as MonsterFighter).Monster.Template.Id == 3724 && (monster as MonsterFighter).Monster.Grade.Level == 180)
                                    {
                                        looter.Loot.AddItem(15263, 210 * (uint)(incrementXpTresor ? 2 : 1));//Rose des sables
                                        looter.Loot.AddItem(15265, 1 * (uint)(incrementXpTresor ? 2 : 1));//Coffre de ressources
                                        character.SendInformationMessage(TextInformationTypeEnum.TEXT_INFORMATION_MESSAGE, 21, 210, 15263);
                                        character.SendInformationMessage(TextInformationTypeEnum.TEXT_INFORMATION_MESSAGE, 21, 1, 15265);

                                        character.DisplayNotification("Félicitation, vous avez battu le Trésor.", NotificationEnum.INFORMATION);
                                        character.SendServerMessage("Chasse au trésor terminée, vous avez récupéré le trésor.");

                                        character.RemoveEmote(EmotesEnum.EMOTE_CHERCHER_UN_TRESOR);

                                        character.Record.TreasureSearch = 0;
                                        character.Record.TreasureMapCoffre = null;
                                        character.Record.TreasureTimeStart = DateTime.Now;
                                        character.Record.TreasureIndice = null;

                                        DataManager.DefaultDatabase.Update(character.Record);
                                    }
                                    //Coffre trésor lvl 200
                                    if ((monster as MonsterFighter).Monster.Template.Id == 3724 && (monster as MonsterFighter).Monster.Grade.Level == 200)
                                    {
                                        looter.Loot.AddItem(15263, 230 * (uint)(incrementXpTresor ? 2 : 1));//Rose des sables
                                        looter.Loot.AddItem(15265, 1 * (uint)(incrementXpTresor ? 2 : 1));//Coffre de ressources
                                        character.SendInformationMessage(TextInformationTypeEnum.TEXT_INFORMATION_MESSAGE, 21, 230, 15263);
                                        character.SendInformationMessage(TextInformationTypeEnum.TEXT_INFORMATION_MESSAGE, 21, 1, 15265);

                                        character.DisplayNotification("Félicitation, vous avez battu le Trésor.", NotificationEnum.INFORMATION);
                                        character.SendServerMessage("Chasse au trésor terminée, vous avez récupéré le trésor.");

                                        character.RemoveEmote(EmotesEnum.EMOTE_CHERCHER_UN_TRESOR);

                                        character.Record.TreasureSearch = 0;
                                        character.Record.TreasureMapCoffre = null;
                                        character.Record.TreasureTimeStart = DateTime.Now;
                                        character.Record.TreasureIndice = null;

                                        DataManager.DefaultDatabase.Update(character.Record);
                                    }
                                }
                            }
                        }
                        #endregion
                    }



                    if (looter is IExperienceResult)
                    {
                        var winXP = FightFormulas.CalculateWinExp(looter, team.GetAllFighters<CharacterFighter>(), droppers);
                        var biggestwave = DefendersTeam.m_wavesFighters.OrderByDescending(x => x.WaveNumber).FirstOrDefault();
                        if (biggestwave != null)
                            winXP = FightFormulas.CalculateWinExp(looter, team.GetAllFighters<CharacterFighter>(), droppers, (biggestwave.WaveNumber + 1));

                        (looter as IExperienceResult).AddEarnedExperience(team == Winners ? winXP : (long)Math.Round(winXP * 0.10));

                        if (FighterPlaying.Fight.DefendersTeam.Fighters.Any(x => x.Level >= 120))
                        {
                            if (looter is FightPlayerResult)
                            {
                                (looter as FightPlayerResult).Character.Record.WinPvm++;
                            }
                        }
                    }
                }
            }

            if (Winners == null || Draw)
            {
                return results;
            }

            else if (DefendersTeam.Fighters.Any(x => x is MonsterFighter && (x as MonsterFighter).Monster.Nani))
            {
                var NaniMonster = Map.NaniMonster;
                if (NaniMonster == null) return results;

                MonsterNaniManager.Instance.ResetSpawn(Map.NaniMonster);
                Map.NaniMonster = null;

                var characters = Winners.Fighters.OfType<CharacterFighter>();
                if (characters.Count() < 1) return results;

                if (Winners.TeamType == TeamTypeEnum.TEAM_TYPE_PLAYER) World.Instance.SendAnnounce("<b>" + string.Join(",", characters.Select(x => x.Name)) + "</b> ont vaincu : <b>" + NaniMonster.Template.Name + "</b>.");

            }
            return results;
        }
        #region drop perso

        /*#region bowlton
        //if (team == Winners && looter is FightPlayerResult && this.DefendersTeam.GetAllFighters().Where(x => x is MonsterFighter).ToList().Exists(x => (x as MonsterFighter).Monster.Grade.Level > 20))
        //{
        //    Actors.RolePlay.Characters.Character character = (looter as FightPlayerResult).Character;

        //    MonsterFighter boss6 = this.DefendersTeam.GetAllFighters().Where(x => x is MonsterFighter).ToList().FirstOrDefault(x => (x as MonsterFighter).Monster.Grade.Level > 20) as MonsterFighter;

        //    if (boss6 != null)
        //    {
        //        uint bp6 = ((uint)new Stump.Core.Mathematics.CryptoRandom().Next((int)1, (int)Math.Ceiling(boss6.Level / 20 * 1.61)));

        //        looter.Loot.AddItem(new Items.DroppedItem(13026, bp6));
        //    }
        //}

        //if (team == Winners && looter is FightPlayerResult && this.DefendersTeam.GetAllFighters().Where(x => x is MonsterFighter).ToList().Exists(x => (x as MonsterFighter).Monster.Grade.Level > 20))
        //{
        //    Actors.RolePlay.Characters.Character character = (looter as FightPlayerResult).Character;

        //    MonsterFighter boss9 = this.DefendersTeam.GetAllFighters().Where(x => x is MonsterFighter).ToList().FirstOrDefault(x => (x as MonsterFighter).Monster.Grade.Level > 20) as MonsterFighter;

        //    if (boss9 != null)
        //    {
        //        uint bp9 = ((uint)new Stump.Core.Mathematics.CryptoRandom().Next((int)1, (int)Math.Ceiling(boss9.Level / 20 * 1.61)));

        //        looter.Loot.AddItem(new Items.DroppedItem(13023, bp9));
        //    }
        //}

        #endregion

        #region drop jeton perfection
        if (team == Winners && looter is FightPlayerResult && this.DefendersTeam.GetAllFighters().Where(x => x is MonsterFighter).ToList().Exists(x => (x as MonsterFighter).Monster.Template.IsBoss))
        {
            Character character = (looter as FightPlayerResult).Character;
            MonsterFighter boss2 = this.DefendersTeam.GetAllFighters().Where(x => x is MonsterFighter).ToList().FirstOrDefault(x => (x as MonsterFighter).Monster.Template.IsBoss) as MonsterFighter;
            MonsterFighter boss4 = this.DefendersTeam.GetAllFighters().Where(x => x is MonsterFighter).ToList().FirstOrDefault(x => (x as MonsterFighter).Monster.Grade.Level > 99) as MonsterFighter;

            if (boss2 != null && boss4 != null)
            {
                uint bp2 = ((uint)new Stump.Core.Mathematics.CryptoRandom().Next((int)1, (int)Math.Ceiling(boss2.Level / 30 * 1.61)));
                looter.Loot.AddItem(new Items.DroppedItem(16892, bp2));
            }
        }
        #endregion

        #region capturedemuldo
        if (team == Winners && looter is FightPlayerResult && this.DefendersTeam.GetAllFighters().Where(x => x is MonsterFighter).ToList().Exists(x => (x as MonsterFighter).Monster.Grade.Level > 175))
        {
            Actors.RolePlay.Characters.Character character = (looter as FightPlayerResult).Character;
            Items.Player.BasePlayerItem Filet = character.Inventory.TryGetItem(CharacterInventoryPositionEnum.ACCESSORY_POSITION_WEAPON);


            if (Filet != null && Filet.Template.Id == 17953 && character.Fighter.HasState((int)SpellStatesEnum.APPRIVOISEMENT_10) && character.Area.Id == 5)

            {
                MonsterFighter muldo1 = this.DefendersTeam.GetAllFighters().Where(x => x is MonsterFighter).ToList().FirstOrDefault(x => (x as MonsterFighter).Monster.Template.Id == 4434) as MonsterFighter;
                MonsterFighter muldo2 = this.DefendersTeam.GetAllFighters().Where(x => x is MonsterFighter).ToList().FirstOrDefault(x => (x as MonsterFighter).Monster.Template.Id == 4435) as MonsterFighter;
                MonsterFighter muldo3 = this.DefendersTeam.GetAllFighters().Where(x => x is MonsterFighter).ToList().FirstOrDefault(x => (x as MonsterFighter).Monster.Template.Id == 4436) as MonsterFighter;
                MonsterFighter muldo4 = this.DefendersTeam.GetAllFighters().Where(x => x is MonsterFighter).ToList().FirstOrDefault(x => (x as MonsterFighter).Monster.Template.Id == 4437) as MonsterFighter;
                MonsterFighter muldo5 = this.DefendersTeam.GetAllFighters().Where(x => x is MonsterFighter).ToList().FirstOrDefault(x => (x as MonsterFighter).Monster.Template.Id == 4438) as MonsterFighter;
                character.Inventory.RemoveItem(Filet, 1);
                if (muldo1 != null)

                {
                    looter.Loot.AddItem(new Items.DroppedItem(17957, 1));
                }

                if (muldo2 != null)

                {
                    looter.Loot.AddItem(new Items.DroppedItem(17956, 1));
                }

                if (muldo3 != null)

                {
                    looter.Loot.AddItem(new Items.DroppedItem(17958, 1));
                }

                if (muldo4 != null)

                {
                    looter.Loot.AddItem(new Items.DroppedItem(17959, 1));
                }

                if (muldo5 != null)

                {
                    looter.Loot.AddItem(new Items.DroppedItem(17960, 1));
                }

            }
        }
        #endregion

        #region drop rune
        if (team == Winners && looter is FightPlayerResult && this.DefendersTeam.GetAllFighters().Where(x => x is MonsterFighter).ToList().Exists(x => (x as MonsterFighter).Monster.Grade.Level > 20))
        {
            Character character = (looter as FightPlayerResult).Character;
            MonsterFighter boss4 = this.DefendersTeam.GetAllFighters().Where(x => x is MonsterFighter).ToList().FirstOrDefault(x => (x as MonsterFighter).Monster.Grade.Level > 20) as MonsterFighter;

            if (boss4 != null)
            {
                uint bp2 = ((uint)new Stump.Core.Mathematics.CryptoRandom().Next((int)1, (int)Math.Ceiling(boss4.Level / 9 * 8.61)));
                looter.Loot.AddItem(new Items.DroppedItem(276, bp2));
            }
        }
        #endregion

        #region DROP PB
        if (team == Winners && looter is FightPlayerResult && this.DefendersTeam.GetAllFighters().Where(x => x is MonsterFighter).ToList().Exists(x => (x as MonsterFighter).Monster.Grade.Level > 175))
        {
            Actors.RolePlay.Characters.Character character = (looter as FightPlayerResult).Character;
            Items.Player.BasePlayerItem BPsearcher = character.Inventory.TryGetItem(CharacterInventoryPositionEnum.ACCESSORY_POSITION_PETS);


            if (BPsearcher != null && BPsearcher.Template.Id == 10657)

            {
                MonsterFighter boss = this.DefendersTeam.GetAllFighters().Where(x => x is MonsterFighter).ToList().FirstOrDefault(x => (x as MonsterFighter).Monster.Grade.Level > 165) as MonsterFighter;
                MonsterFighter boss3 = this.DefendersTeam.GetAllFighters().Where(x => x is MonsterFighter).ToList().FirstOrDefault(x => (x as MonsterFighter).Monster.Template.IsBoss) as MonsterFighter;


                if (boss != null && boss3 != null)

                {
                    uint bp = ((uint)new Stump.Core.Mathematics.CryptoRandom().Next((int)1, (int)Math.Ceiling(boss.Level / 20 * 1.11)));
                    looter.Loot.AddItem(new Items.DroppedItem(7919, bp));

                }
            }
        }
        #endregion

        #region DROP TUTU
        if (team == Winners && looter is FightPlayerResult && this.DefendersTeam.GetAllFighters().Where(x => x is MonsterFighter).ToList().Exists(x => (x as MonsterFighter).Monster.Template.Id == 113))
        {
            Actors.RolePlay.Characters.Character character = (looter as FightPlayerResult).Character;
            Items.Player.BasePlayerItem Tutusearcher = character.Inventory.TryGetItem(CharacterInventoryPositionEnum.ACCESSORY_POSITION_PETS);


            if (Tutusearcher != null && Tutusearcher.Template.Id == 8153)

            {
                MonsterFighter boss10 = this.DefendersTeam.GetAllFighters().Where(x => x is MonsterFighter).ToList().FirstOrDefault(x => (x as MonsterFighter).Monster.Template.Id == 113) as MonsterFighter;

                if (boss10 != null)

                {
                    looter.Loot.AddItem(new Items.DroppedItem(2267, 1));
                }
            }
        }
        #endregion

        #region DROP dofus
        if (team == Winners && looter is FightPlayerResult && this.DefendersTeam.GetAllFighters().Where(x => x is MonsterFighter).ToList().Exists(x => (x as MonsterFighter).Monster.Template.Id == 2431))
        {

            looter.Loot.AddItem(new Items.DroppedItem(6980, 1));
        }

        if (team == Winners && looter is FightPlayerResult && this.DefendersTeam.GetAllFighters().Where(x => x is MonsterFighter).ToList().Exists(x => (x as MonsterFighter).Monster.Template.Id == 854))
        {

            looter.Loot.AddItem(new Items.DroppedItem(7044, 1));
        }
    }
    #endregion*/

        #endregion drop perso

        protected override void SendGameFightJoinMessage(CharacterFighter fighter)
        {
            ContextHandler.SendGameFightJoinMessage(fighter.Character.Client, true, true, IsStarted, IsStarted ? 0 : (int)GetPlacementTimeLeft().TotalMilliseconds / 100, FightType);
        }

        protected override bool CanCancelFight() => false;

        public override TimeSpan GetPlacementTimeLeft()
        {
            var timeleft = FightConfiguration.PlacementPhaseTime - (DateTime.Now - CreationTime).TotalMilliseconds;

            if (timeleft < 0)
                timeleft = 0;

            return TimeSpan.FromMilliseconds(timeleft);
        }

        protected override void OnDisposed()
        {
            if (m_placementTimer != null)
                m_placementTimer.Dispose();

            base.OnDisposed();
        }
    }
}