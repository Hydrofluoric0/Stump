create table zaap_tp_test
(
    Id           int auto_increment
        primary key,
    MapId        int        not null,
    CellId       int        not null,
    Informations mediumtext not null,
    Vip          int        not null
)
    engine = MyISAM
    charset = utf8;

