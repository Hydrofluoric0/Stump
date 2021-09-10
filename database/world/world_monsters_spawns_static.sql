create table monsters_spawns_static
(
    Id          int auto_increment
        primary key,
    MapId       int          not null,
    CellId      int          not null,
    Direction   int unsigned not null,
    TpMapId     int          null,
    TpCellId    int          null,
    TpDirection int          null
)
    engine = MyISAM
    charset = utf8;

INSERT INTO world.monsters_spawns_static (Id, MapId, CellId, Direction, TpMapId, TpCellId, TpDirection) VALUES (1, 99090957, 339, 1, null, null, null);
INSERT INTO world.monsters_spawns_static (Id, MapId, CellId, Direction, TpMapId, TpCellId, TpDirection) VALUES (2, 99090957, 298, 1, null, null, null);
INSERT INTO world.monsters_spawns_static (Id, MapId, CellId, Direction, TpMapId, TpCellId, TpDirection) VALUES (3, 99090957, 258, 1, null, null, null);
INSERT INTO world.monsters_spawns_static (Id, MapId, CellId, Direction, TpMapId, TpCellId, TpDirection) VALUES (4, 99090957, 288, 3, null, null, null);
INSERT INTO world.monsters_spawns_static (Id, MapId, CellId, Direction, TpMapId, TpCellId, TpDirection) VALUES (5, 99090957, 331, 3, null, null, null);
INSERT INTO world.monsters_spawns_static (Id, MapId, CellId, Direction, TpMapId, TpCellId, TpDirection) VALUES (6, 86248450, 257, 1, null, null, null);
INSERT INTO world.monsters_spawns_static (Id, MapId, CellId, Direction, TpMapId, TpCellId, TpDirection) VALUES (7, 86248450, 232, 1, null, null, null);
INSERT INTO world.monsters_spawns_static (Id, MapId, CellId, Direction, TpMapId, TpCellId, TpDirection) VALUES (8, 86248450, 304, 1, null, null, null);
INSERT INTO world.monsters_spawns_static (Id, MapId, CellId, Direction, TpMapId, TpCellId, TpDirection) VALUES (9, 86248450, 439, 1, null, null, null);
INSERT INTO world.monsters_spawns_static (Id, MapId, CellId, Direction, TpMapId, TpCellId, TpDirection) VALUES (10, 86248450, 367, 1, null, null, null);
INSERT INTO world.monsters_spawns_static (Id, MapId, CellId, Direction, TpMapId, TpCellId, TpDirection) VALUES (18, 121896964, 216, 3, null, null, null);
INSERT INTO world.monsters_spawns_static (Id, MapId, CellId, Direction, TpMapId, TpCellId, TpDirection) VALUES (19, 121896964, 245, 3, null, null, null);
INSERT INTO world.monsters_spawns_static (Id, MapId, CellId, Direction, TpMapId, TpCellId, TpDirection) VALUES (20, 121896964, 274, 3, null, null, null);
INSERT INTO world.monsters_spawns_static (Id, MapId, CellId, Direction, TpMapId, TpCellId, TpDirection) VALUES (21, 121896964, 303, 3, null, null, null);
INSERT INTO world.monsters_spawns_static (Id, MapId, CellId, Direction, TpMapId, TpCellId, TpDirection) VALUES (22, 121896964, 332, 3, null, null, null);
INSERT INTO world.monsters_spawns_static (Id, MapId, CellId, Direction, TpMapId, TpCellId, TpDirection) VALUES (23, 75763208, 383, 3, null, null, null);
INSERT INTO world.monsters_spawns_static (Id, MapId, CellId, Direction, TpMapId, TpCellId, TpDirection) VALUES (24, 152306688, 272, 3, 152306690, 300, 1);
INSERT INTO world.monsters_spawns_static (Id, MapId, CellId, Direction, TpMapId, TpCellId, TpDirection) VALUES (25, 152307712, 287, 3, 152307714, 85, 1);
INSERT INTO world.monsters_spawns_static (Id, MapId, CellId, Direction, TpMapId, TpCellId, TpDirection) VALUES (26, 11796481, 380, 4, null, null, null);