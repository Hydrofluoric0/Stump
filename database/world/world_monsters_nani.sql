create table monsters_nani
(
    Id             int auto_increment
        primary key,
    MonsterGradeId int        not null,
    SubAreasCSV    mediumtext not null
)
    engine = MyISAM
    charset = utf8;

