create table `groups`
(
    Id                   int auto_increment
        primary key,
    Name                 mediumtext not null,
    Role                 int        not null,
    IsGameMaster         tinyint    not null,
    AvailableServersCSV  mediumtext null,
    AvailableCommandsCSV mediumtext null
)
    engine = MyISAM
    charset = utf8;

INSERT INTO auth.`groups` (Id, Name, Role, IsGameMaster, AvailableServersCSV, AvailableCommandsCSV) VALUES (1, 'Player', 1, 0, '1', null);
INSERT INTO auth.`groups` (Id, Name, Role, IsGameMaster, AvailableServersCSV, AvailableCommandsCSV) VALUES (2, 'Moderator', 2, 0, '1', null);
INSERT INTO auth.`groups` (Id, Name, Role, IsGameMaster, AvailableServersCSV, AvailableCommandsCSV) VALUES (3, 'GameMaster_Padawan', 3, 0, '1', null);
INSERT INTO auth.`groups` (Id, Name, Role, IsGameMaster, AvailableServersCSV, AvailableCommandsCSV) VALUES (4, 'GameMaster', 4, 1, '1', null);
INSERT INTO auth.`groups` (Id, Name, Role, IsGameMaster, AvailableServersCSV, AvailableCommandsCSV) VALUES (5, 'Administrator', 5, 1, '1', null);