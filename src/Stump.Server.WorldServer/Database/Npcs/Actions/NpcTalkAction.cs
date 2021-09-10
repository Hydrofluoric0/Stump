using Stump.DofusProtocol.Enums;
using Stump.Server.BaseServer.Database;
using Stump.Server.WorldServer.Game.Actors.RolePlay.Characters;
using Stump.Server.WorldServer.Game.Actors.RolePlay.Npcs;
using Stump.Server.WorldServer.Game.Dialogs.Npcs;

namespace Stump.Server.WorldServer.Database.Npcs.Actions
{
    [Discriminator("Talk", typeof(NpcActionDatabase), typeof(NpcActionRecord))]
    public class NpcTalkAction : NpcActionDatabase
    {
        public override NpcActionTypeEnum[] ActionType
        {
            get
            {
                return new[] { NpcActionTypeEnum.ACTION_TALK };
            }
        }

        private NpcMessage m_message;

        public NpcTalkAction(NpcActionRecord record)
            : base(record)
        {
        }

        /// <summary>
        /// Parameter 0
        /// </summary>
        public int MessageId
        {
            get { return Record.GetParameter<int>(0); }
            set { Record.SetParameter(0, value); }
        }

        public NpcMessage Message
        {
            get { return m_message ?? (m_message = NpcManager.Instance.GetNpcMessage(MessageId)); }
            set
            {
                m_message = value;
                MessageId = value.Id;
            }
        }

        public override void Execute(Npc npc, Character character)
        {
            if (npc.TemplateId == 1423)
            {
                character.SendServerMessage("Salut a toi, jeune aventurier ! Je vois que tu es venu me parler ! Ce n'est pas pour rien, tu souhaites sûrement changer ton apparence, ton style, pour devenir le plus joli de Xenovia ? Pas de soucis, cela te coûtera 200 points boutiques par objets ! Par contre, tu es limité, tu peux seulement changer l'apparence sur les coiffes, les capes, les montiliers, les familiers et les boucliers. Il te faut obligatoirement me donner deux objets du même type ! Par mes pouvoirs, je changerais l'apparence de ton item !", System.Drawing.Color.Red);
            }
            else
            {
                var dialog = new NpcDialog(character, npc);
                dialog.Open();
                dialog.ChangeMessage(Message);
            }
        }
    }
}