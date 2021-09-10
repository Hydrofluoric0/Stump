create table startup_actions_items
(
    Id           int unsigned auto_increment
        primary key,
    ItemTemplate int          not null,
    Amount       int unsigned not null,
    MaxEffects   tinyint      not null
)
    engine = MyISAM
    charset = utf8;

