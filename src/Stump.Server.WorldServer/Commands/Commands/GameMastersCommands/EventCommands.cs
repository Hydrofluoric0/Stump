using Stump.Core.Reflection;
using Stump.DofusProtocol.Enums;
using Stump.Server.BaseServer;
using Stump.Server.BaseServer.Commands;
using Stump.Server.WorldServer.Game;
using System;
using System.Drawing;

namespace Stump.Server.WorldServer.Commands.Commands
{
    public class EventAnnounce : CommandBase
    {
        public EventAnnounce()
        {
            base.Aliases = new string[]
            {
                "event"
            };
            base.Description = "Envoyer une annonce d'event aux connectés";
            base.RequiredRole = RoleEnum.GameMaster_Padawan;
        }
        public override void Execute(TriggerBase trigger)
        {
            {
                ServerBase<WorldServer>.Instance.IOTaskPool.AddMessage(new Action(Singleton<World>.Instance.SendAnnounceAllPlayersEvent));

            }

        }
    }
}
