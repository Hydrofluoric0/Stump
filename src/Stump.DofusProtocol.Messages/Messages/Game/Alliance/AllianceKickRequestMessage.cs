namespace Stump.DofusProtocol.Messages
{
    using Stump.Core.IO;
    using System;

    [Serializable]
    public class AllianceKickRequestMessage : Message
    {
        public const uint Id = 6400;
        public override uint MessageId
        {
            get { return Id; }
        }
        public uint kickedId;

        public AllianceKickRequestMessage(uint kickedId)
        {
            this.kickedId = kickedId;
        }

        public AllianceKickRequestMessage() { }

        public override void Serialize(IDataWriter writer)
        {
            writer.WriteVarUInt(kickedId);
        }

        public override void Deserialize(IDataReader reader)
        {
            kickedId = reader.ReadVarUInt();
        }

    }
}