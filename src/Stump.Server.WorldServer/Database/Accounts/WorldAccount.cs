using System;
using Stump.ORM;
using Stump.ORM.SubSonic.SQLGeneration.Schema;

namespace Stump.Server.WorldServer.Database.Accounts
{
    public class WorldAccountRelator
    {
        public static string FetchQuery = "SELECT * FROM accounts";
        /// <summary>
        /// Use string.Format
        /// </summary>
        public static string FetchById = "SELECT * FROM accounts WHERE Id={0}";
        /// <summary>
        /// Use parameters
        /// </summary>
        public static string FetchByNickname = "SELECT * FROM accounts WHERE Nickname=@0";
        /// <summary>
        /// Use string.Format
        /// </summary>
        public static string UpdateNewTokens = "UPDATE accounts SET NewTokens={0}";
        /// <summary>
        /// Use string.Format
        /// </summary>
        public static string UpdateVip = "UPDATE accounts SET Vip={0} WHERE Id={1}";
    }

    [TableName("accounts")]
    public class WorldAccount : IAutoGeneratedRecord
    {
        public WorldAccount()
        {
        }

        [Index]
        [PrimaryKey("Id", false)]
        public int Id
        {
            get;
            set;
        }

        public string Nickname
        {
            get;
            set;
        }

        public DateTime? LastConnection
        {
            get;
            set;
        }

        [NullString]
        public string LastIp
        {
            get;
            set;
        }

        public int? ConnectedCharacter
        {
            get;
            set;
        }

        public ulong BankKamas
        {
            get;
            set;
        }

        public int Tokens
        {
            get;
            set;
        }

        [ResultColumn("NewTokens")]
        public int NewTokens
        {
            get;
            set;
        }

        public DateTime LastLoterieDate
        {
            get;
            set;
        }

        public int LastConnectionTimeStamp
        {
            get { return LastConnection.HasValue ? (int) (DateTime.Now - LastConnection.Value).TotalHours : 0; }
        }

        public bool Vip
        {
            get;
            set;
        }
    }
}