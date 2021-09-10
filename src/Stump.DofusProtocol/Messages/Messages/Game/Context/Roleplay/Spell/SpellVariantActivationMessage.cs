namespace Stump.DofusProtocol.Messages
{
    using System.Linq;
    using System.Text;
    using System;
    using Stump.Core.IO;
    using Stump.DofusProtocol.Types;

    [Serializable]
    public class SpellVariantActivationMessage : Message
    {
        public const uint Id = 6705;
        public override uint MessageId
        {
            get { return Id; }
        }
        public ushort spellId;
        public bool result;

        public SpellVariantActivationMessage(ushort spellId, bool result)
        {
            this.spellId = spellId;
            this.result = result;
        }

        public SpellVariantActivationMessage() { }

        public override void Serialize(IDataWriter writer)
        {
            writer.WriteVarUShort(spellId);
            writer.WriteBoolean(result);
        }

        public override void Deserialize(IDataReader reader)
        {
            spellId = reader.ReadVarUShort();
            result = reader.ReadBoolean();
        }

    }
}