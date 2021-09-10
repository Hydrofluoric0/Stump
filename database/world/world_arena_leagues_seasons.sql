create table arena_leagues_seasons
(
    Id       int auto_increment
        primary key,
    SeasonId int          not null,
    NameId   int unsigned not null,
    Name     mediumtext   not null
)
    engine = MyISAM
    charset = utf8;

INSERT INTO world.arena_leagues_seasons (Id, SeasonId, NameId, Name) VALUES (1, 1, 766823, 'Saison 1');
INSERT INTO world.arena_leagues_seasons (Id, SeasonId, NameId, Name) VALUES (2, 3, 779708, '{null}');
INSERT INTO world.arena_leagues_seasons (Id, SeasonId, NameId, Name) VALUES (3, 4, 789226, '{null}');