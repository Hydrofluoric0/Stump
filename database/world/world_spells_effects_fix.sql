create table spells_effects_fix
(
    Id                  int auto_increment
        primary key,
    SpellId             int null,
    SpellLevelId        int null,
    EffectId            int null,
    EffectIndex         int null,
    TriggerBuffDuration int null,
    Dispellable         int null,
    ActionId            int null,
    ClientEffectId      int null,
    Priority            int null
)
    engine = MyISAM
    charset = utf8;

