create table mounts_items
(
    Id                int auto_increment
        primary key,
    ItemId            int      not null,
    Stack             int      not null,
    SerializedEffects longblob null,
    MountId           int      not null
)
    charset = latin1;

