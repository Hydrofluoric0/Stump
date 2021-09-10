create table clientbans
(
    Id        bigint auto_increment
        primary key,
    Date      datetime   not null,
    Duration  int        null,
    BanReason mediumtext not null,
    BannedBy  int        null,
    ClientKey mediumtext not null
)
    engine = MyISAM
    charset = utf8;

