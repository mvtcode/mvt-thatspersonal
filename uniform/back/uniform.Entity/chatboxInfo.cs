using System;

namespace uniform.Entity
{
	[Serializable]
	public class chatboxInfo
	{
		public int ID { get; set; }
		public string name { get; set; }
		public string comment { get; set; }
		public DateTime CreateDate { get; set; }
		
	}
}
