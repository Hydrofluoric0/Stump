create table ci_sessions
(
    session_id    varchar(40)  default '0' not null
        primary key,
    ip_address    varchar(64)  default '0' not null,
    user_agent    varchar(120)             null,
    last_activity int unsigned default '0' not null,
    user_data     text                     not null
)
    engine = MyISAM
    charset = latin1;

create index last_activity_idx
    on ci_sessions (last_activity);

