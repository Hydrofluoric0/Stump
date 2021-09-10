create table bad_words
(
    Id   int auto_increment
        primary key,
    Text mediumtext not null
)
    engine = MyISAM
    charset = utf8;

