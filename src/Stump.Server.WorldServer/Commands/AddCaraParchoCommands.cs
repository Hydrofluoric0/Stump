using Stump.DofusProtocol.Enums;
using Stump.Server.BaseServer.Commands;
using Stump.Server.WorldServer.Commands.Commands.Patterns;
using Stump.Server.WorldServer.Game.Actors.RolePlay.Characters;
using System.Drawing;

namespace Commands.Commands
{
    public class ParchoCommands : TargetCommand
    {
        public ParchoCommands()
        {
            base.Aliases = new string[]
            {
                "Parcho"
            };
            RequiredRole = RoleEnum.Administrator;
            Description = "Permet de vous parcho.";
        }
        public override void Execute(TriggerBase trigger)
        {
            Character[] targets = GetTargets(trigger);
            for (int i = 0; i < targets.Length; i++)
            {
                Character character = targets[i];

                character.Stats.Vitality.Additional += 999;
                character.Stats.Chance.Additional += 999;
                character.Stats.Intelligence.Additional += 999;
                character.Stats.Wisdom.Additional += 999;
                character.Stats.Agility.Additional += 999;
                character.Stats.Strength.Additional += 999;

                character.Stats.AP.Additional += 16;
                character.Stats.MP.Additional += 8;
                character.RefreshStats();

                character.SendServerMessage("Votre personnage" + "<b> " + character.Name + " </b>" + "à obtenu <b>999 points de caractéristiques additionnels</b>.");
            }
        }
    }
}