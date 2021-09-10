create table items_teleport_potions
(
    ItemId      int not null
        primary key,
    MapId       int not null,
    CellId      int not null,
    Orientation int null
)
    engine = MyISAM
    charset = utf8;

