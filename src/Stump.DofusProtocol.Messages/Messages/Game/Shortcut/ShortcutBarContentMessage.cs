﻿namespace Stump.DofusProtocol.Messages
{
    using Stump.Core.IO;
    using Stump.DofusProtocol.Types;
    using System;
    using System.Collections.Generic;
    using System.Linq;

    [Serializable]
    public class ShortcutBarContentMessage : Message
    {
        public const uint Id = 6231;
        public override uint MessageId
        {
            get { return Id; }
        }
        public sbyte barType;
        public IEnumerable<Shortcut> shortcuts;

        public ShortcutBarContentMessage(sbyte barType, IEnumerable<Shortcut> shortcuts)
        {
            this.barType = barType;
            this.shortcuts = shortcuts;
        }

        public ShortcutBarContentMessage() { }

        public override void Serialize(IDataWriter writer)
        {
            writer.WriteSByte(barType);
            writer.WriteShort((short)shortcuts.Count());
            foreach (var objectToSend in shortcuts)
            {
                writer.WriteShort(objectToSend.TypeId);
                objectToSend.Serialize(writer);
            }
        }

        public override void Deserialize(IDataReader reader)
        {
            barType = reader.ReadSByte();
            var shortcutsCount = reader.ReadUShort();
            var shortcuts_ = new Shortcut[shortcutsCount];
            for (var shortcutsIndex = 0; shortcutsIndex < shortcutsCount; shortcutsIndex++)
            {
                var objectToAdd = ProtocolTypeManager.GetInstance<Shortcut>(reader.ReadShort());
                objectToAdd.Deserialize(reader);
                shortcuts_[shortcutsIndex] = objectToAdd;
            }
            shortcuts = shortcuts_;
        }

    }
}