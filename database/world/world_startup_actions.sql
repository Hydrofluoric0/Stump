create table startup_actions
(
    Id         int auto_increment
        primary key,
    Title      mediumtext not null,
    Text       mediumtext not null,
    DescUrl    mediumtext not null,
    PictureUrl mediumtext not null
)
    engine = MyISAM
    charset = utf8;

