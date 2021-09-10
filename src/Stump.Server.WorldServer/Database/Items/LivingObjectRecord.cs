﻿using System.Collections.Generic;
using System.Linq;
using Stump.Core.IO;
using Stump.DofusProtocol.D2oClasses;
using Stump.DofusProtocol.D2oClasses.Tools.D2o;
using Stump.ORM;
using Stump.ORM.SubSonic.SQLGeneration.Schema;

namespace Stump.Server.WorldServer.Database.Items
{    public class LivingObjectRelator
    {
        public static string FetchQuery = "SELECT * FROM items_livingobjects";
    }

    [D2OClass("LivingObjectSkinJntMood")]
    [TableName("items_livingobjects")]
    public class LivingObjectRecord : IAutoGeneratedRecord, IAssignedByD2O
    {
        private byte[] m_moodsBin;
        private List<List<int>> m_moods;
        private List<int> m_skins = new List<int>();
        private string m_skinsCSV;

        [PrimaryKey("Id", false)]
        public int Id
        {
            get;
            set;
        }

        [Ignore]
        public List<List<int>> Moods
        {
            get { return m_moods; }
            set
            {
                m_moods = value;
                m_moodsBin = value == null ? null : value.ToBinary();
            }
        }

        public byte[] MoodsBin
        {
            get { return m_moodsBin; }
            set
            {
                m_moodsBin = value;
                m_moods = value == null ? null : value.ToObject<List<List<int>>>();
            }
        }

        [Ignore]
        public List<int> Skins
        {
            get
            {
                return m_skins;
            }
            set
            {
                m_skins = value;
                m_skinsCSV = value.ToCSV(",");
            }
        }

        [NullString]
        public string SkinsCSV
        {
            get
            {
                return m_skinsCSV;
            }
            set
            {
                m_skinsCSV = value;
                m_skins = value == null ? new List<int>() : value.FromCSV<int>(",").ToList();
            }
        }

        public int ItemType
        {
            get;
            set;
        }

        public virtual void AssignFields(object obj)
        {
            var castedObj = (LivingObjectSkinJntMood) obj;

            Id = castedObj.skinId;
            Moods = castedObj.moods;
        }
    }
}