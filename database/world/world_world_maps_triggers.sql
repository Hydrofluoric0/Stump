create table world_maps_triggers
(
    Id                   int auto_increment
        primary key,
    Type                 mediumtext null,
    CellId               smallint   null,
    MapId                int        null,
    TriggerType          int        null,
    `Condition`          mediumtext null,
    Parameter0           mediumtext null,
    Parameter1           mediumtext null,
    Parameter2           mediumtext null,
    Parameter3           mediumtext null,
    Parameter4           mediumtext null,
    AdditionalParameters mediumtext null
)
    engine = MyISAM
    charset = utf8;

INSERT INTO world.world_maps_triggers (Id, Type, CellId, MapId, TriggerType, `Condition`, Parameter0, Parameter1, Parameter2, Parameter3, Parameter4, AdditionalParameters) VALUES (1, 'Teleport', 492, 81788928, 0, '', '289', '165152262', '60', '', '', '');
INSERT INTO world.world_maps_triggers (Id, Type, CellId, MapId, TriggerType, `Condition`, Parameter0, Parameter1, Parameter2, Parameter3, Parameter4, AdditionalParameters) VALUES (2, 'Teleport', 478, 81788928, 0, '', '289', '165152262', '60', '', '', '');
INSERT INTO world.world_maps_triggers (Id, Type, CellId, MapId, TriggerType, `Condition`, Parameter0, Parameter1, Parameter2, Parameter3, Parameter4, AdditionalParameters) VALUES (3, 'Teleport', 430, 81788930, 0, null, '215', '81788928', '60', '', '', '');
INSERT INTO world.world_maps_triggers (Id, Type, CellId, MapId, TriggerType, `Condition`, Parameter0, Parameter1, Parameter2, Parameter3, Parameter4, AdditionalParameters) VALUES (4, 'Teleport', 443, 81788930, 0, null, '215', '81788928', '60', '', '', '');
INSERT INTO world.world_maps_triggers (Id, Type, CellId, MapId, TriggerType, `Condition`, Parameter0, Parameter1, Parameter2, Parameter3, Parameter4, AdditionalParameters) VALUES (5, 'Teleport', 546, 194905088, 0, null, '152', '60038146', '60', null, null, null);
INSERT INTO world.world_maps_triggers (Id, Type, CellId, MapId, TriggerType, `Condition`, Parameter0, Parameter1, Parameter2, Parameter3, Parameter4, AdditionalParameters) VALUES (6, 'Teleport', 532, 194905088, 0, null, '152', '60038146', '60', null, null, null);
INSERT INTO world.world_maps_triggers (Id, Type, CellId, MapId, TriggerType, `Condition`, Parameter0, Parameter1, Parameter2, Parameter3, Parameter4, AdditionalParameters) VALUES (7, 'Teleport', 518, 54169416, 0, null, '54', '60037122', '60', null, null, null);
INSERT INTO world.world_maps_triggers (Id, Type, CellId, MapId, TriggerType, `Condition`, Parameter0, Parameter1, Parameter2, Parameter3, Parameter4, AdditionalParameters) VALUES (8, 'Teleport', 41, 60037122, 0, null, '505', '54169416', '60', null, null, null);
INSERT INTO world.world_maps_triggers (Id, Type, CellId, MapId, TriggerType, `Condition`, Parameter0, Parameter1, Parameter2, Parameter3, Parameter4, AdditionalParameters) VALUES (9, 'Teleport', 215, 54168392, 0, null, '35', '54167878', '60', null, null, null);
INSERT INTO world.world_maps_triggers (Id, Type, CellId, MapId, TriggerType, `Condition`, Parameter0, Parameter1, Parameter2, Parameter3, Parameter4, AdditionalParameters) VALUES (10, 'Teleport', 20, 54167878, 0, null, '446', '54168392', '60', null, null, null);
INSERT INTO world.world_maps_triggers (Id, Type, CellId, MapId, TriggerType, `Condition`, Parameter0, Parameter1, Parameter2, Parameter3, Parameter4, AdditionalParameters) VALUES (11, 'Teleport', 500, 115081731, 0, null, '201', '115083777', '60', null, null, null);
INSERT INTO world.world_maps_triggers (Id, Type, CellId, MapId, TriggerType, `Condition`, Parameter0, Parameter1, Parameter2, Parameter3, Parameter4, AdditionalParameters) VALUES (12, 'Teleport', 514, 115081731, 0, null, '201', '115083777', '60', null, null, null);
INSERT INTO world.world_maps_triggers (Id, Type, CellId, MapId, TriggerType, `Condition`, Parameter0, Parameter1, Parameter2, Parameter3, Parameter4, AdditionalParameters) VALUES (13, 'Teleport', 424, 153354242, 0, null, '302', '154010372', '60', null, null, null);
INSERT INTO world.world_maps_triggers (Id, Type, CellId, MapId, TriggerType, `Condition`, Parameter0, Parameter1, Parameter2, Parameter3, Parameter4, AdditionalParameters) VALUES (14, 'Teleport', 409, 153354240, 0, null, '440', '153880323', '60', null, null, null);
INSERT INTO world.world_maps_triggers (Id, Type, CellId, MapId, TriggerType, `Condition`, Parameter0, Parameter1, Parameter2, Parameter3, Parameter4, AdditionalParameters) VALUES (15, 'Teleport', 401, 153356296, 0, null, '299', '153879811', '60', null, null, null);
INSERT INTO world.world_maps_triggers (Id, Type, CellId, MapId, TriggerType, `Condition`, Parameter0, Parameter1, Parameter2, Parameter3, Parameter4, AdditionalParameters) VALUES (16, 'Teleport', 283, 131596288, 0, null, '554', '131597312', null, null, null, null);
INSERT INTO world.world_maps_triggers (Id, Type, CellId, MapId, TriggerType, `Condition`, Parameter0, Parameter1, Parameter2, Parameter3, Parameter4, AdditionalParameters) VALUES (17, 'Teleport', 269, 131596288, 0, null, '554', '131597312', null, null, null, null);
INSERT INTO world.world_maps_triggers (Id, Type, CellId, MapId, TriggerType, `Condition`, Parameter0, Parameter1, Parameter2, Parameter3, Parameter4, AdditionalParameters) VALUES (18, 'Teleport', 470, 129236992, 0, null, '142', '129237505', null, null, null, null);
INSERT INTO world.world_maps_triggers (Id, Type, CellId, MapId, TriggerType, `Condition`, Parameter0, Parameter1, Parameter2, Parameter3, Parameter4, AdditionalParameters) VALUES (19, 'Teleport', 457, 129236992, 0, null, '142', '129237505', null, null, null, null);
INSERT INTO world.world_maps_triggers (Id, Type, CellId, MapId, TriggerType, `Condition`, Parameter0, Parameter1, Parameter2, Parameter3, Parameter4, AdditionalParameters) VALUES (20, 'Teleport', 443, 129236992, 0, null, '142', '129237505', null, null, null, null);
INSERT INTO world.world_maps_triggers (Id, Type, CellId, MapId, TriggerType, `Condition`, Parameter0, Parameter1, Parameter2, Parameter3, Parameter4, AdditionalParameters) VALUES (21, 'Teleport', 177, 179830785, 0, null, '542', '179830784', null, null, null, null);