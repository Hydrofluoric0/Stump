using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Text.RegularExpressions;
using Stump.DofusProtocol.Enums;
using Stump.DofusProtocol.Messages;
using Stump.DofusProtocol.Types;
using Stump.Server.BaseServer.Network;
using Stump.Server.WorldServer.Core.Network;
using Stump.Server.WorldServer.Database.Characters;
using Stump.Server.WorldServer.Game.Accounts;
using Stump.Server.WorldServer.Game.Actors.RolePlay.Characters;
using Stump.Server.WorldServer.Game.Breeds;
using Stump.Server.WorldServer.Game.Fights;
using Stump.Server.WorldServer.Handlers.Basic;
using Stump.Server.WorldServer.Handlers.Chat;
using Stump.Server.WorldServer.Handlers.Context;
using Stump.Server.WorldServer.Handlers.Context.RolePlay;
using Stump.Server.WorldServer.Handlers.Guilds;
using Stump.Server.WorldServer.Handlers.Friends;
using Stump.Server.WorldServer.Handlers.Initialization;
using Stump.Server.WorldServer.Handlers.Inventory;
using Stump.Server.WorldServer.Handlers.Mounts;
using Stump.Server.WorldServer.Handlers.PvP;
using Stump.Server.WorldServer.Handlers.Shortcuts;
using Stump.Server.WorldServer.Handlers.Startup;
using Stump.Server.WorldServer.Handlers.Actions;
using Stump.Server.WorldServer.Database.Accounts;
using Stump.Server.WorldServer.Game.Spells;
using Stump.Server.WorldServer.Game.HavenBags;
using Stump.Server.WorldServer.Game.Quests;
using Stump.Server.WorldServer.Game.Maps.Cells;
using Stump.Server.WorldServer.Game;
using Stump.Server.WorldServer.Handlers.Achievements;
using Stump.Server.WorldServer.Game.Items.Player;
using Stump.Server.BaseServer.Database;
using Stump.Server.WorldServer.Game.Items;

namespace Stump.Server.WorldServer.Handlers.Characters
{
    public partial class CharacterHandler : WorldHandlerContainer
    {
        [WorldHandler(CharacterFirstSelectionMessage.Id, ShouldBeLogged = false, IsGamePacket = false)]
        public static void HandleCharacterFirstSelectionMessage(WorldClient client, CharacterFirstSelectionMessage message)
        {
            // TODO ADD TUTORIAL EFFECTS
            
            HandleCharacterSelectionMessage(client, message);
        }

        [WorldHandler(CharacterSelectionMessage.Id, ShouldBeLogged = false, IsGamePacket = false)]
        public static void HandleCharacterSelectionMessage(WorldClient client, CharacterSelectionMessage message)
        {
            var character = client.Characters.Where(x => !x.IsDeleted).First(entry => entry.Id == (int)message.ObjectId);

            /* Check null */
            if (character == null)
            {
                client.Send(new CharacterSelectedErrorMessage());
                return;
            }

            /* Common selection */
            CommonCharacterSelection(client, character);
        }

        [WorldHandler(CharacterSelectionWithRemodelMessage.Id, ShouldBeLogged = false, IsGamePacket = false)]
        public static void HandleCharacterSelectionWithRemodelMessage(WorldClient client, CharacterSelectionWithRemodelMessage message)
        {
            var character = client.Characters.Where(x => !x.IsDeleted).First(entry => entry.Id == (int)message.ObjectId);

            /* Check null */
            if (character == null)
            {
                client.Send(new CharacterSelectedErrorMessage());
                return;
            }

            var remodel = message.Remodel;

            if (((character.MandatoryChanges & (sbyte)CharacterRemodelingEnum.CHARACTER_REMODELING_NAME)
                == (sbyte)CharacterRemodelingEnum.CHARACTER_REMODELING_NAME)
                || ((character.PossibleChanges & (sbyte)CharacterRemodelingEnum.CHARACTER_REMODELING_NAME)
                == (sbyte)CharacterRemodelingEnum.CHARACTER_REMODELING_NAME))
            {
                /* Check if name is valid */
                if (!Regex.IsMatch(remodel.Name, "^[A-Z][a-z]{2,9}(?:-[A-Z][a-z]{2,9}|[a-z]{1,10})$", RegexOptions.Compiled))
                {
                    client.Send(new CharacterCreationResultMessage((int)CharacterCreationResultEnum.ERR_INVALID_NAME));
                    return;
                }

                /* Check if name is free */
                if (CharacterManager.Instance.DoesNameExist(remodel.Name))
                {
                    client.Send(new CharacterCreationResultMessage((int)CharacterCreationResultEnum.ERR_NAME_ALREADY_EXISTS));
                    return;
                }

                /* Set new name */
                character.Name = remodel.Name;
            }

            if (((character.MandatoryChanges & (sbyte)CharacterRemodelingEnum.CHARACTER_REMODELING_GENDER)
                == (sbyte)CharacterRemodelingEnum.CHARACTER_REMODELING_GENDER)
                || ((character.PossibleChanges & (sbyte)CharacterRemodelingEnum.CHARACTER_REMODELING_GENDER)
                == (sbyte)CharacterRemodelingEnum.CHARACTER_REMODELING_GENDER))
            {
                character.Sex = remodel.Sex ? SexTypeEnum.SEX_FEMALE : SexTypeEnum.SEX_MALE;
            }

            if (((character.MandatoryChanges & (sbyte)CharacterRemodelingEnum.CHARACTER_REMODELING_BREED)
                == (sbyte)CharacterRemodelingEnum.CHARACTER_REMODELING_BREED)
                || ((character.PossibleChanges & (sbyte)CharacterRemodelingEnum.CHARACTER_REMODELING_BREED)
                == (sbyte)CharacterRemodelingEnum.CHARACTER_REMODELING_BREED))
            {
                client.Character = new Character(character, client);
                client.Character.LoadRecord();

                BreedManager.ChangeBreed(client.Character, (PlayableBreedEnum)remodel.Breed);
                client.Character.SaveNow();

                character = client.Character.Record;
                client.Character = null;
            }

            if (((character.MandatoryChanges & (sbyte)CharacterRemodelingEnum.CHARACTER_REMODELING_COSMETIC)
                == (sbyte)CharacterRemodelingEnum.CHARACTER_REMODELING_COSMETIC)
                || ((character.PossibleChanges & (sbyte)CharacterRemodelingEnum.CHARACTER_REMODELING_COSMETIC)
                == (sbyte)CharacterRemodelingEnum.CHARACTER_REMODELING_COSMETIC))
            {
                /* Get Head */
                var head = BreedManager.Instance.GetHead(remodel.CosmeticId);
                /* Get character Breed */
                var breed = BreedManager.Instance.GetBreed((int)character.Breed);

                if (breed == null || head.Breed != (int)character.Breed || head.Gender != (int)character.Sex)
                {
                    client.Send(new CharacterSelectedErrorMessage());
                    return;
                }

                character.Head = head.Id;
                character.DefaultLook = breed.GetLook(character.Sex);
                character.DefaultLook.AddSkins(head.Skins);

                foreach (var scale in character.Sex == SexTypeEnum.SEX_MALE ? breed.MaleLook.Scales : breed.FemaleLook.Scales)
                    character.DefaultLook.SetScales(scale);

            }

            if (((character.MandatoryChanges & (sbyte)CharacterRemodelingEnum.CHARACTER_REMODELING_COLORS)
                == (sbyte)CharacterRemodelingEnum.CHARACTER_REMODELING_COLORS)
                || ((character.PossibleChanges & (sbyte)CharacterRemodelingEnum.CHARACTER_REMODELING_COLORS)
                == (sbyte)CharacterRemodelingEnum.CHARACTER_REMODELING_COLORS))
            {
                /* Get character Breed */
                var breed = BreedManager.Instance.GetBreed((int)character.Breed);

                if (breed == null)
                {
                    client.Send(new CharacterSelectedErrorMessage());
                    return;
                }

                /* Set Colors */
                var breedColors = character.Sex == SexTypeEnum.SEX_MALE ? breed.MaleColors : breed.FemaleColors;
                var m_colors = new Dictionary<int, Color>();

                foreach (var color in remodel.Colors)
                {
                    var index = color >> 24;
                    var c = Color.FromArgb(color);

                    m_colors.Add(index, c);
                }

                var i = 1;
                foreach (var breedColor in breedColors)
                {
                    if (!m_colors.ContainsKey(i))
                        m_colors.Add(i, Color.FromArgb((int)breedColor));

                    i++;
                }

                character.DefaultLook.SetColors(m_colors.Select(x => x.Key).ToArray(), m_colors.Select(x => x.Value).ToArray());
            }

            character.MandatoryChanges = 0;
            character.PossibleChanges = 0;

            WorldServer.Instance.DBAccessor.Database.Update(character);

            /* Common selection */
            CommonCharacterSelection(client, character);
        }

        public static void CommonCharacterSelection(WorldClient client, CharacterRecord character)
        {
            if (character.IsDeleted)
                return;

            // Check if we also have a world account
            if (client.WorldAccount == null)
            {
                var account = AccountManager.Instance.FindById(client.Account.Id) ??
                              AccountManager.Instance.CreateWorldAccount(client);
                client.WorldAccount = account;
            }
            
            // update tokens
            if (client.Account.Tokens + client.Account.NewTokens <= 0)
                client.Account.Tokens = 0;
            else
                client.Account.Tokens += client.Account.NewTokens;
            
            client.Account.NewTokens = 0;

            client.Character = new Character(character, client);
            client.Character.LoadRecord();

            ContextHandler.SendNotificationListMessage(client, new[] { 0x7FFFFFFF });
            BasicHandler.SendBasicTimeMessage(client);

            SendCharacterSelectedSuccessMessage(client);

            //if (client.Character.Inventory.Presets.Any())
            //    InventoryHandler.SendInventoryContentAndPresetMessage(client);
            //else
                InventoryHandler.SendInventoryContentMessage(client);

            ShortcutHandler.SendShortcutBarContentMessage(client, ShortcutBarEnum.GENERAL_SHORTCUT_BAR);

            ContextRoleplayHandler.SendEmoteListMessage(client, client.Character.Emotes.Select(x => (sbyte)x));

            AchievementHandler.SendAchievementListMessage(client, client.Character.Achievement.FinishedAchievements.Select(x => (ushort)x.Id), (ulong)client.Character.Id);

            // Jobs
            ContextRoleplayHandler.SendJobDescriptionMessage(client, client.Character);
            ContextRoleplayHandler.SendJobExperienceMultiUpdateMessage(client, client.Character);
            ContextRoleplayHandler.SendJobCrafterDirectorySettingsMessage(client, client.Character);

            PvPHandler.SendAlignmentRankUpdateMessage(client, client.Character);

            ChatHandler.SendEnabledChannelsMessage(client, new sbyte[] { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 12, 13 }, new sbyte[] { });
            ChatHandler.SendChatSmileyExtraPackListMessage(client, client.Character.SmileyPacks.ToArray());

            if (character.IsInIncarnation)
            {
                IncarnationManager.Instance.ConnectWithCustomIncarnation(client.Character, character.IncarnationId);
            }
            else InventoryHandler.SendSpellListMessage(client, true);
            ShortcutHandler.SendShortcutBarContentMessage(client, ShortcutBarEnum.SPELL_SHORTCUT_BAR);

            InitializationHandler.SendSetCharacterRestrictionsMessage(client, client.Character);

            InventoryHandler.SendInventoryWeightMessage(client);

            FriendHandler.SendFriendWarnOnConnectionStateMessage(client, client.Character.FriendsBook.WarnOnConnection);
            FriendHandler.SendFriendWarnOnLevelGainStateMessage(client, client.Character.FriendsBook.WarnOnLevel);
            GuildHandler.SendGuildMemberWarnOnConnectionStateMessage(client, client.Character.WarnOnGuildConnection);

            //Guild
            if (client.Character.GuildMember != null)
                GuildHandler.SendGuildMembershipMessage(client, client.Character.GuildMember);

            //Mount
            if (client.Character.EquippedMount != null)
            {
                MountHandler.SendMountSetMessage(client, client.Character.EquippedMount.GetMountClientData());
                MountHandler.SendMountXpRatioMessage(client, client.Character.EquippedMount.GivenExperience);

                if (client.Character.IsRiding)
                    MountHandler.SendMountRidingMessage(client, client.Character.IsRiding);
            }

            if(client.Character.Record.HavenBagsCSV == null || client.Character.Record.HavenBagsCSV.Length < 1)
            {
                client.Character.Record.HavenBagsCSV = "1;2";
            }
            HavenBagManager.Instance.SendHavenBagPackMessage(client);

            client.Character.SendConnectionMessages();

            //Don't know why ?
            ActionsHandler.SendSequenceNumberRequestMessage(client);

            //Start Cinematic
            if ((DateTime.Now - client.Character.Record.CreationDate).TotalSeconds <= 30)
            {
                client.Character.StartQuest(1042);
                BasicHandler.SendCinematicMessage(client, 10);
            }
            ContextRoleplayHandler.SendGameRolePlayArenaUpdatePlayerInfosMessage(client, client.Character);

            SendCharacterCapabilitiesMessage(client);

            ContextRoleplayHandler.SendAlmanachCalendarDateMessage(client);

            //Loading complete
            SendCharacterLoadingCompleteMessage(client);

            BasicHandler.SendServerExperienceModificatorMessage(client);

            if(client.Character.PrestigeRank > 0) client.Character.CreatePrestigeItem();
            // Update LastConnection and Last Ip
            client.WorldAccount.LastConnection = DateTime.Now;
            client.WorldAccount.LastIp = client.IP;
            client.WorldAccount.ConnectedCharacter = character.Id;

            // update tokens            
            BasePlayerItem jetons = client.Character.Inventory.GetItems(CharacterInventoryPositionEnum.INVENTORY_POSITION_NOT_EQUIPED).FirstOrDefault(x => x.Template.Id == 12124);
            if (jetons != null)
                client.Character.SendServerMessage(string.Format("Vous avez actuellement {0} points boutiques.", jetons));

            //chasses au tr�sor
            if (client.Character.Record.TreasureSearch != 0 && DateTime.Now > client.Character.Record.TreasureTimeStart)
            {
                client.Character.Record.TreasureSearch = 0;
                client.Character.Record.TreasureMapCoffre = null;
                client.Character.Record.TreasureTimeStart = DateTime.Now;
                client.Character.Record.TreasureIndice = null;

                if (client.Character.HasEmote(EmotesEnum.EMOTE_CHERCHER_UN_TRESOR))
                {
                    client.Character.RemoveEmote(EmotesEnum.EMOTE_CHERCHER_UN_TRESOR);
                }

                DataManager.DefaultDatabase.Update(client.Character.Record);

                client.Character.SendServerMessage("Vous avez oubli� de chercher votre <b>Tr�sor</b> et il est maintenant d�c�d�...", Color.Orange);
            }

            //WorldServer.Instance.DBAccessor.Database.Execute(string.Format(WorldAccountRelator.UpdateNewTokens, 0));
            WorldServer.Instance.DBAccessor.Database.Execute("UPDATE accounts SET NewTokens = 0 WHERE Id = " + client.WorldAccount.Id);
            WorldServer.Instance.DBAccessor.Database.Update(client.WorldAccount);
            WorldServer.Instance.DBAccessor.Database.Update(client.Character.Record);

            //WorldServer.Instance.DBAccessor.Database.Execute(string.Format(WorldAccountRelator.UpdateNewTokens, 0));
            //WorldServer.Instance.DBAccessor.Database.Execute("UPDATE accounts SET NewTokens = 0 WHERE Id = " + client.WorldAccount.Id);
            WorldServer.Instance.DBAccessor.Database.Update(client.WorldAccount);

            //V�t�ran Rewards 
            var date = (DateTime.Today - client.Account.CreationDate.Date).Days;
            //client.Character.DisplayNotification(""+ date + "");

            #region Ann�e 1
            //-------------------------------------------------------------------
            //Ann�e 1 [1]
            var Siffler = client.Character.Inventory.TryGetItem(ItemManager.Instance.TryGetTemplate(ItemIdEnum.SIFFLER_15884));
            var SifflerBank = client.Character.Bank.TryGetItem(ItemManager.Instance.TryGetTemplate(ItemIdEnum.SIFFLER_15884));
            //-------------------------------------------------------------------
            //Ann�e 1 [2]
            var Chachague = client.Character.Inventory.TryGetItem(ItemManager.Instance.TryGetTemplate(ItemIdEnum.CHACHAGUE_15752));
            var ChachagueBank = client.Character.Bank.TryGetItem(ItemManager.Instance.TryGetTemplate(ItemIdEnum.CHACHAGUE_15752));
            //-------------------------------------------------------------------
            //Ann�e 1 [3]
            var Chachape = client.Character.Inventory.TryGetItem(ItemManager.Instance.TryGetTemplate(ItemIdEnum.CHACHAPE_15753));
            var ChachapeBank = client.Character.Bank.TryGetItem(ItemManager.Instance.TryGetTemplate(ItemIdEnum.CHACHAPE_15753));
            //-------------------------------------------------------------------
            //Ann�e 1 [4]
            var Chachaclier = client.Character.Inventory.TryGetItem(ItemManager.Instance.TryGetTemplate(ItemIdEnum.CHACHACLIER_15754));
            var ChachaclierBank = client.Character.Bank.TryGetItem(ItemManager.Instance.TryGetTemplate(ItemIdEnum.CHACHACLIER_15754));
            //-------------------------------------------------------------------
            //Ann�e 1 [5]
            var Chachapeau = client.Character.Inventory.TryGetItem(ItemManager.Instance.TryGetTemplate(ItemIdEnum.CHACHAPEAU_15755));
            var ChachapeauBank = client.Character.Bank.TryGetItem(ItemManager.Instance.TryGetTemplate(ItemIdEnum.CHACHAPEAU_15755));
            //-------------------------------------------------------------------

            if (date > 13 && Siffler == null && SifflerBank == null && !client.Character.HasEmote(EmotesEnum.EMOTE_SIFFLER))
            {
                client.Character.Inventory.AddItem(ItemManager.Instance.TryGetTemplate(15884), 5);
                client.Character.DisplayNotification("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" +
                    "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" +
                    "<b>[V�t�ran Rewards]</b>\n" +
                    "- Vous avez re�u un nouvel item dans votre inventaire.\n" +
                    "<b>x5 [Parchemin d'attitude : Siffler]</b>", NotificationEnum.INFORMATION);
            }

            if (date > 29 && Chachague == null && ChachagueBank == null)
            {
                client.Character.Inventory.AddItem(ItemManager.Instance.TryGetTemplate(15752), 1);
                client.Character.DisplayNotification("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" +
                    "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" +
                    "<b>[V�t�ran Rewards]</b>\n" +
                    "- Vous avez re�u un nouvel item dans votre inventaire.\n" +
                    "<b>x1 [Chachague]</b>", NotificationEnum.INFORMATION);
            }

            if (date >= 89 && Chachape == null && ChachapeBank == null)
            {
                client.Character.Inventory.AddItem(ItemManager.Instance.TryGetTemplate(15753), 1);
                client.Character.DisplayNotification("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" +
                    "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" +
                    "<b>[V�t�ran Rewards]</b>\n" +
                    "- Vous avez re�u un nouvel item dans votre inventaire.\n" +
                    "<b>x1 [Chachape]</b>", NotificationEnum.INFORMATION);
            }

            if (date > 179 && Chachaclier == null && ChachapeBank == null)
            {
                client.Character.Inventory.AddItem(ItemManager.Instance.TryGetTemplate(15754), 1);
                client.Character.DisplayNotification("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" +
                    "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" +
                    "<b>[V�t�ran Rewards]</b>\n" +
                    "- Vous avez re�u un nouvel item dans votre inventaire.\n" +
                    "<b>x1 [Chachaclier]</b>", NotificationEnum.INFORMATION);
            }

            if (date > 269 && Chachapeau == null && ChachapeauBank == null)
            {
                client.Character.Inventory.AddItem(ItemManager.Instance.TryGetTemplate(15755), 1);
                client.Character.DisplayNotification("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" +
                    "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" +
                    "<b>[V�t�ran Rewards]</b>\n" +
                    "- Vous avez re�u un nouvel item dans votre inventaire.\n" +
                    "<b>x1 [Chachapeau]</b>", NotificationEnum.INFORMATION);
            }
            #endregion
        }

        [WorldHandler(CharactersListRequestMessage.Id, ShouldBeLogged = false, IsGamePacket = false)]
        public static void HandleCharacterListRequest(WorldClient client, CharactersListRequestMessage message)
        {
            if (client.Account != null && client.Account.Login != "")
            {
                var characterInFight = FindCharacterFightReconnection(client);
                if (characterInFight != null)
                {
                    client.ForceCharacterSelection = characterInFight;
                    SendCharacterSelectedForceMessage(client, characterInFight.Id);
                }
                else
                {
                    SendCharactersListWithRemodelingMessage(client);
                }

                if (client.WorldAccount != null && client.StartupActions.Count > 0)
                {
                    StartupHandler.SendStartupActionsListMessage(client, client.StartupActions);
                }
            }
            else
            {
                client.Send(new IdentificationFailedMessage((int)IdentificationFailureReasonEnum.KICKED));
                client.DisconnectLater(1000);
            }
        }

        [WorldHandler(CharacterSelectedForceReadyMessage.Id, IsGamePacket = false, ShouldBeLogged = false)]
        public static void HandleCharacterSelectedForceReadyMessage(WorldClient client, CharacterSelectedForceReadyMessage message)
        {
            if (client.ForceCharacterSelection == null)
                client.Disconnect();
            else
                CommonCharacterSelection(client, client.ForceCharacterSelection);
        }

        static CharacterRecord FindCharacterFightReconnection(WorldClient client)
            => (from characterInFight in client.Characters.Where(x => !x.IsDeleted).Where(x => x.LeftFightId != null)
                let fight = FightManager.Instance.GetFight(characterInFight.LeftFightId.Value)
                where fight != null
                let fighter = fight.GetLeaver(characterInFight.Id)
                where fighter != null
                select characterInFight).FirstOrDefault();

        public static void SendCharactersListMessage(WorldClient client)
        {
            var characters = client.Characters.Where(x => !x.IsDeleted).OrderByDescending(x => x.LastUsage).Select(
                characterRecord =>
                new CharacterBaseInformations(
                    (ulong)characterRecord.Id,
                    characterRecord.Name,
                    (ushort)ExperienceManager.Instance.GetCharacterLevel(characterRecord.Experience, characterRecord.PrestigeRank),
                    characterRecord.LastLook.GetEntityLook(),
                    (sbyte)characterRecord.Breed,
                    characterRecord.Sex != SexTypeEnum.SEX_MALE)).ToList();

            client.Send(new CharactersListMessage(characters.ToArray(), false));
        }

        public static void SendCharactersListWithRemodelingMessage(WorldClient client)
        {
            var characterBaseInformations = new List<CharacterBaseInformations>();
            var charactersToRemodel = new List<CharacterToRemodelInformations>();

            foreach (var characterRecord in client.Characters.Where(x => !x.IsDeleted).OrderByDescending(x => x.LastUsage))
            {
                characterBaseInformations.Add(new CharacterBaseInformations((ushort)characterRecord.Id,
                                                                            characterRecord.Name,
                                                                            (ushort)ExperienceManager.Instance.GetCharacterLevel(characterRecord.Experience, characterRecord.PrestigeRank),
                                                                            characterRecord.LastLook?.GetEntityLook() ?? characterRecord.DefaultLook.GetEntityLook(),
                                                                            (sbyte)characterRecord.Breed,
                                                                            characterRecord.Sex == SexTypeEnum.SEX_MALE));

                if (((characterRecord.MandatoryChanges & (sbyte)CharacterRemodelingEnum.CHARACTER_REMODELING_BREED)
                != (sbyte)CharacterRemodelingEnum.CHARACTER_REMODELING_BREED)
                && ((characterRecord.MandatoryChanges & (sbyte)CharacterRemodelingEnum.CHARACTER_REMODELING_COLORS)
                != (sbyte)CharacterRemodelingEnum.CHARACTER_REMODELING_COLORS)
                && ((characterRecord.MandatoryChanges & (sbyte)CharacterRemodelingEnum.CHARACTER_REMODELING_COSMETIC)
                != (sbyte)CharacterRemodelingEnum.CHARACTER_REMODELING_COSMETIC)
                && ((characterRecord.MandatoryChanges & (sbyte)CharacterRemodelingEnum.CHARACTER_REMODELING_GENDER)
                != (sbyte)CharacterRemodelingEnum.CHARACTER_REMODELING_GENDER)
                && ((characterRecord.MandatoryChanges & (sbyte)CharacterRemodelingEnum.CHARACTER_REMODELING_NAME)
                != (sbyte)CharacterRemodelingEnum.CHARACTER_REMODELING_NAME))
                    continue;

                charactersToRemodel.Add(new CharacterToRemodelInformations((ulong)characterRecord.Id, characterRecord.Name,
                                                                                        (sbyte)characterRecord.Breed, characterRecord.Sex != SexTypeEnum.SEX_MALE,
                                                                                        (ushort)characterRecord.Head, characterRecord.DefaultLook.Colors.Values.Select(x => x.ToArgb()).ToArray(),
                                                                                        characterRecord.PossibleChanges, characterRecord.MandatoryChanges));
            }
            client.Send(new CharactersListWithRemodelingMessage(characterBaseInformations.ToArray(),
                                                                   false,
                                                                   charactersToRemodel.ToArray()));
        }

        public static void SendCharacterSelectedSuccessMessage(WorldClient client)
        {
            client.Send(new CharacterSelectedSuccessMessage(client.Character.GetCharacterBaseInformations(), false));
        }

        public static void SendCharacterSelectedForceMessage(IPacketReceiver client, int id)
        {
            client.Send(new CharacterSelectedForceMessage(id));
        }

        public static void SendCharacterCapabilitiesMessage(WorldClient client)
        {
            client.Send(new CharacterCapabilitiesMessage(4095));
        }

        public static void SendCharacterLoadingCompleteMessage(WorldClient client)
        {
            client.Send(new CharacterLoadingCompleteMessage());
        }
    }
}