create table incarnations_custom
(
    Id                int auto_increment
        primary key,
    SpellIdsCSV       mediumtext not null,
    ItemId            int        null,
    CustomLookString  mediumtext not null,
    PaDodge           int        not null,
    PmDodge           int        not null,
    EarthResistance   int        not null,
    AirResistance     int        not null,
    FireResistance    int        not null,
    WaterResistance   int        not null,
    NeutralResistance int        not null,
    LifePoints        int        not null,
    ActionPoints      int        not null,
    MovementPoints    int        not null,
    `Range`           int        not null,
    TackleEvade       smallint   not null,
    TackleBlock       smallint   not null,
    Strength          smallint   not null,
    Chance            smallint   not null,
    Vitality          smallint   not null,
    Wisdom            smallint   not null,
    Intelligence      smallint   not null,
    Agility           smallint   not null
)
    engine = MyISAM
    charset = utf8;

