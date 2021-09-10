create table world_maps_merchant
(
    CharacterId      int        not null
        primary key,
    AccountId        int        not null,
    MapId            int        null,
    Cell             int        not null,
    Direction        int        not null,
    EntityLookString mediumtext null,
    Name             mediumtext not null,
    SellType         int        not null,
    IsActive         tinyint    not null,
    MerchantSince    datetime   not null
)
    engine = MyISAM
    charset = utf8;

