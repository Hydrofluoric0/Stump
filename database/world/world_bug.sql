create table bug
(
    Id           int auto_increment
        primary key,
    OwnerName    mediumtext not null,
    OwnerId      int        not null,
    OwnerAccount int        not null,
    Message      mediumtext not null,
    Time         datetime   not null
)
    engine = MyISAM
    charset = utf8;

INSERT INTO world.bug (Id, OwnerName, OwnerId, OwnerAccount, Message, Time) VALUES (12, 'Haribo', 1712, 1307, 'hello', '2021-04-25 09:41:01');
INSERT INTO world.bug (Id, OwnerName, OwnerId, OwnerAccount, Message, Time) VALUES (11, 'Equinox', 1542, 1142, 'le mob "Arapex" du donjon Nyée afk quand on est trop loin de lui', '2021-04-24 04:18:25');
INSERT INTO world.bug (Id, OwnerName, OwnerId, OwnerAccount, Message, Time) VALUES (10, 'Equinox', 1542, 1142, '￼ encore en shop', '2021-04-24 03:40:18');
INSERT INTO world.bug (Id, OwnerName, OwnerId, OwnerAccount, Message, Time) VALUES (13, 'Orivuwuc', 2017, 1546, 'probleme de sort impposible de glisser', '2021-04-30 13:47:04');
INSERT INTO world.bug (Id, OwnerName, OwnerId, OwnerAccount, Message, Time) VALUES (14, 'Tagzz', 1998, 1534, 'je peux plus bouger dans la map je suis en salle donjon', '2021-05-01 17:51:17');