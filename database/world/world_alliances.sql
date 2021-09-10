create table alliances
(
    Id                    int        not null
        primary key,
    Owner                 int        not null,
    Name                  mediumtext not null,
    Tag                   mediumtext not null,
    CreationDate          datetime   not null,
    EmblemBackgroundShape smallint   not null,
    EmblemBackgroundColor int        not null,
    EmblemForegroundShape smallint   not null,
    EmblemForegroundColor int        not null,
    MotdContent           mediumtext null,
    MotdDate              datetime   not null,
    MotdMemberId          int        not null,
    BulletinContent       mediumtext null,
    BulletinDate          datetime   not null,
    LastNotifiedDate      datetime   not null,
    BulletinMemberId      int        not null
)
    engine = MyISAM
    charset = utf8;

