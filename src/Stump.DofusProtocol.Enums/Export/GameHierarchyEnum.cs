using System;

namespace Stump.DofusProtocol.Enums {
    [Flags]
    public enum GameHierarchyEnum {
        UNAVAILABLE = -1,
        PLAYER = 0,
        VIP = 10,
        GAMEMASTER_PADAWAN = 20,
        GAMEMASTER = 30,
        ADMIN = 40,
        UNKNOWN_SPECIAL_USER = 50
    }
}