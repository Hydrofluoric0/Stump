﻿using Stump.Core.Attributes;
using Stump.DofusProtocol.Enums;
using Stump.Server.BaseServer.Commands;
using Stump.Server.WorldServer.Commands.Trigger;
using Stump.Server.WorldServer.Game;
using System.Drawing;

namespace Stump.Server.WorldServer.Commands.Commands
{
    public class AnnounceCommand : CommandBase
    {
        [Variable(true)]
        public static string AnnounceColor = ColorTranslator.ToHtml(Color.Red);

        public AnnounceCommand()
        {
            Aliases = new[] { "announce", "a" };
            Description = "Display an announce to all players";
            RequiredRole = RoleEnum.GameMaster;
            AddParameter<string>("message", "msg", "The announce");
        }

        public override void Execute(TriggerBase trigger)
        {
            var color = ColorTranslator.FromHtml(AnnounceColor);

            var msg = trigger.Get<string>("msg");
            var formatMsg = trigger is GameTrigger
                                ? string.Format("★{0} : (Admin) {1}", ((GameTrigger)trigger).Character.Name, msg)
                                : string.Format("★{0} : (Admin)", msg);

            World.Instance.SendAnnounce(formatMsg, color);
        }
    }
}