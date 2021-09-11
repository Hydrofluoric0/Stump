
using Stump.DofusProtocol.Enums;
using Stump.Server.BaseServer.Commands;
using Stump.Server.WorldServer.Commands.Commands.Patterns;
using Stump.Server.WorldServer.Commands.Trigger;

public class LevelUp : TargetCommand
{
    public LevelUp()
    {
        Aliases = new[] { "levelup" };
        RequiredRole = RoleEnum.Administrator;
        Description = "Set the level of the designated character";
        AddParameter<byte>("level", "level", "Level to set");
        AddTargetParameter(true, "Character targeted");
    }

    public override void Execute(TriggerBase trigger)
    {
        var level = trigger.Get<byte>("level");

        foreach (var target in GetTargets(trigger))
        {
            if (level > 0 && level <= byte.MaxValue)
            {
                target.LevelUp(level);
                trigger.Reply($"The character {trigger.Bold(target.Name)} is now level ${level}");

            }
        }
    }
}
