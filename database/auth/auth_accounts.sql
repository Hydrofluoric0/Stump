create table accounts
(
    Id                  int auto_increment
        primary key,
    Login               mediumtext                            not null,
    PasswordHash        mediumtext                            not null,
    Nickname            mediumtext                            not null,
    Role                int         default 1                 null,
    CharactersCount     int         default 0                 null,
    Ticket              mediumtext                            null,
    SecretQuestion      mediumtext                            not null,
    SecretAnswer        mediumtext                            not null,
    last_ip_web         mediumtext                            null,
    Lang                mediumtext                            not null,
    Email               mediumtext                            null,
    CreationDate        datetime    default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP,
    Tokens              int                                   null,
    NewTokens           int         default 0                 not null,
    Time                varchar(25) default '0'               not null,
    LastConnection      datetime                              null,
    LastConnectedIp     mediumtext                            null,
    LastClientKey       mediumtext                            null,
    LastConnectionWorld int                                   null,
    SubscriptionEnd     datetime(4)                           null on update CURRENT_TIMESTAMP(4),
    IsJailed            tinyint                               not null,
    IsBanned            tinyint                               not null,
    BanReason           mediumtext                            null,
    BanEndDate          datetime                              null,
    BannerAccountId     int                                   null,
    LastVote            varchar(255)                          null,
    LastHardwareId      text                                  null
)
    engine = MyISAM
    charset = utf8;

INSERT INTO auth.accounts (Id, Login, PasswordHash, Nickname, Role, CharactersCount, Ticket, SecretQuestion, SecretAnswer, last_ip_web, Lang, Email, CreationDate, Tokens, NewTokens, Time, LastConnection, LastConnectedIp, LastClientKey, LastConnectionWorld, SubscriptionEnd, IsJailed, IsBanned, BanReason, BanEndDate, BannerAccountId, LastVote, LastHardwareId) VALUES (9, 'test', '098f6bcd4621d373cade4e832627b4f6', 'test', 5, 0, 'HXORHTRLBFOBWFMQWLQONNFTZLTRJKQD', 'dummy?', 'dummy!', null, 'fr', '', '0001-01-01 00:00:00', 0, 0, '0', '2021-09-10 09:51:31', '127.0.0.1', null, 1, '0001-01-01 00:00:00', 0, 0, null, null, null, null, '362a35c24fad2242c40be90de6e113e5');