create table bidhouse_items
(
    OwnerId           int          not null,
    Price             int unsigned not null,
    Sold              tinyint      not null,
    SellDate          datetime     not null,
    ItemId            int          not null,
    Stack             int unsigned not null,
    SerializedEffects longblob     null,
    Id                int          not null
        primary key
)
    engine = MyISAM
    charset = utf8;

INSERT INTO world.bidhouse_items (OwnerId, Price, Sold, SellDate, ItemId, Stack, SerializedEffects, Id) VALUES (1026, 2000, 1, '2021-04-14 18:57:43', 19622, 10, 0x06438A0004000000, 1);
INSERT INTO world.bidhouse_items (OwnerId, Price, Sold, SellDate, ItemId, Stack, SerializedEffects, Id) VALUES (1026, 2000, 1, '2021-04-14 18:57:52', 19622, 10, 0x06438A0003000000, 2);
INSERT INTO world.bidhouse_items (OwnerId, Price, Sold, SellDate, ItemId, Stack, SerializedEffects, Id) VALUES (1058, 10000000, 1, '2021-04-17 12:36:02', 15182, 10, 0x, 3);
INSERT INTO world.bidhouse_items (OwnerId, Price, Sold, SellDate, ItemId, Stack, SerializedEffects, Id) VALUES (1058, 10000000, 1, '2021-04-17 12:36:02', 15182, 10, 0x, 4);
INSERT INTO world.bidhouse_items (OwnerId, Price, Sold, SellDate, ItemId, Stack, SerializedEffects, Id) VALUES (1058, 10000000, 1, '2021-04-17 12:36:03', 15182, 10, 0x, 5);
INSERT INTO world.bidhouse_items (OwnerId, Price, Sold, SellDate, ItemId, Stack, SerializedEffects, Id) VALUES (1058, 10000000, 1, '2021-04-17 12:36:03', 15182, 10, 0x, 6);
INSERT INTO world.bidhouse_items (OwnerId, Price, Sold, SellDate, ItemId, Stack, SerializedEffects, Id) VALUES (1058, 10000000, 1, '2021-04-17 12:36:03', 15182, 10, 0x, 7);
INSERT INTO world.bidhouse_items (OwnerId, Price, Sold, SellDate, ItemId, Stack, SerializedEffects, Id) VALUES (1058, 10000000, 1, '2021-04-17 12:36:04', 15182, 10, 0x, 8);
INSERT INTO world.bidhouse_items (OwnerId, Price, Sold, SellDate, ItemId, Stack, SerializedEffects, Id) VALUES (1058, 10000000, 1, '2021-04-17 12:36:04', 15182, 10, 0x, 9);
INSERT INTO world.bidhouse_items (OwnerId, Price, Sold, SellDate, ItemId, Stack, SerializedEffects, Id) VALUES (1058, 10000000, 1, '2021-04-17 12:36:05', 15182, 10, 0x, 10);
INSERT INTO world.bidhouse_items (OwnerId, Price, Sold, SellDate, ItemId, Stack, SerializedEffects, Id) VALUES (1013, 50000, 1, '2021-04-21 00:25:46', 12738, 1, 0x, 11);
INSERT INTO world.bidhouse_items (OwnerId, Price, Sold, SellDate, ItemId, Stack, SerializedEffects, Id) VALUES (1013, 50000, 1, '2021-04-21 00:25:46', 12738, 1, 0x, 12);
INSERT INTO world.bidhouse_items (OwnerId, Price, Sold, SellDate, ItemId, Stack, SerializedEffects, Id) VALUES (1013, 50000, 1, '2021-04-21 00:25:48', 12738, 1, 0x, 13);
INSERT INTO world.bidhouse_items (OwnerId, Price, Sold, SellDate, ItemId, Stack, SerializedEffects, Id) VALUES (1013, 50000, 1, '2021-04-21 00:25:48', 12738, 1, 0x, 14);
INSERT INTO world.bidhouse_items (OwnerId, Price, Sold, SellDate, ItemId, Stack, SerializedEffects, Id) VALUES (1013, 50000, 1, '2021-04-21 00:26:21', 12738, 1, 0x, 15);
INSERT INTO world.bidhouse_items (OwnerId, Price, Sold, SellDate, ItemId, Stack, SerializedEffects, Id) VALUES (1013, 50000, 1, '2021-04-21 00:26:28', 12738, 1, 0x, 16);
INSERT INTO world.bidhouse_items (OwnerId, Price, Sold, SellDate, ItemId, Stack, SerializedEffects, Id) VALUES (1013, 500000, 1, '2021-04-21 00:31:15', 12738, 10, 0x, 17);
INSERT INTO world.bidhouse_items (OwnerId, Price, Sold, SellDate, ItemId, Stack, SerializedEffects, Id) VALUES (1013, 500000, 1, '2021-04-21 00:31:16', 12738, 10, 0x, 18);
INSERT INTO world.bidhouse_items (OwnerId, Price, Sold, SellDate, ItemId, Stack, SerializedEffects, Id) VALUES (1013, 500000, 1, '2021-04-21 00:31:16', 12738, 10, 0x, 19);
INSERT INTO world.bidhouse_items (OwnerId, Price, Sold, SellDate, ItemId, Stack, SerializedEffects, Id) VALUES (1013, 500000, 1, '2021-04-21 00:31:17', 12738, 10, 0x, 20);
INSERT INTO world.bidhouse_items (OwnerId, Price, Sold, SellDate, ItemId, Stack, SerializedEffects, Id) VALUES (1013, 500000, 1, '2021-04-21 00:31:17', 12738, 10, 0x, 21);
INSERT INTO world.bidhouse_items (OwnerId, Price, Sold, SellDate, ItemId, Stack, SerializedEffects, Id) VALUES (1013, 500000, 1, '2021-04-21 00:31:18', 12738, 10, 0x, 22);
INSERT INTO world.bidhouse_items (OwnerId, Price, Sold, SellDate, ItemId, Stack, SerializedEffects, Id) VALUES (1013, 500000, 1, '2021-04-21 00:31:19', 12738, 10, 0x, 23);
INSERT INTO world.bidhouse_items (OwnerId, Price, Sold, SellDate, ItemId, Stack, SerializedEffects, Id) VALUES (1013, 500000, 1, '2021-04-21 00:31:19', 12738, 10, 0x, 24);