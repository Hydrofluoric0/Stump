create table achievementobjectives
(
    Id            int unsigned not null
        primary key,
    AchievementId int unsigned not null,
    `Order`       int unsigned not null,
    NameId        int unsigned not null,
    Criterion     mediumtext   null
)
    engine = MyISAM
    charset = utf8;

