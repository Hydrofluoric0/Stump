create table world_superareas
(
    Id         int          not null
        primary key,
    NameId     int unsigned not null,
    WorldmapId int unsigned not null
)
    engine = MyISAM
    charset = utf8;

INSERT INTO world.world_superareas (Id, NameId, WorldmapId) VALUES (0, 4629, 1);
INSERT INTO world.world_superareas (Id, NameId, WorldmapId) VALUES (3, 4632, 2);
INSERT INTO world.world_superareas (Id, NameId, WorldmapId) VALUES (4, 292687, 0);
INSERT INTO world.world_superareas (Id, NameId, WorldmapId) VALUES (5, 415839, 0);
INSERT INTO world.world_superareas (Id, NameId, WorldmapId) VALUES (6, 771482, 0);