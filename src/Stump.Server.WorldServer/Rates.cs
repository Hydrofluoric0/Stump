using System;
using Stump.Core.Attributes;

namespace Stump.Server.WorldServer
{
    [Serializable]
    public static class Rates
    {
        /// <summary>
        /// Life regen rate (default 2 => 2hp/seconds.)
        /// </summary>
        [Variable(true)]
        public static float RegenRate = 2;

        [Variable(true)]
        public static float XpRate = 9;

        [Variable(true)]
        public static float KamasRate = 3;

        [Variable(true)]
        public static float DropsRate = 4;

        [Variable(true)]
        public static float JobXpRate = 3;

        [Variable(true)]
        public static float VipBonusXp = 1.3f;

        [Variable(true)]
        public static float VipBonusDrop = 1.15f;

        [Variable(true)]
        public static double KeyDropPercent = 10;

        [Variable(true)]
        public static float VipBonusJob = 5;
    }
}