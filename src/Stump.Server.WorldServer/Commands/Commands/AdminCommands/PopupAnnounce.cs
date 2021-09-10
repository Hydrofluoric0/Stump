using Stump.Core.Attributes;
using Stump.Core.Reflection;
using Stump.DofusProtocol.Enums;
using Stump.DofusProtocol.Messages;
using Stump.Server.BaseServer.Commands;
using Stump.Server.WorldServer.Commands.Trigger;
using Stump.Server.WorldServer.Game;
using Stump.Server.WorldServer.Game.Actors.RolePlay.Characters;
using System;
using System.Drawing;
namespace Stump.Server.WorldServer.Commands.Commands
{
    public class PopupAnnounce : CommandBase
    {
        [Variable(true)]
        public static string AnnounceColor = ColorTranslator.ToHtml(Color.Red);
        public PopupAnnounce()
        {
            base.Aliases = new string[]
            {
                "popup",
                "pop"
            };
            base.Description = "Display an announce to all players";
            base.RequiredRole = RoleEnum.Administrator;
            base.AddParameter<string>("message", "msg", "The announce", null, false, null);
        }
        public override void Execute(TriggerBase trigger)
        {
            bool predicate(Character x) => true;
            Color color = ColorTranslator.FromHtml(AnnounceCommand.AnnounceColor);
            string text = trigger.Get<string>("msg");
            System.Collections.Generic.IEnumerable<Character> characters = Singleton<World>.Instance.GetCharacters(predicate);
            int num = 0;
            foreach (Character current in characters)
            {
                current.Client.Send(new PopupWarningMessage(5, "Message de l'équipe", "<br />" + text));
                num++;

            }
            trigger.Reply("Message envoyé à " + num + " joueur(s)");
        }
    }
}
