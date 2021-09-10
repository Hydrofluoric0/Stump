create table ai_init_brains
(
    MonsterId int     not null
        primary key,
    SpellId   int     not null,
    Level     tinyint not null
)
    engine = MyISAM
    charset = utf8;

