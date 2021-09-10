create table groups_commands
(
    Id           int auto_increment
        primary key,
    CommandAlias mediumtext not null
)
    engine = MyISAM
    charset = utf8;

INSERT INTO world.groups_commands (Id, CommandAlias) VALUES (1, '1');