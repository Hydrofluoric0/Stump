using Stump.ORM;
using Stump.ORM.SubSonic.SQLGeneration.Schema;

namespace Stump.Server.WorldServer.Database.Items
{

    public class BankItemRelator
    {
        public static string FetchQuery = "SELECT * FROM accounts_items_bank";

        /// <summary>
        /// Use string.Format
        /// </summary>
        public static string FetchByOwner = "SELECT * FROM accounts_items_bank WHERE OwnerAccountId={0}";
    }

    [TableName("accounts_items_bank")]
    public class BankItemRecord : ItemRecord<BankItemRecord>, IAutoGeneratedRecord
    {
        public BankItemRecord()
        {
            
        }

        private int m_ownerAccountId;

        [Index]
        public int OwnerAccountId
        {
            get { return m_ownerAccountId; }
            set
            {
                m_ownerAccountId = value;
                IsDirty = true;
            }
        }

        [PrimaryKey("Id", false)]
        public override int Id
        {
            get;
            set;
        }
    }
}