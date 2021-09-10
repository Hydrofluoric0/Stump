create table arena_leagues
(
    Id           int auto_increment
        primary key,
    LeagueId     int          not null,
    NameId       int unsigned not null,
    OrnamentId   int unsigned not null,
    Icon         mediumtext   not null,
    Illus        mediumtext   not null,
    IsLastLeague tinyint      not null,
    Name         mediumtext   not null,
    TypeId       int          not null,
    NextLeagueId int          not null
)
    engine = MyISAM
    charset = utf8;

INSERT INTO world.arena_leagues (Id, LeagueId, NameId, OrnamentId, Icon, Illus, IsLastLeague, Name, TypeId, NextLeagueId) VALUES (1, 6, 766736, 127, 'icon_kolizeum02', 'tx_illu_arena_02', 0, 'Bronze I', 0, 0);
INSERT INTO world.arena_leagues (Id, LeagueId, NameId, OrnamentId, Icon, Illus, IsLastLeague, Name, TypeId, NextLeagueId) VALUES (2, 7, 766738, 127, 'icon_kolizeum02', 'tx_illu_arena_02', 0, 'Bronze II', 0, 0);
INSERT INTO world.arena_leagues (Id, LeagueId, NameId, OrnamentId, Icon, Illus, IsLastLeague, Name, TypeId, NextLeagueId) VALUES (3, 8, 766740, 127, 'icon_kolizeum02', 'tx_illu_arena_02', 0, 'Bronze III', 0, 0);
INSERT INTO world.arena_leagues (Id, LeagueId, NameId, OrnamentId, Icon, Illus, IsLastLeague, Name, TypeId, NextLeagueId) VALUES (4, 9, 766742, 127, 'icon_kolizeum02', 'tx_illu_arena_02', 0, 'Bronze IV', 0, 0);
INSERT INTO world.arena_leagues (Id, LeagueId, NameId, OrnamentId, Icon, Illus, IsLastLeague, Name, TypeId, NextLeagueId) VALUES (5, 10, 766744, 127, 'icon_kolizeum02', 'tx_illu_arena_02', 0, 'Bronze V', 0, 0);
INSERT INTO world.arena_leagues (Id, LeagueId, NameId, OrnamentId, Icon, Illus, IsLastLeague, Name, TypeId, NextLeagueId) VALUES (6, 11, 766746, 127, 'icon_kolizeum02', 'tx_illu_arena_02', 0, 'Bronze VI', 0, 0);
INSERT INTO world.arena_leagues (Id, LeagueId, NameId, OrnamentId, Icon, Illus, IsLastLeague, Name, TypeId, NextLeagueId) VALUES (7, 12, 766748, 127, 'icon_kolizeum02', 'tx_illu_arena_02', 0, 'Bronze VII', 0, 0);
INSERT INTO world.arena_leagues (Id, LeagueId, NameId, OrnamentId, Icon, Illus, IsLastLeague, Name, TypeId, NextLeagueId) VALUES (8, 13, 766750, 127, 'icon_kolizeum02', 'tx_illu_arena_02', 0, 'Bronze VIII', 0, 0);
INSERT INTO world.arena_leagues (Id, LeagueId, NameId, OrnamentId, Icon, Illus, IsLastLeague, Name, TypeId, NextLeagueId) VALUES (9, 14, 766752, 127, 'icon_kolizeum02', 'tx_illu_arena_02', 0, 'Bronze IX', 0, 0);
INSERT INTO world.arena_leagues (Id, LeagueId, NameId, OrnamentId, Icon, Illus, IsLastLeague, Name, TypeId, NextLeagueId) VALUES (10, 15, 766754, 127, 'icon_kolizeum02', 'tx_illu_arena_02', 0, 'Bronze X', 0, 0);
INSERT INTO world.arena_leagues (Id, LeagueId, NameId, OrnamentId, Icon, Illus, IsLastLeague, Name, TypeId, NextLeagueId) VALUES (11, 16, 766756, 128, 'icon_kolizeum03', 'tx_illu_arena_03', 0, 'Argent I', 0, 0);
INSERT INTO world.arena_leagues (Id, LeagueId, NameId, OrnamentId, Icon, Illus, IsLastLeague, Name, TypeId, NextLeagueId) VALUES (12, 17, 766758, 128, 'icon_kolizeum03', 'tx_illu_arena_03', 0, 'Argent II', 0, 0);
INSERT INTO world.arena_leagues (Id, LeagueId, NameId, OrnamentId, Icon, Illus, IsLastLeague, Name, TypeId, NextLeagueId) VALUES (13, 18, 766760, 128, 'icon_kolizeum03', 'tx_illu_arena_03', 0, 'Argent III', 0, 0);
INSERT INTO world.arena_leagues (Id, LeagueId, NameId, OrnamentId, Icon, Illus, IsLastLeague, Name, TypeId, NextLeagueId) VALUES (14, 20, 766764, 128, 'icon_kolizeum03', 'tx_illu_arena_03', 0, 'Argent IV', 0, 0);
INSERT INTO world.arena_leagues (Id, LeagueId, NameId, OrnamentId, Icon, Illus, IsLastLeague, Name, TypeId, NextLeagueId) VALUES (15, 21, 766766, 128, 'icon_kolizeum03', 'tx_illu_arena_03', 0, 'Argent V', 0, 0);
INSERT INTO world.arena_leagues (Id, LeagueId, NameId, OrnamentId, Icon, Illus, IsLastLeague, Name, TypeId, NextLeagueId) VALUES (16, 22, 766768, 128, 'icon_kolizeum03', 'tx_illu_arena_03', 0, 'Argent VI', 0, 0);
INSERT INTO world.arena_leagues (Id, LeagueId, NameId, OrnamentId, Icon, Illus, IsLastLeague, Name, TypeId, NextLeagueId) VALUES (17, 23, 766770, 128, 'icon_kolizeum03', 'tx_illu_arena_03', 0, 'Argent VII', 0, 0);
INSERT INTO world.arena_leagues (Id, LeagueId, NameId, OrnamentId, Icon, Illus, IsLastLeague, Name, TypeId, NextLeagueId) VALUES (18, 24, 766772, 128, 'icon_kolizeum03', 'tx_illu_arena_03', 0, 'Argent VIII', 0, 0);
INSERT INTO world.arena_leagues (Id, LeagueId, NameId, OrnamentId, Icon, Illus, IsLastLeague, Name, TypeId, NextLeagueId) VALUES (19, 25, 766774, 128, 'icon_kolizeum03', 'tx_illu_arena_03', 0, 'Argent IX', 0, 0);
INSERT INTO world.arena_leagues (Id, LeagueId, NameId, OrnamentId, Icon, Illus, IsLastLeague, Name, TypeId, NextLeagueId) VALUES (20, 26, 766777, 128, 'icon_kolizeum03', 'tx_illu_arena_03', 0, 'Argent X', 0, 0);
INSERT INTO world.arena_leagues (Id, LeagueId, NameId, OrnamentId, Icon, Illus, IsLastLeague, Name, TypeId, NextLeagueId) VALUES (21, 27, 766780, 129, 'icon_kolizeum04', 'tx_illu_arena_04', 0, 'Or I', 0, 0);
INSERT INTO world.arena_leagues (Id, LeagueId, NameId, OrnamentId, Icon, Illus, IsLastLeague, Name, TypeId, NextLeagueId) VALUES (22, 28, 766782, 129, 'icon_kolizeum04', 'tx_illu_arena_04', 0, 'Or II', 0, 0);
INSERT INTO world.arena_leagues (Id, LeagueId, NameId, OrnamentId, Icon, Illus, IsLastLeague, Name, TypeId, NextLeagueId) VALUES (23, 29, 766784, 129, 'icon_kolizeum04', 'tx_illu_arena_04', 0, 'Or III', 0, 0);
INSERT INTO world.arena_leagues (Id, LeagueId, NameId, OrnamentId, Icon, Illus, IsLastLeague, Name, TypeId, NextLeagueId) VALUES (24, 30, 766786, 129, 'icon_kolizeum04', 'tx_illu_arena_04', 0, 'Or IV', 0, 0);
INSERT INTO world.arena_leagues (Id, LeagueId, NameId, OrnamentId, Icon, Illus, IsLastLeague, Name, TypeId, NextLeagueId) VALUES (25, 31, 766788, 129, 'icon_kolizeum04', 'tx_illu_arena_04', 0, 'Or V', 0, 0);
INSERT INTO world.arena_leagues (Id, LeagueId, NameId, OrnamentId, Icon, Illus, IsLastLeague, Name, TypeId, NextLeagueId) VALUES (26, 32, 766790, 129, 'icon_kolizeum04', 'tx_illu_arena_04', 0, 'Or VI', 0, 0);
INSERT INTO world.arena_leagues (Id, LeagueId, NameId, OrnamentId, Icon, Illus, IsLastLeague, Name, TypeId, NextLeagueId) VALUES (27, 33, 766792, 129, 'icon_kolizeum04', 'tx_illu_arena_04', 0, 'Or VII', 0, 0);
INSERT INTO world.arena_leagues (Id, LeagueId, NameId, OrnamentId, Icon, Illus, IsLastLeague, Name, TypeId, NextLeagueId) VALUES (28, 34, 766794, 129, 'icon_kolizeum04', 'tx_illu_arena_04', 0, 'Or VIII', 0, 0);
INSERT INTO world.arena_leagues (Id, LeagueId, NameId, OrnamentId, Icon, Illus, IsLastLeague, Name, TypeId, NextLeagueId) VALUES (29, 35, 766797, 129, 'icon_kolizeum04', 'tx_illu_arena_04', 0, 'Or X', 0, 0);
INSERT INTO world.arena_leagues (Id, LeagueId, NameId, OrnamentId, Icon, Illus, IsLastLeague, Name, TypeId, NextLeagueId) VALUES (30, 36, 766799, 130, 'icon_kolizeum05', 'tx_illu_arena_05', 0, 'Cristal I', 0, 0);
INSERT INTO world.arena_leagues (Id, LeagueId, NameId, OrnamentId, Icon, Illus, IsLastLeague, Name, TypeId, NextLeagueId) VALUES (31, 37, 766801, 130, 'icon_kolizeum05', 'tx_illu_arena_05', 0, 'Cristal II', 0, 0);
INSERT INTO world.arena_leagues (Id, LeagueId, NameId, OrnamentId, Icon, Illus, IsLastLeague, Name, TypeId, NextLeagueId) VALUES (32, 38, 766803, 130, 'icon_kolizeum05', 'tx_illu_arena_05', 0, 'Cristal III', 0, 0);
INSERT INTO world.arena_leagues (Id, LeagueId, NameId, OrnamentId, Icon, Illus, IsLastLeague, Name, TypeId, NextLeagueId) VALUES (33, 39, 766805, 130, 'icon_kolizeum05', 'tx_illu_arena_05', 0, 'Cristal IV', 0, 0);
INSERT INTO world.arena_leagues (Id, LeagueId, NameId, OrnamentId, Icon, Illus, IsLastLeague, Name, TypeId, NextLeagueId) VALUES (34, 40, 766807, 130, 'icon_kolizeum05', 'tx_illu_arena_05', 0, 'Cristal V', 0, 0);
INSERT INTO world.arena_leagues (Id, LeagueId, NameId, OrnamentId, Icon, Illus, IsLastLeague, Name, TypeId, NextLeagueId) VALUES (35, 42, 766811, 131, 'icon_kolizeum06', 'tx_illu_arena_06', 0, 'Diamant I', 0, 0);
INSERT INTO world.arena_leagues (Id, LeagueId, NameId, OrnamentId, Icon, Illus, IsLastLeague, Name, TypeId, NextLeagueId) VALUES (36, 43, 766813, 131, 'icon_kolizeum06', 'tx_illu_arena_06', 0, 'Diamant II', 0, 0);
INSERT INTO world.arena_leagues (Id, LeagueId, NameId, OrnamentId, Icon, Illus, IsLastLeague, Name, TypeId, NextLeagueId) VALUES (37, 44, 766815, 131, 'icon_kolizeum06', 'tx_illu_arena_06', 0, 'Diamant III', 0, 0);
INSERT INTO world.arena_leagues (Id, LeagueId, NameId, OrnamentId, Icon, Illus, IsLastLeague, Name, TypeId, NextLeagueId) VALUES (38, 45, 766817, 131, 'icon_kolizeum06', 'tx_illu_arena_06', 0, 'Diamant IV', 0, 0);
INSERT INTO world.arena_leagues (Id, LeagueId, NameId, OrnamentId, Icon, Illus, IsLastLeague, Name, TypeId, NextLeagueId) VALUES (39, 46, 766819, 131, 'icon_kolizeum06', 'tx_illu_arena_06', 0, 'Diamant V', 0, 0);
INSERT INTO world.arena_leagues (Id, LeagueId, NameId, OrnamentId, Icon, Illus, IsLastLeague, Name, TypeId, NextLeagueId) VALUES (40, 47, 766821, 132, 'icon_kolizeum07', 'tx_illu_arena_07', 1, 'Légende', 0, 0);
INSERT INTO world.arena_leagues (Id, LeagueId, NameId, OrnamentId, Icon, Illus, IsLastLeague, Name, TypeId, NextLeagueId) VALUES (41, 48, 766854, 129, 'icon_kolizeum04', 'tx_illu_arena_04', 0, 'Or IX', 0, 0);