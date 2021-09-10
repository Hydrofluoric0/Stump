﻿namespace Stump.DofusProtocol.Messages
{
    using System;
    using System.Linq;
    using System.Text;
    using Stump.DofusProtocol.Types;
    using System.Collections.Generic;
    using Stump.Core.IO;

    [Serializable]
    public class ChatClientMultiWithObjectMessage : ChatClientMultiMessage
    {
        public new const uint Id = 862;
        public override uint MessageId
        {
            get { return Id; }
        }
        public ObjectItem[] Objects { get; set; }

        public ChatClientMultiWithObjectMessage(string content, sbyte channel, ObjectItem[] objects)
        {
            this.Content = content;
            this.Channel = channel;
            this.Objects = objects;
        }

        public ChatClientMultiWithObjectMessage() { }

        public override void Serialize(IDataWriter writer)
        {
            base.Serialize(writer);
            writer.WriteShort((short)Objects.Count());
            for (var objectsIndex = 0; objectsIndex < Objects.Count(); objectsIndex++)
            {
                var objectToSend = Objects[objectsIndex];
                objectToSend.Serialize(writer);
            }
        }

        public override void Deserialize(IDataReader reader)
        {
            base.Deserialize(reader);
            var objectsCount = reader.ReadUShort();
            Objects = new ObjectItem[objectsCount];
            for (var objectsIndex = 0; objectsIndex < objectsCount; objectsIndex++)
            {
                var objectToAdd = new ObjectItem();
                objectToAdd.Deserialize(reader);
                Objects[objectsIndex] = objectToAdd;
            }
        }

    }
}
