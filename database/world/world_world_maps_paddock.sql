create table world_maps_paddock
(
    Id              int auto_increment
        primary key,
    GuildId         int          null,
    MapId           int          not null,
    MaxOutdoorMount int unsigned not null,
    MaxItems        int unsigned not null,
    Abandonned      tinyint      not null,
    OnSale          tinyint      not null,
    Locked          tinyint      not null,
    Price           int          not null
)
    engine = MyISAM
    charset = utf8;

INSERT INTO world.world_maps_paddock (Id, GuildId, MapId, MaxOutdoorMount, MaxItems, Abandonned, OnSale, Locked, Price) VALUES (1, -1, 150328, 10, 10, 0, 0, 0, 0);
INSERT INTO world.world_maps_paddock (Id, GuildId, MapId, MaxOutdoorMount, MaxItems, Abandonned, OnSale, Locked, Price) VALUES (9, -1, 147493, 10, 10, 0, 0, 0, 0);
INSERT INTO world.world_maps_paddock (Id, GuildId, MapId, MaxOutdoorMount, MaxItems, Abandonned, OnSale, Locked, Price) VALUES (12, -1, 188744199, 10, 10, 0, 1, 0, 200000000);