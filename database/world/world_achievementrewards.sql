create table achievementrewards
(
    Id                        int unsigned not null
        primary key,
    AchievementId             int unsigned not null,
    Criteria                  mediumtext   null,
    KamasRatio                float(16, 2) not null,
    ExperienceRatio           float(16, 2) not null,
    KamasScaleWithPlayerLevel tinyint      not null,
    ItemsRewardBin            longblob     null,
    ItemsQuantityRewardBin    longblob     null,
    EmotesRewardBin           longblob     null,
    SpellsRewardBin           longblob     null,
    TitlesRewardBin           longblob     null,
    OrnamentsRewardBin        longblob     null
)
    engine = MyISAM
    charset = utf8;

