create table guild_members
(
    CharacterId     int      not null
        primary key,
    AccountId       int      not null,
    GuildId         int      not null,
    RankId          smallint not null,
    Rights          int      not null,
    GivenExperience bigint   not null,
    GivenPercent    tinyint  not null
)
    engine = MyISAM
    charset = utf8;

create index GuildId
    on guild_members (GuildId);

INSERT INTO world.guild_members (CharacterId, AccountId, GuildId, RankId, Rights, GivenExperience, GivenPercent) VALUES (1689, 1275, 4, 2, 522238, 135106623, 10);
INSERT INTO world.guild_members (CharacterId, AccountId, GuildId, RankId, Rights, GivenExperience, GivenPercent) VALUES (1703, 1274, 4, 1, 1, 310724979, 1);
INSERT INTO world.guild_members (CharacterId, AccountId, GuildId, RankId, Rights, GivenExperience, GivenPercent) VALUES (1740, 1338, 3, 2, 522238, 3858647, 5);
INSERT INTO world.guild_members (CharacterId, AccountId, GuildId, RankId, Rights, GivenExperience, GivenPercent) VALUES (1738, 1336, 3, 2, 522238, 3751018, 5);
INSERT INTO world.guild_members (CharacterId, AccountId, GuildId, RankId, Rights, GivenExperience, GivenPercent) VALUES (1739, 1337, 3, 2, 522238, 3850370, 5);
INSERT INTO world.guild_members (CharacterId, AccountId, GuildId, RankId, Rights, GivenExperience, GivenPercent) VALUES (1642, 1211, 3, 1, 1, 5787147, 5);
INSERT INTO world.guild_members (CharacterId, AccountId, GuildId, RankId, Rights, GivenExperience, GivenPercent) VALUES (1543, 1144, 2, 2, 522238, 69755297, 90);
INSERT INTO world.guild_members (CharacterId, AccountId, GuildId, RankId, Rights, GivenExperience, GivenPercent) VALUES (1768, 1294, 2, 34, 522238, 40309555, 90);
INSERT INTO world.guild_members (CharacterId, AccountId, GuildId, RankId, Rights, GivenExperience, GivenPercent) VALUES (1936, 1470, 9, 0, 0, 0, 0);
INSERT INTO world.guild_members (CharacterId, AccountId, GuildId, RankId, Rights, GivenExperience, GivenPercent) VALUES (1840, 1405, 6, 2, 522238, 312211740, 1);
INSERT INTO world.guild_members (CharacterId, AccountId, GuildId, RankId, Rights, GivenExperience, GivenPercent) VALUES (1633, 1237, 7, 14, 0, 254615165, 1);
INSERT INTO world.guild_members (CharacterId, AccountId, GuildId, RankId, Rights, GivenExperience, GivenPercent) VALUES (1547, 1152, 6, 1, 1, 535600007, 0);
INSERT INTO world.guild_members (CharacterId, AccountId, GuildId, RankId, Rights, GivenExperience, GivenPercent) VALUES (1838, 1406, 6, 2, 4, 737292650, 1);
INSERT INTO world.guild_members (CharacterId, AccountId, GuildId, RankId, Rights, GivenExperience, GivenPercent) VALUES (1842, 1239, 7, 14, 0, 196089266, 1);
INSERT INTO world.guild_members (CharacterId, AccountId, GuildId, RankId, Rights, GivenExperience, GivenPercent) VALUES (1535, 1134, 6, 0, 0, 112045748, 1);
INSERT INTO world.guild_members (CharacterId, AccountId, GuildId, RankId, Rights, GivenExperience, GivenPercent) VALUES (1812, 1387, 4, 9, 264, 6239031, 1);
INSERT INTO world.guild_members (CharacterId, AccountId, GuildId, RankId, Rights, GivenExperience, GivenPercent) VALUES (1852, 1417, 7, 1, 1, 690390791, 1);
INSERT INTO world.guild_members (CharacterId, AccountId, GuildId, RankId, Rights, GivenExperience, GivenPercent) VALUES (1668, 1270, 7, 0, 0, 145387431, 1);
INSERT INTO world.guild_members (CharacterId, AccountId, GuildId, RankId, Rights, GivenExperience, GivenPercent) VALUES (1853, 1416, 7, 2, 4, 79864787, 1);
INSERT INTO world.guild_members (CharacterId, AccountId, GuildId, RankId, Rights, GivenExperience, GivenPercent) VALUES (1854, 1418, 7, 0, 0, 10375894, 1);
INSERT INTO world.guild_members (CharacterId, AccountId, GuildId, RankId, Rights, GivenExperience, GivenPercent) VALUES (1804, 1380, 7, 0, 0, 20271328, 1);
INSERT INTO world.guild_members (CharacterId, AccountId, GuildId, RankId, Rights, GivenExperience, GivenPercent) VALUES (1802, 1245, 7, 0, 0, 46306492, 1);
INSERT INTO world.guild_members (CharacterId, AccountId, GuildId, RankId, Rights, GivenExperience, GivenPercent) VALUES (1803, 1379, 7, 0, 0, 40806882, 1);
INSERT INTO world.guild_members (CharacterId, AccountId, GuildId, RankId, Rights, GivenExperience, GivenPercent) VALUES (1869, 1428, 7, 0, 4, 36250083, 1);
INSERT INTO world.guild_members (CharacterId, AccountId, GuildId, RankId, Rights, GivenExperience, GivenPercent) VALUES (1873, 1432, 7, 0, 4, 47321559, 1);
INSERT INTO world.guild_members (CharacterId, AccountId, GuildId, RankId, Rights, GivenExperience, GivenPercent) VALUES (2057, 1572, 2, 34, 522238, 0, 0);
INSERT INTO world.guild_members (CharacterId, AccountId, GuildId, RankId, Rights, GivenExperience, GivenPercent) VALUES (1635, 1241, 7, 0, 0, 58292006, 1);
INSERT INTO world.guild_members (CharacterId, AccountId, GuildId, RankId, Rights, GivenExperience, GivenPercent) VALUES (1630, 1222, 10, 28, 496008, 8500000, 30);
INSERT INTO world.guild_members (CharacterId, AccountId, GuildId, RankId, Rights, GivenExperience, GivenPercent) VALUES (1628, 1221, 10, 8, 463240, 9500000, 10);
INSERT INTO world.guild_members (CharacterId, AccountId, GuildId, RankId, Rights, GivenExperience, GivenPercent) VALUES (1598, 1205, 9, 1, 1, 130684637, 5);
INSERT INTO world.guild_members (CharacterId, AccountId, GuildId, RankId, Rights, GivenExperience, GivenPercent) VALUES (1599, 1206, 9, 4, 264, 40347548, 5);
INSERT INTO world.guild_members (CharacterId, AccountId, GuildId, RankId, Rights, GivenExperience, GivenPercent) VALUES (1544, 1145, 9, 8, 264, 77302346, 1);
INSERT INTO world.guild_members (CharacterId, AccountId, GuildId, RankId, Rights, GivenExperience, GivenPercent) VALUES (1868, 1427, 4, 9, 264, 103973785, 1);
INSERT INTO world.guild_members (CharacterId, AccountId, GuildId, RankId, Rights, GivenExperience, GivenPercent) VALUES (1841, 1407, 9, 27, 264, 20499146, 0);
INSERT INTO world.guild_members (CharacterId, AccountId, GuildId, RankId, Rights, GivenExperience, GivenPercent) VALUES (1902, 1445, 7, 0, 0, 0, 0);
INSERT INTO world.guild_members (CharacterId, AccountId, GuildId, RankId, Rights, GivenExperience, GivenPercent) VALUES (1781, 1365, 9, 5, 264, 70261347, 5);
INSERT INTO world.guild_members (CharacterId, AccountId, GuildId, RankId, Rights, GivenExperience, GivenPercent) VALUES (1865, 1411, 9, 4, 264, 72833331, 5);
INSERT INTO world.guild_members (CharacterId, AccountId, GuildId, RankId, Rights, GivenExperience, GivenPercent) VALUES (1870, 1396, 9, 31, 264, 1000000, 5);
INSERT INTO world.guild_members (CharacterId, AccountId, GuildId, RankId, Rights, GivenExperience, GivenPercent) VALUES (1898, 1444, 7, 0, 0, 0, 0);
INSERT INTO world.guild_members (CharacterId, AccountId, GuildId, RankId, Rights, GivenExperience, GivenPercent) VALUES (1894, 1438, 9, 10, 264, 150245132, 5);
INSERT INTO world.guild_members (CharacterId, AccountId, GuildId, RankId, Rights, GivenExperience, GivenPercent) VALUES (1908, 1446, 7, 0, 0, 169286612, 1);
INSERT INTO world.guild_members (CharacterId, AccountId, GuildId, RankId, Rights, GivenExperience, GivenPercent) VALUES (1892, 1429, 4, 24, 264, 134623532, 1);
INSERT INTO world.guild_members (CharacterId, AccountId, GuildId, RankId, Rights, GivenExperience, GivenPercent) VALUES (1923, 1462, 10, 22, 340360, 128674089, 10);
INSERT INTO world.guild_members (CharacterId, AccountId, GuildId, RankId, Rights, GivenExperience, GivenPercent) VALUES (1912, 1455, 7, 0, 0, 0, 0);
INSERT INTO world.guild_members (CharacterId, AccountId, GuildId, RankId, Rights, GivenExperience, GivenPercent) VALUES (1553, 1155, 10, 2, 522238, 309808768, 10);
INSERT INTO world.guild_members (CharacterId, AccountId, GuildId, RankId, Rights, GivenExperience, GivenPercent) VALUES (1691, 1295, 10, 1, 1, 381785156, 10);
INSERT INTO world.guild_members (CharacterId, AccountId, GuildId, RankId, Rights, GivenExperience, GivenPercent) VALUES (1645, 1246, 10, 2, 522238, 263172408, 10);
INSERT INTO world.guild_members (CharacterId, AccountId, GuildId, RankId, Rights, GivenExperience, GivenPercent) VALUES (1758, 1349, 10, 14, 264, 0, 0);
INSERT INTO world.guild_members (CharacterId, AccountId, GuildId, RankId, Rights, GivenExperience, GivenPercent) VALUES (1831, 1395, 10, 14, 264, 0, 0);
INSERT INTO world.guild_members (CharacterId, AccountId, GuildId, RankId, Rights, GivenExperience, GivenPercent) VALUES (1627, 1218, 10, 33, 463240, 9504253, 10);
INSERT INTO world.guild_members (CharacterId, AccountId, GuildId, RankId, Rights, GivenExperience, GivenPercent) VALUES (1822, 1390, 9, 9, 264, 45695844, 5);
INSERT INTO world.guild_members (CharacterId, AccountId, GuildId, RankId, Rights, GivenExperience, GivenPercent) VALUES (1899, 1240, 7, 14, 0, 116256890, 1);
INSERT INTO world.guild_members (CharacterId, AccountId, GuildId, RankId, Rights, GivenExperience, GivenPercent) VALUES (1839, 1404, 10, 35, 463240, 16000000, 10);
INSERT INTO world.guild_members (CharacterId, AccountId, GuildId, RankId, Rights, GivenExperience, GivenPercent) VALUES (1653, 1254, 6, 0, 0, 141476673, 1);
INSERT INTO world.guild_members (CharacterId, AccountId, GuildId, RankId, Rights, GivenExperience, GivenPercent) VALUES (1934, 1392, 7, 2, 522238, 238996968, 1);
INSERT INTO world.guild_members (CharacterId, AccountId, GuildId, RankId, Rights, GivenExperience, GivenPercent) VALUES (1680, 1281, 9, 26, 264, 0, 0);
INSERT INTO world.guild_members (CharacterId, AccountId, GuildId, RankId, Rights, GivenExperience, GivenPercent) VALUES (1665, 1250, 9, 0, 0, 0, 0);
INSERT INTO world.guild_members (CharacterId, AccountId, GuildId, RankId, Rights, GivenExperience, GivenPercent) VALUES (1673, 1276, 9, 0, 0, 0, 0);
INSERT INTO world.guild_members (CharacterId, AccountId, GuildId, RankId, Rights, GivenExperience, GivenPercent) VALUES (1780, 1363, 9, 0, 0, 0, 0);
INSERT INTO world.guild_members (CharacterId, AccountId, GuildId, RankId, Rights, GivenExperience, GivenPercent) VALUES (1995, 1530, 9, 0, 0, 0, 0);
INSERT INTO world.guild_members (CharacterId, AccountId, GuildId, RankId, Rights, GivenExperience, GivenPercent) VALUES (1925, 1450, 7, 0, 0, 64554090, 1);
INSERT INTO world.guild_members (CharacterId, AccountId, GuildId, RankId, Rights, GivenExperience, GivenPercent) VALUES (1833, 1394, 4, 9, 264, 273321690, 1);
INSERT INTO world.guild_members (CharacterId, AccountId, GuildId, RankId, Rights, GivenExperience, GivenPercent) VALUES (1867, 1423, 2, 1, 1, 16202770, 20);
INSERT INTO world.guild_members (CharacterId, AccountId, GuildId, RankId, Rights, GivenExperience, GivenPercent) VALUES (1913, 1454, 10, 22, 340360, 95480553, 10);
INSERT INTO world.guild_members (CharacterId, AccountId, GuildId, RankId, Rights, GivenExperience, GivenPercent) VALUES (1655, 1251, 6, 0, 361864, 1368696053, 3);
INSERT INTO world.guild_members (CharacterId, AccountId, GuildId, RankId, Rights, GivenExperience, GivenPercent) VALUES (1942, 1473, 9, 0, 264, 90776214, 5);
INSERT INTO world.guild_members (CharacterId, AccountId, GuildId, RankId, Rights, GivenExperience, GivenPercent) VALUES (1817, 1376, 9, 2, 522218, 2935666, 1);
INSERT INTO world.guild_members (CharacterId, AccountId, GuildId, RankId, Rights, GivenExperience, GivenPercent) VALUES (1964, 1445, 7, 0, 0, 1796958, 1);
INSERT INTO world.guild_members (CharacterId, AccountId, GuildId, RankId, Rights, GivenExperience, GivenPercent) VALUES (1958, 1498, 10, 35, 463240, 0, 1);
INSERT INTO world.guild_members (CharacterId, AccountId, GuildId, RankId, Rights, GivenExperience, GivenPercent) VALUES (2013, 1519, 9, 27, 264, 74078277, 5);
INSERT INTO world.guild_members (CharacterId, AccountId, GuildId, RankId, Rights, GivenExperience, GivenPercent) VALUES (1957, 1497, 10, 30, 463240, 0, 1);
INSERT INTO world.guild_members (CharacterId, AccountId, GuildId, RankId, Rights, GivenExperience, GivenPercent) VALUES (1845, 1412, 9, 0, 0, 0, 0);
INSERT INTO world.guild_members (CharacterId, AccountId, GuildId, RankId, Rights, GivenExperience, GivenPercent) VALUES (1782, 1366, 9, 0, 0, 0, 0);
INSERT INTO world.guild_members (CharacterId, AccountId, GuildId, RankId, Rights, GivenExperience, GivenPercent) VALUES (1538, 1141, 9, 25, 264, 25770046, 5);
INSERT INTO world.guild_members (CharacterId, AccountId, GuildId, RankId, Rights, GivenExperience, GivenPercent) VALUES (1784, 1367, 7, 0, 0, 138075231, 1);
INSERT INTO world.guild_members (CharacterId, AccountId, GuildId, RankId, Rights, GivenExperience, GivenPercent) VALUES (1608, 1212, 7, 0, 0, 115248696, 1);
INSERT INTO world.guild_members (CharacterId, AccountId, GuildId, RankId, Rights, GivenExperience, GivenPercent) VALUES (1935, 1469, 9, 13, 264, 44963781, 5);
INSERT INTO world.guild_members (CharacterId, AccountId, GuildId, RankId, Rights, GivenExperience, GivenPercent) VALUES (1945, 1493, 9, 3, 264, 448544913, 1);
INSERT INTO world.guild_members (CharacterId, AccountId, GuildId, RankId, Rights, GivenExperience, GivenPercent) VALUES (1881, 1434, 7, 0, 0, 0, 0);
INSERT INTO world.guild_members (CharacterId, AccountId, GuildId, RankId, Rights, GivenExperience, GivenPercent) VALUES (1986, 1522, 2, 34, 522238, 0, 0);
INSERT INTO world.guild_members (CharacterId, AccountId, GuildId, RankId, Rights, GivenExperience, GivenPercent) VALUES (1981, 1519, 9, 17, 264, 0, 0);
INSERT INTO world.guild_members (CharacterId, AccountId, GuildId, RankId, Rights, GivenExperience, GivenPercent) VALUES (1984, 1521, 2, 34, 522238, 1000000, 20);
INSERT INTO world.guild_members (CharacterId, AccountId, GuildId, RankId, Rights, GivenExperience, GivenPercent) VALUES (1983, 1517, 9, 17, 264, 0, 0);
INSERT INTO world.guild_members (CharacterId, AccountId, GuildId, RankId, Rights, GivenExperience, GivenPercent) VALUES (1982, 1518, 9, 31, 264, 72869020, 5);
INSERT INTO world.guild_members (CharacterId, AccountId, GuildId, RankId, Rights, GivenExperience, GivenPercent) VALUES (1905, 1402, 9, 17, 264, 0, 0);
INSERT INTO world.guild_members (CharacterId, AccountId, GuildId, RankId, Rights, GivenExperience, GivenPercent) VALUES (1990, 1517, 9, 22, 264, 0, 1);
INSERT INTO world.guild_members (CharacterId, AccountId, GuildId, RankId, Rights, GivenExperience, GivenPercent) VALUES (1991, 1526, 4, 23, 264, 35507824, 1);
INSERT INTO world.guild_members (CharacterId, AccountId, GuildId, RankId, Rights, GivenExperience, GivenPercent) VALUES (2001, 1510, 6, 0, 0, 9215730, 1);
INSERT INTO world.guild_members (CharacterId, AccountId, GuildId, RankId, Rights, GivenExperience, GivenPercent) VALUES (2005, 1538, 9, 18, 264, 122073768, 1);
INSERT INTO world.guild_members (CharacterId, AccountId, GuildId, RankId, Rights, GivenExperience, GivenPercent) VALUES (1999, 1535, 9, 21, 264, 120583072, 1);
INSERT INTO world.guild_members (CharacterId, AccountId, GuildId, RankId, Rights, GivenExperience, GivenPercent) VALUES (2008, 1541, 9, 6, 264, 10790366, 1);
INSERT INTO world.guild_members (CharacterId, AccountId, GuildId, RankId, Rights, GivenExperience, GivenPercent) VALUES (1629, 1219, 10, 4, 471432, 12902166, 10);
INSERT INTO world.guild_members (CharacterId, AccountId, GuildId, RankId, Rights, GivenExperience, GivenPercent) VALUES (1893, 1440, 10, 28, 471432, 39188395, 1);
INSERT INTO world.guild_members (CharacterId, AccountId, GuildId, RankId, Rights, GivenExperience, GivenPercent) VALUES (1580, 1190, 10, 28, 471432, 200502, 1);
INSERT INTO world.guild_members (CharacterId, AccountId, GuildId, RankId, Rights, GivenExperience, GivenPercent) VALUES (1960, 1301, 10, 33, 463240, 3883097, 1);
INSERT INTO world.guild_members (CharacterId, AccountId, GuildId, RankId, Rights, GivenExperience, GivenPercent) VALUES (2006, 1539, 9, 0, 0, 0, 0);
INSERT INTO world.guild_members (CharacterId, AccountId, GuildId, RankId, Rights, GivenExperience, GivenPercent) VALUES (1643, 1244, 9, 0, 0, 0, 0);
INSERT INTO world.guild_members (CharacterId, AccountId, GuildId, RankId, Rights, GivenExperience, GivenPercent) VALUES (1998, 1534, 10, 35, 463240, 42043352, 10);
INSERT INTO world.guild_members (CharacterId, AccountId, GuildId, RankId, Rights, GivenExperience, GivenPercent) VALUES (2047, 1564, 10, 33, 463240, 337519, 1);
INSERT INTO world.guild_members (CharacterId, AccountId, GuildId, RankId, Rights, GivenExperience, GivenPercent) VALUES (2026, 1550, 10, 33, 463240, 7385475, 10);
INSERT INTO world.guild_members (CharacterId, AccountId, GuildId, RankId, Rights, GivenExperience, GivenPercent) VALUES (1692, 1297, 10, 2, 522238, 199297263, 10);
INSERT INTO world.guild_members (CharacterId, AccountId, GuildId, RankId, Rights, GivenExperience, GivenPercent) VALUES (1695, 1292, 10, 7, 522238, 198559966, 10);
INSERT INTO world.guild_members (CharacterId, AccountId, GuildId, RankId, Rights, GivenExperience, GivenPercent) VALUES (2038, 1556, 2, 4, 340360, 0, 0);
INSERT INTO world.guild_members (CharacterId, AccountId, GuildId, RankId, Rights, GivenExperience, GivenPercent) VALUES (1801, 1378, 2, 2, 522238, 0, 0);
INSERT INTO world.guild_members (CharacterId, AccountId, GuildId, RankId, Rights, GivenExperience, GivenPercent) VALUES (2083, 1584, 9, 10, 264, 46268358, 1);
INSERT INTO world.guild_members (CharacterId, AccountId, GuildId, RankId, Rights, GivenExperience, GivenPercent) VALUES (2056, 1570, 2, 4, 340360, 0, 0);
INSERT INTO world.guild_members (CharacterId, AccountId, GuildId, RankId, Rights, GivenExperience, GivenPercent) VALUES (2039, 1557, 2, 4, 340360, 0, 0);
INSERT INTO world.guild_members (CharacterId, AccountId, GuildId, RankId, Rights, GivenExperience, GivenPercent) VALUES (1924, 1461, 2, 2, 522238, 0, 0);
INSERT INTO world.guild_members (CharacterId, AccountId, GuildId, RankId, Rights, GivenExperience, GivenPercent) VALUES (2097, 1596, 9, 0, 0, 0, 0);
INSERT INTO world.guild_members (CharacterId, AccountId, GuildId, RankId, Rights, GivenExperience, GivenPercent) VALUES (2098, 1598, 9, 0, 0, 0, 0);
INSERT INTO world.guild_members (CharacterId, AccountId, GuildId, RankId, Rights, GivenExperience, GivenPercent) VALUES (2106, 1605, 2, 0, 0, 0, 0);
INSERT INTO world.guild_members (CharacterId, AccountId, GuildId, RankId, Rights, GivenExperience, GivenPercent) VALUES (1536, 1140, 2, 4, 471432, 0, 0);
INSERT INTO world.guild_members (CharacterId, AccountId, GuildId, RankId, Rights, GivenExperience, GivenPercent) VALUES (2085, 1586, 10, 28, 463240, 19271471, 10);