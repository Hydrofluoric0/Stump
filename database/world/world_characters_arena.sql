create table characters_arena
(
    Id                       int auto_increment
        primary key,
    OwnerId                  int      not null,
    ArenaRank3v3             int      not null,
    ArenaMaxRank3v3          int      not null,
    ArenaDailyMaxRank3v3     int      not null,
    ArenaDailyMatchsWon3v3   int      not null,
    ArenaDailyMatchsCount3v3 int      not null,
    ArenaDailyDate3v3        datetime not null,
    ArenaRank1v1             int      not null,
    ArenaMaxRank1v1          int      not null,
    ArenaDailyMaxRank1v1     int      not null,
    ArenaDailyMatchsWon1v1   int      not null,
    ArenaDailyMatchsCount1v1 int      not null,
    ArenaDailyDate1v1        datetime not null
)
    engine = MyISAM
    charset = utf8;

