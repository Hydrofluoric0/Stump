create table monsters_agression_honors
(
    Id          int auto_increment
        primary key,
    MonsterId   int not null,
    SubAreaId   int not null,
    AlignmentId int not null,
    HonorId     int not null
)
    engine = MyISAM
    charset = utf8;

