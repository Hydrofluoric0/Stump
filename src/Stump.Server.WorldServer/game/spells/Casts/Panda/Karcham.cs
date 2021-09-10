using System.Linq;
using Stump.DofusProtocol.Enums;
using Stump.Server.WorldServer.Game.Fights;
using Stump.Server.WorldServer.Game.Fights.Buffs;
using Stump.Server.WorldServer.Handlers.Context;

namespace Stump.Server.WorldServer.Game.Spells.Casts.Panda
{
    [SpellCastHandler(SpellIdEnum.KARCHAM_693)]
    public class Karcham : DefaultSpellCastHandler
    {
        public Karcham(SpellCastInformations cast) : base(cast) { }

        public override void Execute()
        {
            if (!m_initialized)
                Initialize();

            var boostedSpell = Caster.GetSpell(693);
            var m_actor = Fight.GetOneFighter(TargetedCell);

            Handlers[0].Apply();
            if (boostedSpell != null)
            {
                if (m_actor == null)
                {
                    Handlers[2].Apply();
                    var targer = Handlers[0].GetAffectedActors().First();
                    var buff = new SpellBuff(targer.PopNextBuffId(), targer, Caster, Handlers[1], Spell, boostedSpell, 0, false, FightDispellableEnum.DISPELLABLE_BY_DEATH);
                    ContextHandler.ModifySpellRange(Fight.Clients, buff);
                    boostedSpell.CurrentSpellLevel.Range = 1;
                }
                else
                {
                    Handlers[1].Apply();
                    var targer = Handlers[0].GetAffectedActors().First();
                    var buff = new SpellBuff(targer.PopNextBuffId(), targer, Caster, Handlers[1], Spell, boostedSpell, 5, false, FightDispellableEnum.DISPELLABLE_BY_DEATH);
                    ContextHandler.ModifySpellRange(Fight.Clients, buff);
                    boostedSpell.CurrentSpellLevel.Range = 6;
                }

            }
        }
    }
}