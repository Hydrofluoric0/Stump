create table items_cranios
(
    Id      int auto_increment
        primary key,
    ItemId  int not null,
    BreedId int not null
)
    engine = MyISAM
    charset = utf8;

