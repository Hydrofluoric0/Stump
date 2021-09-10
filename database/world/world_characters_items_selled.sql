create table characters_items_selled
(
    OwnerId           int          not null,
    Price             int unsigned not null,
    StackSold         int unsigned not null,
    ItemId            int          not null,
    Stack             int unsigned not null,
    SerializedEffects longblob     null,
    Id                int          not null
        primary key
)
    engine = MyISAM
    charset = utf8;

create index OwnerId
    on characters_items_selled (OwnerId);

