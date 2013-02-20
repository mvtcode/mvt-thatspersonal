using System;

namespace uniform.Entity
{
	[Serializable]
	public class carreerInfo
	{
		public int id { get; set; }
		public int carreerTypeId { get; set; }
		public string carreerTypeName { get; set; }
		public string title { get; set; }
		public string description { get; set; }
		public string content { get; set; }
		public string image { get; set; }
		public string altImage { get; set; }
		public string tag { get; set; }
		public DateTime CreateDate { get; set; }
		public bool action { get; set; }
		public string link { get; set; }
		public string desseo { get; set; }
	}
}
