using System;

namespace uniform.Entity
{
	[Serializable]
	public class chatboxInfo
	{
		public int id { get; set; }
		public string name { get; set; }
		public string comment { get; set; }
        public bool isAdmin { get; set; }
        public bool active { get; set; }
		public DateTime CreateDate { get; set; }
		
	}
}
