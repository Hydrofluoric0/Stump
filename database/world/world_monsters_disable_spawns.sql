create table monsters_disable_spawns
(
    Id        int auto_increment
        primary key,
    SubAreaId int null,
    MonsterId int not null
)
    engine = MyISAM
    charset = utf8;

