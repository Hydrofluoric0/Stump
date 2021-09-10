create table guilds
(
    Id                    int           not null
        primary key,
    CreationDate          datetime      not null,
    Name                  mediumtext    not null,
    Experience            bigint        not null,
    Boost                 int unsigned  not null,
    Prospecting           int           not null,
    Wisdom                int           not null,
    Pods                  int           not null,
    MaxTaxCollectors      int           not null,
    SpellsCSV             mediumtext    null,
    EmblemBackgroundShape smallint      not null,
    EmblemBackgroundColor int           not null,
    EmblemForegroundShape smallint      not null,
    EmblemForegroundColor int           not null,
    MotdContent           mediumtext    null,
    MotdDate              datetime      not null,
    MotdMemberId          int           not null,
    BulletinContent       mediumtext    null,
    BulletinDate          datetime      not null,
    LastNotifiedDate      datetime      not null,
    BulletinMemberId      int           not null,
    GM                    int default 0 not null
)
    engine = MyISAM
    charset = utf8;

INSERT INTO world.guilds (Id, CreationDate, Name, Experience, Boost, Prospecting, Wisdom, Pods, MaxTaxCollectors, SpellsCSV, EmblemBackgroundShape, EmblemBackgroundColor, EmblemForegroundShape, EmblemForegroundColor, MotdContent, MotdDate, MotdMemberId, BulletinContent, BulletinDate, LastNotifiedDate, BulletinMemberId, GM) VALUES (4, '2021-04-25 20:57:22', 'Pink Force', 1003388275, 500, 100, 0, 1000, 1, '0,0,0,0,0,0,0,0,0,0,0,0', 2, 16012540, 229, 16777215, null, '0001-01-01 00:00:00', 0, null, '2021-05-03 13:16:24', '2021-05-03 13:16:24', 0, 0);
INSERT INTO world.guilds (Id, CreationDate, Name, Experience, Boost, Prospecting, Wisdom, Pods, MaxTaxCollectors, SpellsCSV, EmblemBackgroundShape, EmblemBackgroundColor, EmblemForegroundShape, EmblemForegroundColor, MotdContent, MotdDate, MotdMemberId, BulletinContent, BulletinDate, LastNotifiedDate, BulletinMemberId, GM) VALUES (3, '2021-04-25 20:33:34', 'Les tigre ', 17247182, 190, 100, 0, 1000, 1, '0,0,0,0,0,0,0,0,0,0,0,0', 9, 8158076, 205, 16187397, null, '0001-01-01 00:00:00', 0, null, '2021-04-25 20:33:34', '2021-04-25 20:33:34', 0, 0);
INSERT INTO world.guilds (Id, CreationDate, Name, Experience, Boost, Prospecting, Wisdom, Pods, MaxTaxCollectors, SpellsCSV, EmblemBackgroundShape, EmblemBackgroundColor, EmblemForegroundShape, EmblemForegroundColor, MotdContent, MotdDate, MotdMemberId, BulletinContent, BulletinDate, LastNotifiedDate, BulletinMemberId, GM) VALUES (2, '2021-04-25 19:17:47', '[STAFF]', 8495339558, 0, 9000, 8000, 1000, 3, '5,5,5,5,5,5,5,5,5,5,4,0', 8, 16777215, 219, 0, null, '0001-01-01 00:00:00', 0, null, '2021-05-03 19:13:57', '2021-05-03 19:13:57', 0, 5);
INSERT INTO world.guilds (Id, CreationDate, Name, Experience, Boost, Prospecting, Wisdom, Pods, MaxTaxCollectors, SpellsCSV, EmblemBackgroundShape, EmblemBackgroundColor, EmblemForegroundShape, EmblemForegroundColor, MotdContent, MotdDate, MotdMemberId, BulletinContent, BulletinDate, LastNotifiedDate, BulletinMemberId, GM) VALUES (7, '2021-04-27 06:16:01', 'VanityFair', 2470187129, 620, 100, 0, 1000, 1, '0,0,0,0,0,0,0,0,0,0,0,0', 8, 1449409, 63, 16372365, null, '0001-01-01 00:00:00', 0, null, '2021-05-03 19:13:57', '2021-05-03 19:13:57', 0, 0);
INSERT INTO world.guilds (Id, CreationDate, Name, Experience, Boost, Prospecting, Wisdom, Pods, MaxTaxCollectors, SpellsCSV, EmblemBackgroundShape, EmblemBackgroundColor, EmblemForegroundShape, EmblemForegroundColor, MotdContent, MotdDate, MotdMemberId, BulletinContent, BulletinDate, LastNotifiedDate, BulletinMemberId, GM) VALUES (6, '2021-04-27 01:19:33', 'On termine le ladder et vous ?', 3960150411, 695, 100, 0, 1000, 1, '0,0,0,0,0,0,0,0,0,0,0,0', 1, 0, 234, 9540020, 'On domine le ladder et vous ?', '2021-04-27 15:46:18', 1547, null, '2021-05-03 19:13:57', '2021-05-03 19:13:57', 0, 0);
INSERT INTO world.guilds (Id, CreationDate, Name, Experience, Boost, Prospecting, Wisdom, Pods, MaxTaxCollectors, SpellsCSV, EmblemBackgroundShape, EmblemBackgroundColor, EmblemForegroundShape, EmblemForegroundColor, MotdContent, MotdDate, MotdMemberId, BulletinContent, BulletinDate, LastNotifiedDate, BulletinMemberId, GM) VALUES (9, '2021-04-27 10:17:32', 'The-Dimension-Pulverizer', 1693649613, 10, 100, 215, 1000, 5, '5,5,5,5,5,5,5,5,5,5,5,5', 26, 0, 69, 1554293, 'Salut la guilde ! Boubou a des problème de connexion il ne pourras donc pas jouer pendant 2 a 3 jours il reviendra en force ne vous inquiétez pas  :) Et n''oubliez pas que c''est moi, Jokedas, le meilleur. Je vous aime <3', '2021-05-03 07:08:48', 1945, null, '2021-05-03 19:13:57', '2021-05-03 19:13:57', 0, 0);
INSERT INTO world.guilds (Id, CreationDate, Name, Experience, Boost, Prospecting, Wisdom, Pods, MaxTaxCollectors, SpellsCSV, EmblemBackgroundShape, EmblemBackgroundColor, EmblemForegroundShape, EmblemForegroundColor, MotdContent, MotdDate, MotdMemberId, BulletinContent, BulletinDate, LastNotifiedDate, BulletinMemberId, GM) VALUES (10, '2021-04-27 17:13:25', 'Eclipse', 2370586520, 615, 100, 0, 1000, 1, '0,0,0,0,0,0,0,0,0,0,0,0', 8, 2302831, 17, 16777215, 'Objectif: Premier ladder...', '2021-05-02 14:25:19', 1553, null, '2021-05-03 17:40:01', '2021-05-03 17:40:01', 0, 0);