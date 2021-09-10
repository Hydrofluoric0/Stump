create table world_worldmaps
(
    Id                 int          not null
        primary key,
    OrigineX           int          not null,
    OrigineY           int          not null,
    MapWidth           float(16, 2) not null,
    MapHeight          float(16, 2) not null,
    HorizontalChunck   int unsigned not null,
    VerticalChunck     int unsigned not null,
    ViewableEverywhere tinyint      not null,
    MinScale           float(16, 2) not null,
    MaxScale           float(16, 2) not null,
    StartScale         float(16, 2) not null,
    CenterX            int          not null,
    CenterY            int          not null,
    TotalWidth         int          not null,
    TotalHeight        int          not null
)
    engine = MyISAM
    charset = utf8;

INSERT INTO world.world_worldmaps (Id, OrigineX, OrigineY, MapWidth, MapHeight, HorizontalChunck, VerticalChunck, ViewableEverywhere, MinScale, MaxScale, StartScale, CenterX, CenterY, TotalWidth, TotalHeight) VALUES (1, 6480, 4944, 69.5, 49.7, 0, 0, 1, 0.2, 1, 0.6, 0, 0, 10000, 8000);
INSERT INTO world.world_worldmaps (Id, OrigineX, OrigineY, MapWidth, MapHeight, HorizontalChunck, VerticalChunck, ViewableEverywhere, MinScale, MaxScale, StartScale, CenterX, CenterY, TotalWidth, TotalHeight) VALUES (2, 1800, 1940, 380, 260, 0, 0, 1, 0.25, 1, 0.25, 0, 0, 4750, 3904);
INSERT INTO world.world_worldmaps (Id, OrigineX, OrigineY, MapWidth, MapHeight, HorizontalChunck, VerticalChunck, ViewableEverywhere, MinScale, MaxScale, StartScale, CenterX, CenterY, TotalWidth, TotalHeight) VALUES (3, -117, 1827, 117, 87, 0, 0, 1, 0.9, 1, 1, 0, 0, 2463, 2907);
INSERT INTO world.world_worldmaps (Id, OrigineX, OrigineY, MapWidth, MapHeight, HorizontalChunck, VerticalChunck, ViewableEverywhere, MinScale, MaxScale, StartScale, CenterX, CenterY, TotalWidth, TotalHeight) VALUES (4, 9130, 2980, 210, 150, 0, 0, 1, 0.37, 1, 1, 0, 0, 2463, 1820);
INSERT INTO world.world_worldmaps (Id, OrigineX, OrigineY, MapWidth, MapHeight, HorizontalChunck, VerticalChunck, ViewableEverywhere, MinScale, MaxScale, StartScale, CenterX, CenterY, TotalWidth, TotalHeight) VALUES (5, 900, -4330, 211, 150, 0, 0, 1, 0.35, 1, 1, 0, 0, 3200, 2000);
INSERT INTO world.world_worldmaps (Id, OrigineX, OrigineY, MapWidth, MapHeight, HorizontalChunck, VerticalChunck, ViewableEverywhere, MinScale, MaxScale, StartScale, CenterX, CenterY, TotalWidth, TotalHeight) VALUES (6, 3770, 9900, 210, 150, 0, 0, 1, 0.37, 1, 1, 0, 0, 2100, 2100);
INSERT INTO world.world_worldmaps (Id, OrigineX, OrigineY, MapWidth, MapHeight, HorizontalChunck, VerticalChunck, ViewableEverywhere, MinScale, MaxScale, StartScale, CenterX, CenterY, TotalWidth, TotalHeight) VALUES (7, 17214, 11845, 210, 150, 0, 0, 1, 0.5, 1, 1, 0, 0, 1800, 1400);
INSERT INTO world.world_worldmaps (Id, OrigineX, OrigineY, MapWidth, MapHeight, HorizontalChunck, VerticalChunck, ViewableEverywhere, MinScale, MaxScale, StartScale, CenterX, CenterY, TotalWidth, TotalHeight) VALUES (8, 7870, 9300, 210, 151, 0, 0, 1, 0.31, 1, 1, 0, 0, 3088, 2282);
INSERT INTO world.world_worldmaps (Id, OrigineX, OrigineY, MapWidth, MapHeight, HorizontalChunck, VerticalChunck, ViewableEverywhere, MinScale, MaxScale, StartScale, CenterX, CenterY, TotalWidth, TotalHeight) VALUES (9, 6415, -4255, 210, 151, 0, 0, 1, 0.34, 1, 1, 0, 0, 2772, 2049);
INSERT INTO world.world_worldmaps (Id, OrigineX, OrigineY, MapWidth, MapHeight, HorizontalChunck, VerticalChunck, ViewableEverywhere, MinScale, MaxScale, StartScale, CenterX, CenterY, TotalWidth, TotalHeight) VALUES (10, 12855, -1225, 209, 150, 0, 0, 1, 0.25, 1, 1, 0, 0, 3559, 2804);
INSERT INTO world.world_worldmaps (Id, OrigineX, OrigineY, MapWidth, MapHeight, HorizontalChunck, VerticalChunck, ViewableEverywhere, MinScale, MaxScale, StartScale, CenterX, CenterY, TotalWidth, TotalHeight) VALUES (11, 0, 0, 207, 148, 0, 0, 0, 0.45, 1, 1, 0, 0, 2120, 1530);
INSERT INTO world.world_worldmaps (Id, OrigineX, OrigineY, MapWidth, MapHeight, HorizontalChunck, VerticalChunck, ViewableEverywhere, MinScale, MaxScale, StartScale, CenterX, CenterY, TotalWidth, TotalHeight) VALUES (12, 6882, 6108, 91.5, 65.5, 0, 0, 1, 0.5, 1, 0.5, 0, 0, 2500, 1904);
INSERT INTO world.world_worldmaps (Id, OrigineX, OrigineY, MapWidth, MapHeight, HorizontalChunck, VerticalChunck, ViewableEverywhere, MinScale, MaxScale, StartScale, CenterX, CenterY, TotalWidth, TotalHeight) VALUES (13, 2678, 1925, 204, 147, 0, 0, 0, 0.5, 1, 0.5, 0, 0, 4089, 2589);
INSERT INTO world.world_worldmaps (Id, OrigineX, OrigineY, MapWidth, MapHeight, HorizontalChunck, VerticalChunck, ViewableEverywhere, MinScale, MaxScale, StartScale, CenterX, CenterY, TotalWidth, TotalHeight) VALUES (14, 1050, 1440, 204, 147, 0, 0, 0, 0.25, 1, 0.5, 0, 0, 4750, 3904);
INSERT INTO world.world_worldmaps (Id, OrigineX, OrigineY, MapWidth, MapHeight, HorizontalChunck, VerticalChunck, ViewableEverywhere, MinScale, MaxScale, StartScale, CenterX, CenterY, TotalWidth, TotalHeight) VALUES (15, 1248, 1543, 204, 147, 0, 0, 0, 0.25, 1, 0.5, 0, 0, 4171, 3576);
INSERT INTO world.world_worldmaps (Id, OrigineX, OrigineY, MapWidth, MapHeight, HorizontalChunck, VerticalChunck, ViewableEverywhere, MinScale, MaxScale, StartScale, CenterX, CenterY, TotalWidth, TotalHeight) VALUES (16, 3200, 4200, 203, 146, 0, 0, 0, 0.25, 1, 0.5, 0, 0, 5069, 5584);
INSERT INTO world.world_worldmaps (Id, OrigineX, OrigineY, MapWidth, MapHeight, HorizontalChunck, VerticalChunck, ViewableEverywhere, MinScale, MaxScale, StartScale, CenterX, CenterY, TotalWidth, TotalHeight) VALUES (17, -1810, -2950, 150, 122, 0, 0, 0, 0.37, 1, 1, 0, 0, 3333, 1719);
INSERT INTO world.world_worldmaps (Id, OrigineX, OrigineY, MapWidth, MapHeight, HorizontalChunck, VerticalChunck, ViewableEverywhere, MinScale, MaxScale, StartScale, CenterX, CenterY, TotalWidth, TotalHeight) VALUES (18, -3000, 17820, 415, 225, 0, 0, 0, 0.37, 1, 1, 0, 0, 3529, 2357);
INSERT INTO world.world_worldmaps (Id, OrigineX, OrigineY, MapWidth, MapHeight, HorizontalChunck, VerticalChunck, ViewableEverywhere, MinScale, MaxScale, StartScale, CenterX, CenterY, TotalWidth, TotalHeight) VALUES (19, 0, 0, 91.5, 65.5, 0, 0, 0, 0.5, 1, 0.5, 0, 0, 2500, 1904);
INSERT INTO world.world_worldmaps (Id, OrigineX, OrigineY, MapWidth, MapHeight, HorizontalChunck, VerticalChunck, ViewableEverywhere, MinScale, MaxScale, StartScale, CenterX, CenterY, TotalWidth, TotalHeight) VALUES (20, 8385, 10700, 150, 122, 0, 0, 0, 0.37, 1, 1, 0, 0, 3333, 1719);
INSERT INTO world.world_worldmaps (Id, OrigineX, OrigineY, MapWidth, MapHeight, HorizontalChunck, VerticalChunck, ViewableEverywhere, MinScale, MaxScale, StartScale, CenterX, CenterY, TotalWidth, TotalHeight) VALUES (21, 2268, 2565, 286, 205, 0, 0, 0, 0.25, 1, 0.5, 0, 0, 3560, 2802);