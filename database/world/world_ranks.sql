create table ranks
(
    RankId    int auto_increment
        primary key,
    RankName  varchar(255) null,
    RankExp   int          null,
    RankBonus int          null
)
    charset = latin1;

INSERT INTO world.ranks (RankId, RankName, RankExp, RankBonus) VALUES (1, 'Piou aigri', 0, 20);
INSERT INTO world.ranks (RankId, RankName, RankExp, RankBonus) VALUES (2, 'Bouftou puéril', 270, 27);
INSERT INTO world.ranks (RankId, RankName, RankExp, RankBonus) VALUES (3, 'Tofu éléctrique', 640, 32);
INSERT INTO world.ranks (RankId, RankName, RankExp, RankBonus) VALUES (4, 'Wabbit cawotteur', 1110, 37);
INSERT INTO world.ranks (RankId, RankName, RankExp, RankBonus) VALUES (5, 'Scarafeuille remonté', 2250, 45);
INSERT INTO world.ranks (RankId, RankName, RankExp, RankBonus) VALUES (6, 'Kanigrou mielleux', 6000, 60);