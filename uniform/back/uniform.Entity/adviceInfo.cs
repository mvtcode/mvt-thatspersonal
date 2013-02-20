using System;

namespace uniform.Entity
{
	[Serializable]
	public class adviceInfo
	{
        public int id { get; set; }
        public int adviceTypeId { get; set; }
        public string adviceTypeName { get; set; }
        public string username { get; set; }
        public string question { get; set; }
        public string answer { get; set; }
        public int sort { get; set; }
        public DateTime CreateDate { get; set; }
        public bool isShow { get; set; }
	}
}
