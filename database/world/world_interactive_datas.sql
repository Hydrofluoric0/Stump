create table interactive_datas
(
    Id    int not null
        primary key,
    Type  int not null,
    MapId int not null,
    Data1 int not null,
    Data2 int not null
)
    engine = MyISAM
    charset = utf8;

