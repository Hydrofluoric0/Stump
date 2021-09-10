﻿namespace Stump.DofusProtocol.Messages
{
    using System;
    using System.Linq;
    using System.Text;
    using Stump.DofusProtocol.Types;
    using Stump.Core.IO;

    [Serializable]
    public class GuildMotdMessage : SocialNoticeMessage
    {
        public new const uint Id = 6590;
        public override uint MessageId
        {
            get { return Id; }
        }

        public GuildMotdMessage(string content, int timestamp, ulong memberId, string memberName)
        {
            this.Content = content;
            this.Timestamp = timestamp;
            this.MemberId = memberId;
            this.MemberName = memberName;
        }

        public GuildMotdMessage() { }

        public override void Serialize(IDataWriter writer)
        {
            base.Serialize(writer);
        }

        public override void Deserialize(IDataReader reader)
        {
            base.Deserialize(reader);
        }

    }
}
