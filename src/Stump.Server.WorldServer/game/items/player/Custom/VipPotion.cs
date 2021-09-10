using Stump.DofusProtocol.Enums;
using Stump.DofusProtocol.Messages;
using Stump.Server.WorldServer.Database.Items;
using Stump.Server.WorldServer.Database.World;
using Stump.Server.WorldServer.Game.Accounts;
using Stump.Server.WorldServer.Game.Actors.RolePlay.Characters;
using Stump.Server.WorldServer.Game.Effects.Instances;
using System.Drawing;

namespace Stump.Server.WorldServer.Game.Items.Player.Custom
{
    [ItemId(ItemIdEnum.POTION_VIP_30150)]
    public class VipPotion : BasePlayerItem
    {
        public VipPotion(Character owner, PlayerItemRecord record)
            : base(owner, record)
        {
        }

        public override uint UseItem(int amount = 1, Cell targetCell = null, Character target = null)
        {
            if(Owner.WorldAccount.Vip)
            {
                Owner.SendServerMessage("Vous êtes déjà VIP, vous ne pouvez pas l'être deux fois ...", Color.OrangeRed);
                return 0;
            }
            Owner.WorldAccount.Vip = true;
            AccountManager.Instance.UpdateVip(Owner.WorldAccount);

            Owner.Account.UserGroupId = 2;
            Owner.AddOrnament(209);
            Owner.AddTitle(1);

            var item = Owner.Inventory.TryGetItem(ItemManager.Instance.TryGetTemplate(16147));
            if (Owner.WorldAccount.Vip && !Owner.Inventory.HasItem(ItemManager.Instance.TryGetTemplate(16147)))
            {
                item = Owner.Inventory.AddItem(ItemManager.Instance.TryGetTemplate(16147), 1);
                item.Effects.Add(new EffectInteger(EffectsEnum.Effect_NonExchangeable_981, 1));
                item.Invalidate();
                Owner.Inventory.RefreshItem(item);
            }

            if (item != null)
                Owner.Shortcuts.AddItemShortcut(19, item);
            Owner.DisplayNotification("Vous venez de devenir VIP, veillez vous deco/reco pour avoir les bonus actifs sur votre compte!", NotificationEnum.INFORMATION);
            World.Instance.SendAnnounce("<b>" + Owner.Name + "</b> viens de devenir VIP, félicitez le !", Color.Orange);


            return 1;
        }
    }
}
