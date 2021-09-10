create table hardwareid_bans
(
    Id         bigint auto_increment
        primary key,
    Date       datetime   not null,
    BanReason  mediumtext not null,
    BannedBy   int        null,
    HardwareId mediumtext not null
)
    engine = MyISAM
    charset = utf8;

