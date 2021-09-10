create table npcs_items_sem_promo
(
    NpcShopId    int        not null,
    CustomPrice  int        null,
    BuyCriterion mediumtext null,
    MaxStats     tinyint    not null,
    Id           int auto_increment
        primary key,
    ItemId       int        not null
)
    engine = MyISAM
    charset = utf8;

