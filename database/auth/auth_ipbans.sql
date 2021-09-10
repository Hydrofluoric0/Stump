create table ipbans
(
    Id         bigint auto_increment
        primary key,
    IPAsString mediumtext not null,
    Date       datetime   not null,
    Duration   int        null,
    BanReason  mediumtext not null,
    BannedBy   int        null
)
    engine = MyISAM
    charset = utf8;

