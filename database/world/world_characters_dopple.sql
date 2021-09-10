create table characters_dopple
(
    CharacterId int        not null,
    DopeulId    int        not null,
    Time        datetime   not null,
    Ip          mediumtext not null,
    id          int auto_increment
        primary key,
    IsNew       int        not null,
    IsUpdated   int        not null
)
    engine = MyISAM
    charset = utf8;

