using System;

namespace Stump.DofusProtocol.Enums {
    [Flags]
    public enum ChatChannelsMultiEnum {
        CHANNEL_GLOBAL = 0,
        CHANNEL_TEAM = 1,
        CHANNEL_GUILD = 2,
        CHANNEL_ALLIANCE = 3,
        CHANNEL_PARTY = 4,
        CHANNEL_SALES = 5,
        CHANNEL_SEEK = 6,
        CHANNEL_NOOB = 7,
        CHANNEL_ADMIN = 8,
        CHANNEL_ADS = 12,
        CHANNEL_ARENA = 13,
        CHANNEL_COMMUNITY = 14,
        CHANNEL_MONDE = 15,
        CHANNEL_VIP = 16
    }
}