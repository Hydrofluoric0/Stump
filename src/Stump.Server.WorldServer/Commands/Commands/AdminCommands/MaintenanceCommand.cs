using Stump.Core.Reflection;
using Stump.DofusProtocol.Enums;
using Stump.Server.BaseServer;
using Stump.Server.BaseServer.Commands;
using Stump.Server.WorldServer.Game;
using System;
using System.Drawing;

namespace Stump.Server.WorldServer.Commands.Commands
{
    public class MaintenanceAnnounce : CommandBase
    {
        public MaintenanceAnnounce()
        {
            base.Aliases = new string[]
            {
                "maintenance"
            };
            base.Description = "Notifier d'une maintenance tous les connectés";
            base.RequiredRole = RoleEnum.Administrator;
        }
        public override void Execute(TriggerBase trigger)
        {
            {
                ServerBase<WorldServer>.Instance.IOTaskPool.AddMessage(new Action(Singleton<World>.Instance.SendAnnounceAllPlayersShutDown));

            }

        }
    }
}
