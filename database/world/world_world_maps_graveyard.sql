create table world_maps_graveyard
(
    Id           int auto_increment
        primary key,
    MapId        int not null,
    CellId       int not null,
    SubAreaId    int not null,
    PhoenixMapId int not null
)
    engine = MyISAM
    charset = utf8;

