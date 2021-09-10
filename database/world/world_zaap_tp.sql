create table zaap_tp
(
    Id           int auto_increment
        primary key,
    MapId        int        not null,
    CellId       int        not null,
    Informations mediumtext not null,
    vip          int        not null
)
    engine = MyISAM
    charset = utf8;

