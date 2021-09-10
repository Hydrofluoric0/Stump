create table achievements_rewards
(
    Id                     int unsigned not null
        primary key,
    AchievementId          int unsigned not null,
    LevelMin               int          not null,
    LevelMax               int          not null,
    ItemsRewardCSV         mediumtext   not null,
    ItemsQuantityRewardCSV mediumtext   not null,
    EmotesRewardCSV        mediumtext   not null,
    SpellsRewardCSV        mediumtext   not null,
    TitlesRewardCSV        mediumtext   not null,
    OrnamentsRewardCSV     mediumtext   not null
)
    engine = MyISAM
    charset = utf8;

