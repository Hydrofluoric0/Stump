create table finish_moves
(
    Id         int          not null
        primary key,
    Name       varchar(255) null,
    Duration   int          not null,
    Free       tinyint      not null,
    NameId     int unsigned not null,
    Category   int          not null,
    SpellLevel int          not null
)
    engine = MyISAM
    charset = utf8;

INSERT INTO world.finish_moves (Id, Name, Duration, Free, NameId, Category, SpellLevel) VALUES (1, null, 4500, 1, 672184, 1, 29064);
INSERT INTO world.finish_moves (Id, Name, Duration, Free, NameId, Category, SpellLevel) VALUES (2, null, 5000, 0, 672185, 1, 29063);
INSERT INTO world.finish_moves (Id, Name, Duration, Free, NameId, Category, SpellLevel) VALUES (5, null, 5100, 0, 700918, 1, 29217);
INSERT INTO world.finish_moves (Id, Name, Duration, Free, NameId, Category, SpellLevel) VALUES (6, null, 6000, 0, 700921, 1, 29218);
INSERT INTO world.finish_moves (Id, Name, Duration, Free, NameId, Category, SpellLevel) VALUES (7, null, 7200, 0, 700920, 1, 29219);
INSERT INTO world.finish_moves (Id, Name, Duration, Free, NameId, Category, SpellLevel) VALUES (8, null, 7500, 0, 700919, 1, 29220);
INSERT INTO world.finish_moves (Id, Name, Duration, Free, NameId, Category, SpellLevel) VALUES (10, null, 5000, 0, 745162, 1, 35914);
INSERT INTO world.finish_moves (Id, Name, Duration, Free, NameId, Category, SpellLevel) VALUES (11, null, 5000, 0, 745209, 1, 35916);
INSERT INTO world.finish_moves (Id, Name, Duration, Free, NameId, Category, SpellLevel) VALUES (14, null, 5000, 0, 745234, 1, 35917);
INSERT INTO world.finish_moves (Id, Name, Duration, Free, NameId, Category, SpellLevel) VALUES (15, null, 5000, 0, 745290, 1, 35918);
INSERT INTO world.finish_moves (Id, Name, Duration, Free, NameId, Category, SpellLevel) VALUES (18, null, 5000, 0, 745300, 1, 35919);
INSERT INTO world.finish_moves (Id, Name, Duration, Free, NameId, Category, SpellLevel) VALUES (19, null, 5000, 0, 745311, 1, 35920);
INSERT INTO world.finish_moves (Id, Name, Duration, Free, NameId, Category, SpellLevel) VALUES (20, null, 5000, 0, 745318, 1, 35921);
INSERT INTO world.finish_moves (Id, Name, Duration, Free, NameId, Category, SpellLevel) VALUES (21, null, 5000, 0, 745327, 1, 35922);
INSERT INTO world.finish_moves (Id, Name, Duration, Free, NameId, Category, SpellLevel) VALUES (27, null, 5000, 0, 745335, 1, 35923);
INSERT INTO world.finish_moves (Id, Name, Duration, Free, NameId, Category, SpellLevel) VALUES (28, null, 5000, 0, 745374, 1, 35924);
INSERT INTO world.finish_moves (Id, Name, Duration, Free, NameId, Category, SpellLevel) VALUES (30, null, 5000, 0, 745388, 1, 35925);
INSERT INTO world.finish_moves (Id, Name, Duration, Free, NameId, Category, SpellLevel) VALUES (31, null, 5000, 0, 745403, 1, 35926);