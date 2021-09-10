create table spells_bombs
(
    Id                   int not null
        primary key,
    ChainReactionSpellId int not null,
    ExplodSpellId        int not null,
    WallId               int not null,
    InstantSpellId       int not null,
    ComboCoeff           int not null
)
    engine = MyISAM
    charset = utf8;

INSERT INTO world.spells_bombs (Id, ChainReactionSpellId, ExplodSpellId, WallId, InstantSpellId, ComboCoeff) VALUES (3103, 2759, 2758, 1, 2762, 100);
INSERT INTO world.spells_bombs (Id, ChainReactionSpellId, ExplodSpellId, WallId, InstantSpellId, ComboCoeff) VALUES (3112, 2824, 2822, 2, 2823, 0);
INSERT INTO world.spells_bombs (Id, ChainReactionSpellId, ExplodSpellId, WallId, InstantSpellId, ComboCoeff) VALUES (3113, 2828, 2845, 3, 2827, 0);
INSERT INTO world.spells_bombs (Id, ChainReactionSpellId, ExplodSpellId, WallId, InstantSpellId, ComboCoeff) VALUES (3114, 2832, 2830, 4, 2831, 0);
INSERT INTO world.spells_bombs (Id, ChainReactionSpellId, ExplodSpellId, WallId, InstantSpellId, ComboCoeff) VALUES (5161, 10065, 10067, 5, 10066, 0);
INSERT INTO world.spells_bombs (Id, ChainReactionSpellId, ExplodSpellId, WallId, InstantSpellId, ComboCoeff) VALUES (5385, 402, 402, 7, 402, 0);
INSERT INTO world.spells_bombs (Id, ChainReactionSpellId, ExplodSpellId, WallId, InstantSpellId, ComboCoeff) VALUES (5386, 2828, 2845, 8, 2827, 0);