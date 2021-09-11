namespace Stump.DofusProtocol.Types
{
    using System;
    using System.Linq;
    using System.Text;
    using Stump.DofusProtocol.Types;
    using Stump.Core.IO;

    [Serializable]
    public class FriendSpouseOnlineInformations : FriendSpouseInformations
    {
        public new const short Id = 93;
        public override short TypeId
        {
            get { return Id; }
        }
        public bool InFight { get; set; }
        public bool FollowSpouse { get; set; }
        public double MapId { get; set; }
        public ushort SubAreaId { get; set; }

        public FriendSpouseOnlineInformations(int spouseAccountId, ulong spouseId, string spouseName, ushort spouseLevel, sbyte breed, sbyte sex, EntityLook spouseEntityLook, BasicGuildInformations guildInfo, sbyte alignmentSide, bool inFight, bool followSpouse, bool pvpEnabled, int mapId, short subAreaId)
           : base(spouseAccountId, spouseId, spouseName, spouseLevel, breed, sex, spouseEntityLook, (GuildInformations)guildInfo, alignmentSide)
        {
            this.InFight = inFight;
            this.FollowSpouse = followSpouse;
            this.MapId = mapId;
            this.SubAreaId = (ushort)subAreaId;
        }

        public FriendSpouseOnlineInformations() { }

        public override void Serialize(IDataWriter writer)
        {
            base.Serialize(writer);
            var flag = new byte();
            flag = BooleanByteWrapper.SetFlag(flag, 0, InFight);
            flag = BooleanByteWrapper.SetFlag(flag, 1, FollowSpouse);
            writer.WriteByte(flag);
            writer.WriteDouble(MapId);
            writer.WriteVarUShort(SubAreaId);
        }

        public override void Deserialize(IDataReader reader)
        {
            base.Deserialize(reader);
            var flag = reader.ReadByte();
            InFight = BooleanByteWrapper.GetFlag(flag, 0);
            FollowSpouse = BooleanByteWrapper.GetFlag(flag, 1);
            MapId = reader.ReadDouble();
            SubAreaId = reader.ReadVarUShort();
        }

    }
}
