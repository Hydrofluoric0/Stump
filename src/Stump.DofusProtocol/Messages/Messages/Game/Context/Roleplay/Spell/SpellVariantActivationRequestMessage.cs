namespace Stump.DofusProtocol.Messages
{
    using System.Linq;
    using System.Text;
    using System;
    using Stump.Core.IO;
    using Stump.DofusProtocol.Types;

    [Serializable]
    public class SpellVariantActivationRequestMessage : Message
    {
        public const uint Id = 6707;
        public override uint MessageId
        {
            get { return Id; }
        }
        public ushort spellId;

        public SpellVariantActivationRequestMessage(ushort spellId)
        {
            this.spellId = spellId;
        }

        public SpellVariantActivationRequestMessage() { }

        public override void Serialize(IDataWriter writer)
        {
            writer.WriteVarUShort(spellId);
        }

        public override void Deserialize(IDataReader reader)
        {
            spellId = reader.ReadVarUShort();
        }

    }
}