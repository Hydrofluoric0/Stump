create table characters_dopeul
(
    CharacterId int      not null
        primary key,
    DopeulId    int      not null,
    Time        datetime not null
)
    engine = MyISAM
    charset = utf8;

