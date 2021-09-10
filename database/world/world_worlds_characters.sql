create table worlds_characters
(
    CharacterId int not null
        primary key,
    AccountId   int not null,
    WorldId     int not null
)
    engine = MyISAM
    charset = utf8;

