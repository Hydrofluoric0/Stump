create table world_maps_taxcollector
(
    Id                 int auto_increment
        primary key,
    GuildId            int        not null,
    MapId              int        null,
    Cell               int        not null,
    Direction          int        not null,
    FirstNameId        smallint   not null,
    LastNameId         smallint   not null,
    CallerId           int        not null,
    CallerName         mediumtext not null,
    Date               datetime   not null,
    GatheredExperience int        not null,
    GatheredKamas      int        not null,
    AttacksCount       int        not null
)
    engine = MyISAM
    charset = utf8;

