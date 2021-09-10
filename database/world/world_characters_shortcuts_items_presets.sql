create table characters_shortcuts_items_presets
(
    PresetId int not null,
    Id       int auto_increment
        primary key,
    OwnerId  int not null,
    Slot     int not null
)
    engine = MyISAM
    charset = utf8;

create index OwnerId
    on characters_shortcuts_items_presets (OwnerId);

