create table spellfixer
(
    Id                int auto_increment
        primary key,
    SpellId           int      not null,
    EffectEnumId      smallint not null,
    Value             smallint not null,
    Diceface          smallint not null,
    Diceenum          smallint not null,
    Duration          smallint not null,
    SpellTargetTypeId int      not null
)
    engine = MyISAM
    charset = utf8;

