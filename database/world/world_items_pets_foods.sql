create table items_pets_foods
(
    Id            int auto_increment
        primary key,
    PetId         int not null,
    FoodType      int not null,
    FoodId        int not null,
    FoodQuantity  int not null,
    BoostedEffect int not null,
    BoostAmount   int not null
)
    engine = MyISAM
    charset = utf8;

