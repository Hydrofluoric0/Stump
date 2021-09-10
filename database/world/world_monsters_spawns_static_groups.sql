create table monsters_spawns_static_groups
(
    Id                int auto_increment
        primary key,
    StaticSpawnId     int          not null,
    MonsterGradeId    int          not null,
    MonsterGradeIdBak varchar(255) null
)
    engine = MyISAM
    charset = utf8;

create index StaticSpawnId
    on monsters_spawns_static_groups (StaticSpawnId);

INSERT INTO world.monsters_spawns_static_groups (Id, StaticSpawnId, MonsterGradeId, MonsterGradeIdBak) VALUES (1, 1, 1668, null);
INSERT INTO world.monsters_spawns_static_groups (Id, StaticSpawnId, MonsterGradeId, MonsterGradeIdBak) VALUES (2, 2, 1669, null);
INSERT INTO world.monsters_spawns_static_groups (Id, StaticSpawnId, MonsterGradeId, MonsterGradeIdBak) VALUES (3, 3, 1670, null);
INSERT INTO world.monsters_spawns_static_groups (Id, StaticSpawnId, MonsterGradeId, MonsterGradeIdBak) VALUES (4, 4, 1671, '1670');
INSERT INTO world.monsters_spawns_static_groups (Id, StaticSpawnId, MonsterGradeId, MonsterGradeIdBak) VALUES (5, 5, 1672, '1671');
INSERT INTO world.monsters_spawns_static_groups (Id, StaticSpawnId, MonsterGradeId, MonsterGradeIdBak) VALUES (6, 6, 1668, '1667');
INSERT INTO world.monsters_spawns_static_groups (Id, StaticSpawnId, MonsterGradeId, MonsterGradeIdBak) VALUES (7, 7, 1669, '1668');
INSERT INTO world.monsters_spawns_static_groups (Id, StaticSpawnId, MonsterGradeId, MonsterGradeIdBak) VALUES (8, 8, 1670, '1669');
INSERT INTO world.monsters_spawns_static_groups (Id, StaticSpawnId, MonsterGradeId, MonsterGradeIdBak) VALUES (9, 9, 1671, '1670');
INSERT INTO world.monsters_spawns_static_groups (Id, StaticSpawnId, MonsterGradeId, MonsterGradeIdBak) VALUES (10, 10, 1672, '1671');
INSERT INTO world.monsters_spawns_static_groups (Id, StaticSpawnId, MonsterGradeId, MonsterGradeIdBak) VALUES (18, 18, 9481, '9481');
INSERT INTO world.monsters_spawns_static_groups (Id, StaticSpawnId, MonsterGradeId, MonsterGradeIdBak) VALUES (19, 19, 9472, '9472');
INSERT INTO world.monsters_spawns_static_groups (Id, StaticSpawnId, MonsterGradeId, MonsterGradeIdBak) VALUES (20, 20, 9463, '9463');
INSERT INTO world.monsters_spawns_static_groups (Id, StaticSpawnId, MonsterGradeId, MonsterGradeIdBak) VALUES (21, 21, 9469, '9469');
INSERT INTO world.monsters_spawns_static_groups (Id, StaticSpawnId, MonsterGradeId, MonsterGradeIdBak) VALUES (22, 22, 9480, '9480');
INSERT INTO world.monsters_spawns_static_groups (Id, StaticSpawnId, MonsterGradeId, MonsterGradeIdBak) VALUES (23, 23, 7301, null);
INSERT INTO world.monsters_spawns_static_groups (Id, StaticSpawnId, MonsterGradeId, MonsterGradeIdBak) VALUES (24, 23, 7306, null);
INSERT INTO world.monsters_spawns_static_groups (Id, StaticSpawnId, MonsterGradeId, MonsterGradeIdBak) VALUES (25, 24, 6089, '6089');
INSERT INTO world.monsters_spawns_static_groups (Id, StaticSpawnId, MonsterGradeId, MonsterGradeIdBak) VALUES (26, 25, 6074, '6074');