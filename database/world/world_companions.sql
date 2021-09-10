create table companions
(
    Id                   int        not null
        primary key,
    ItemId               int        not null,
    Look                 mediumtext not null,
    StartingSpellLevelId int        not null,
    Characterisitcs      mediumtext null,
    Spells               mediumtext null,
    BoneId               mediumtext null
)
    engine = MyISAM
    charset = utf8;

INSERT INTO world.companions (Id, ItemId, Look, StartingSpellLevelId, Characterisitcs, Spells, BoneId) VALUES (1, 14961, '{2478|||90}', 21708, null, '16,17,18,19,20,21', '2605');
INSERT INTO world.companions (Id, ItemId, Look, StartingSpellLevelId, Characterisitcs, Spells, BoneId) VALUES (2, 14962, '{2493}', 21730, null, '55,56,57,58,59,60', '2606');
INSERT INTO world.companions (Id, ItemId, Look, StartingSpellLevelId, Characterisitcs, Spells, BoneId) VALUES (6, 14963, '{2494}', 21756, null, '31,32,33,34,35,36', '2609');
INSERT INTO world.companions (Id, ItemId, Look, StartingSpellLevelId, Characterisitcs, Spells, BoneId) VALUES (7, 14965, '{2492}', 21719, null, '37,38,39,40,41,42', '2607');
INSERT INTO world.companions (Id, ItemId, Look, StartingSpellLevelId, Characterisitcs, Spells, BoneId) VALUES (8, 14964, '{2504}', 21747, null, '43,44,45,46,47,48', '2610');
INSERT INTO world.companions (Id, ItemId, Look, StartingSpellLevelId, Characterisitcs, Spells, BoneId) VALUES (9, 14966, '{2495|||80}', 21739, null, '49,50,51,52,53,54', '2608');
INSERT INTO world.companions (Id, ItemId, Look, StartingSpellLevelId, Characterisitcs, Spells, BoneId) VALUES (11, 15018, '{2558}', 0, null, '62,63,64,65,66,67', '2611');
INSERT INTO world.companions (Id, ItemId, Look, StartingSpellLevelId, Characterisitcs, Spells, BoneId) VALUES (12, 15094, '{2625|||75}', 0, null, '68,69,70,71,72,73', '2656');
INSERT INTO world.companions (Id, ItemId, Look, StartingSpellLevelId, Characterisitcs, Spells, BoneId) VALUES (14, 15160, '{2704|||90}', 0, null, '80,81,82,83,84,85', '2716');
INSERT INTO world.companions (Id, ItemId, Look, StartingSpellLevelId, Characterisitcs, Spells, BoneId) VALUES (15, 15161, '{2666}', 0, null, '86,87,88,89,90,91', '2670');
INSERT INTO world.companions (Id, ItemId, Look, StartingSpellLevelId, Characterisitcs, Spells, BoneId) VALUES (16, 15393, '{2860|||80}', 0, null, '92,93,94,95,96,97', '2894');
INSERT INTO world.companions (Id, ItemId, Look, StartingSpellLevelId, Characterisitcs, Spells, BoneId) VALUES (17, 15710, '{3018}', 22955, null, '99,100,102,103,104,105', '3020');