create table achievements
(
    Id              int unsigned not null
        primary key,
    NameId          int unsigned not null,
    CategoryId      int unsigned not null,
    DescriptionId   int unsigned not null,
    IconId          int          not null,
    Points          int unsigned not null,
    Level           int unsigned not null,
    `Order`         int unsigned not null,
    AccountLinked   tinyint      not null,
    ObjectiveIdsBin longblob     null,
    RewardIdsBin    longblob     null
)
    engine = MyISAM
    charset = utf8;

