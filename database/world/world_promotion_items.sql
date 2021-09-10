create table promotion_items
(
    Id     int auto_increment
        primary key,
    ItemId int not null
)
    engine = MyISAM
    charset = utf8;

INSERT INTO world.promotion_items (Id, ItemId) VALUES (1, 12124);
INSERT INTO world.promotion_items (Id, ItemId) VALUES (2, 1575);
INSERT INTO world.promotion_items (Id, ItemId) VALUES (3, 7113);