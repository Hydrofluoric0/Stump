create table achievementcategories
(
    Id                  int unsigned not null
        primary key,
    NameId              int unsigned not null,
    ParentId            int unsigned not null,
    Icon                mediumtext   null,
    `Order`             int unsigned not null,
    Color               mediumtext   null,
    AchievementIdsBin   longblob     null,
    VisibilityCriterion mediumtext   null
)
    engine = MyISAM
    charset = utf8;

