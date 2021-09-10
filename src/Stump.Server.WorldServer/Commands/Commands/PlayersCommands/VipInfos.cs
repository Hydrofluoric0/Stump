using Stump.DofusProtocol.Enums;
using Stump.Server.WorldServer.Commands.Commands.Patterns;
using Stump.Server.WorldServer.Commands.Trigger;
using Stump.Server.BaseServer.IPC.Messages;
using Stump.Server.WorldServer;
using Stump.Server.WorldServer.Core.IPC;
using Stump.Server.WorldServer.Game.Items.Player;
using System;
using System.Linq;

namespace Commands.Commands
{
    public class VipInfos : InGameSubCommand
    {
        public VipInfos()
        {
            Aliases = new string[]
            {
                "infos"
            };
            RequiredRole = RoleEnum.Player;
            ParentCommandType = typeof(VipCommand);
            Description = "Cette commande vous permet de savoir ce que contient le pack V.I.P.";
        }

        public override void Execute(GameTrigger trigger)
        {
            trigger.Character.SendServerMessage("Le pack V.I.P permet de <b>multiplier par 2</b> :\n" +
                "- L'expérience.\n" +
                "- Le drops de ressources ou d'items.\n" +
                "- Les kamas.\n" +
                "- Potion de changement de classe illimité .\n" +
                "- Le drops de ressources ou d'items.\n" +
                "La durée du pack est : <b>Illimité</b>.\n" +
                "Prix : <b>3000 pbs.</b>", System.Drawing.Color.Red);
        }
    }
}