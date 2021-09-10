﻿using Stump.DofusProtocol.Enums;
using Stump.DofusProtocol.Messages;
using Stump.Server.WorldServer.Database.Items;
using Stump.Server.WorldServer.Database.World;
using Stump.Server.WorldServer.Game.Actors.RolePlay.Characters;
using Stump.Server.WorldServer.Game.Effects.Instances;

namespace Stump.Server.WorldServer.Game.Items.Player.Custom
{
    [ItemId(ItemIdEnum.POTION_DE_CHANGEMENT_DE_NOM_10860)]
    public class NameChangePotion : BasePlayerItem
    {
        public NameChangePotion(Character owner, PlayerItemRecord record)
            : base(owner, record)
        {
        }

        public override uint UseItem(int amount = 1, Cell targetCell = null, Character target = null)
        {
            if ((Owner.Record.MandatoryChanges & (sbyte)CharacterRemodelingEnum.CHARACTER_REMODELING_NAME)
                == (sbyte)CharacterRemodelingEnum.CHARACTER_REMODELING_NAME)
            {
                Owner.SendInformationMessage(TextInformationTypeEnum.TEXT_INFORMATION_POPUP, 43);
                return 0;
            }

            Owner.Record.MandatoryChanges |= (sbyte)CharacterRemodelingEnum.CHARACTER_REMODELING_NAME;
            Owner.Record.PossibleChanges |= (sbyte)CharacterRemodelingEnum.CHARACTER_REMODELING_NAME;

            Owner.SendSystemMessage(41, false);

            return 1;
        }
    }

    [ItemId(ItemIdEnum.POTION_DE_CHANGEMENT_DES_COULEURS_10861)]
    public class ColourChangePotion : BasePlayerItem
    {
        public ColourChangePotion(Character owner, PlayerItemRecord record)
            : base(owner, record)
        {
        }

        public override uint UseItem(int amount = 1, Cell targetCell = null, Character target = null)
        {
            if ((Owner.Record.MandatoryChanges & (sbyte)CharacterRemodelingEnum.CHARACTER_REMODELING_COLORS)
                == (sbyte)CharacterRemodelingEnum.CHARACTER_REMODELING_COLORS)
            {
                Owner.SendSystemMessage(43, false);
                return 0;
            }

            Owner.Record.MandatoryChanges |= (sbyte)CharacterRemodelingEnum.CHARACTER_REMODELING_COLORS;
            Owner.Record.PossibleChanges |= (sbyte)CharacterRemodelingEnum.CHARACTER_REMODELING_COLORS;

            Owner.SendSystemMessage(42, false);

            return 1;
        }
    }

    [ItemId(ItemIdEnum.POTION_DE_CHANGEMENT_DE_VISAGE_13518)]
    public class LookChangePotion : BasePlayerItem
    {
        public LookChangePotion(Character owner, PlayerItemRecord record)
            : base(owner, record)
        {
        }

        public override uint UseItem(int amount = 1, Cell targetCell = null, Character target = null)
        {
            if ((Owner.Record.MandatoryChanges & (sbyte)CharacterRemodelingEnum.CHARACTER_REMODELING_COSMETIC)
                == (sbyte)CharacterRemodelingEnum.CHARACTER_REMODELING_COSMETIC)
            {
                Owner.SendSystemMessage(43, false);
                return 0;
            }

            Owner.Record.MandatoryChanges |= (sbyte)CharacterRemodelingEnum.CHARACTER_REMODELING_COSMETIC;
            Owner.Record.PossibleChanges |= (sbyte)CharacterRemodelingEnum.CHARACTER_REMODELING_COSMETIC;
            Owner.Record.PossibleChanges |= (sbyte)CharacterRemodelingEnum.CHARACTER_REMODELING_COLORS;

            Owner.SendSystemMessage(58, false);

            return 1;
        }
    }

    [ItemId(ItemIdEnum.POTION_DE_CHANGEMENT_DE_SEXE_10862)]
    public class SexChangePotion : BasePlayerItem
    {
        public SexChangePotion(Character owner, PlayerItemRecord record)
            : base(owner, record)
        {
        }

        public override uint UseItem(int amount = 1, Cell targetCell = null, Character target = null)
        {
            if ((Owner.Record.MandatoryChanges & (sbyte)CharacterRemodelingEnum.CHARACTER_REMODELING_GENDER)
                == (sbyte)CharacterRemodelingEnum.CHARACTER_REMODELING_GENDER)
            {
                Owner.SendInformationMessage(TextInformationTypeEnum.TEXT_INFORMATION_POPUP, 43);
                Owner.SendSystemMessage(43, false);
                return 0;
            }

            Owner.Record.MandatoryChanges |= (sbyte)CharacterRemodelingEnum.CHARACTER_REMODELING_GENDER;
            Owner.Record.PossibleChanges |= (sbyte)CharacterRemodelingEnum.CHARACTER_REMODELING_GENDER;
            Owner.Record.PossibleChanges |= (sbyte)CharacterRemodelingEnum.CHARACTER_REMODELING_COSMETIC;
            Owner.Record.PossibleChanges |= (sbyte)CharacterRemodelingEnum.CHARACTER_REMODELING_COLORS;

            Owner.SendSystemMessage(44, false);

            return 1;
        }
    }

    [ItemId(ItemIdEnum.POTION_DE_CHANGEMENT_DE_CLASSE_16147)]
    public class ClassChangePotion : BasePlayerItem
    {
        public ClassChangePotion(Character owner, PlayerItemRecord record)
            : base(owner, record)
        {
        }

        public override uint UseItem(int amount = 1, Cell targetCell = null, Character target = null)
        {
            if ((Owner.Record.MandatoryChanges & (sbyte)CharacterRemodelingEnum.CHARACTER_REMODELING_BREED)
                == (sbyte)CharacterRemodelingEnum.CHARACTER_REMODELING_BREED)
            {
                Owner.SendInformationMessage(TextInformationTypeEnum.TEXT_INFORMATION_POPUP, 43);
                Owner.SendSystemMessage(43, false);
                return 0;
            }

            Owner.Record.MandatoryChanges |= (sbyte)CharacterRemodelingEnum.CHARACTER_REMODELING_BREED;
            Owner.Record.PossibleChanges |= (sbyte)CharacterRemodelingEnum.CHARACTER_REMODELING_BREED;
            Owner.Record.PossibleChanges |= (sbyte)CharacterRemodelingEnum.CHARACTER_REMODELING_GENDER;
            Owner.Record.PossibleChanges |= (sbyte)CharacterRemodelingEnum.CHARACTER_REMODELING_COSMETIC;
            Owner.Record.PossibleChanges |= (sbyte)CharacterRemodelingEnum.CHARACTER_REMODELING_COLORS;

            Owner.SendSystemMessage(63, false);

            if (Owner.WorldAccount.Vip)
                return 0;

            return 1;
        }
    }

    //[ItemId(ItemIdEnum.POTION_CAMELEON_30110)]
    //public class CameleonMountPotion : BasePlayerItem
    //{
    //    public CameleonMountPotion(Character owner, PlayerItemRecord record)
    //        : base(owner, record)
    //    {
    //    }

    //    public override uint UseItem(int amount = 1, Cell targetCell = null, Character target = null)
    //    {
    //        if (Owner.IsRiding)
    //        {
    //            Owner.SendServerMessage("Vous devez descendre de votre monture pour utiliser cette potion.", System.Drawing.Color.DarkOrange);
    //            return 0;
    //        }

    //        if (Owner.EquippedMount == null)
    //        {
    //            Owner.SendServerMessage("Vous devez avoir une monture pour utiliser cette potion.", System.Drawing.Color.DarkOrange);
    //            return 0;
    //        }

    //        if (Owner.EquippedMount.Behaviors.Contains((int)MountBehaviorEnum.Caméléone))
    //        {
    //            Owner.SendServerMessage("Cette monture a déjà l'effet Caméléon.", System.Drawing.Color.DarkOrange);
    //            return 0;
    //        }

    //        Owner.EquippedMount.AddBehavior(MountBehaviorEnum.Caméléone);
    //        Owner.EquippedMount.Save(Actors.RolePlay.Mounts.MountManager.Instance.Database);
    //        Owner.SendServerMessage("Félicitations, votre monture est maintenant Caméléonne.", System.Drawing.Color.DarkOrange);
    //        return 1;

    //    }
    //}

    //[ItemId(ItemIdEnum.POTION_REMOVE_EXOTISM)]
    //public class RemoveExotismItemPotion : BasePlayerItem
    //{
    //    public RemoveExotismItemPotion(Character owner, PlayerItemRecord record)
    //        : base(owner, record)
    //    {
    //    }

    //    public override uint UseItem(int amount = 1, Cell targetCell = null, Character target = null)
    //    {
    //        foreach (var equip in Owner.Inventory.GetEquipedItems())
    //        {
    //            if (Owner.Inventory.IsExo(equip, true) != 3)
    //                Owner.Inventory.MoveItem(equip, CharacterInventoryPositionEnum.INVENTORY_POSITION_NOT_EQUIPED, true);
    //            Owner.Record.HasExoPa = false;
    //            Owner.Record.HasExoPm = false;
    //            Owner.Record.HasExoPo = false;
    //            Owner.RefreshStats();
    //        }

    //        Owner.SendServerMessage("Les effets d'exo ont été remis à zéro.", System.Drawing.Color.DarkOrange);
    //        return 1;

    //    }
    //}

    //            Owner.Record.HasExoPa = false;

    [ItemId(ItemIdEnum.POTION_DINCENDIE_1345),
     ItemId(ItemIdEnum.POTION_DE_TSUNAMI_1346),
     ItemId(ItemIdEnum.POTION_DOURAGAN_1347),
     ItemId(ItemIdEnum.POTION_DE_SEISME_1348)]
    public class ForjarArmaFogoPocao : BasePlayerItem
    {
        public ForjarArmaFogoPocao(Character owner, PlayerItemRecord record)
            : base(owner, record)
        {
        }

        public override uint UseItem(int amount = 1, Cell targetCell = null, Character target = null)
        {
            var integerEffect = this.Effects[0].GenerateEffect(EffectGenerationContext.Item) as EffectInteger;
            var equipedWeapon = Owner.Inventory.TryGetItem(CharacterInventoryPositionEnum.ACCESSORY_POSITION_WEAPON);
            EffectsEnum effectCac;

            if (equipedWeapon == null)
            {
                Owner.SendServerMessage("Vous avez besoin d'une arme équipée pour cette action.", System.Drawing.Color.DarkOrange);
                return 0;
            }

            var effectDamage = equipedWeapon.Effects.Find(x => x.EffectId == EffectsEnum.Effect_DamageNeutral);

            if (!equipedWeapon.Effects.Exists(x => x.EffectId == EffectsEnum.Effect_DamageNeutral))
            {
                Owner.SendServerMessage("Votre arme n'a pas les conditions requises pour cette action.", System.Drawing.Color.DarkOrange);
                return 0;
            }

            effectCac = (EffectsEnum)GetWeaponEffect(this.Record.ItemId);

            equipedWeapon.Effects.Remove(effectDamage);
            var effectAsDice = (EffectDice)effectDamage;
            equipedWeapon.Effects.Add(new EffectDice((short)effectCac, 0, effectAsDice.DiceNum, effectAsDice.DiceFace, new EffectBase()));
            Owner.Client.Send(new ExchangeCraftInformationObjectMessage(1, (ushort)equipedWeapon.Template.Id, (ulong)Owner.Id));
            Owner.SendServerMessage($"Forge réussi.", System.Drawing.Color.DarkOrange);
            Owner.Inventory.RefreshItem(equipedWeapon);
            return 1;

        }

        #region Get Effect
        protected int GetWeaponEffect(int integerEffect)
        {
            switch (integerEffect)
            {
                case 1345:
                    return 99;
                case 1346:
                    return 96;
                case 1347:
                    return 98;
                case 1348:
                    return 97;
                default:
                    return 2;
            }
        }
        #endregion
    }
}