create table worlds_characters
(
    Id          bigint auto_increment
        primary key,
    CharacterId int       not null,
    AccountId   int       not null,
    WorldId     int       not null,
    created_at  timestamp null,
    updated_at  timestamp null
)
    engine = MyISAM
    charset = utf8;

INSERT INTO auth.worlds_characters (Id, CharacterId, AccountId, WorldId, created_at, updated_at) VALUES (149, 2189, 9, 1, null, null);
INSERT INTO auth.worlds_characters (Id, CharacterId, AccountId, WorldId, created_at, updated_at) VALUES (150, 1, 9, 1, null, null);