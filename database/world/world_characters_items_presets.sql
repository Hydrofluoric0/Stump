create table characters_items_presets
(
    Id                int auto_increment
        primary key,
    PresetId          int      not null,
    OwnerId           int      not null,
    SymbolId          int      not null,
    SerializedObjects longblob null
)
    engine = MyISAM
    charset = utf8;

create index OwnerId
    on characters_items_presets (OwnerId);

