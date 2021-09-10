create table worlds
(
    Id                  int        not null
        primary key,
    Name                mediumtext not null,
    Port                int        not null,
    Address             mediumtext not null,
    RequireSubscription tinyint    not null,
    Completion          int        not null,
    ServerSelectable    tinyint    not null,
    CharCapacity        int        not null,
    CharsCount          int        null,
    RequiredRole        int        not null,
    Status              int        not null
)
    engine = MyISAM
    charset = utf8;

INSERT INTO auth.worlds (Id, Name, Port, Address, RequireSubscription, Completion, ServerSelectable, CharCapacity, CharsCount, RequiredRole, Status) VALUES (1, 'Jiva', 3467, 'localhost', 0, 0, 1, 2000, 0, 1, 2);