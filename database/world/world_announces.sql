create table announces
(
    Message mediumtext not null,
    Color   int        null,
    Id      int        not null
        primary key
)
    engine = MyISAM
    charset = utf8;

