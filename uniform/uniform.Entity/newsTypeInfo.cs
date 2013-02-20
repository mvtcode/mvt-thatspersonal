using System;

namespace uniform.Entity
{
	[Serializable]
	public class NewsTypeInfo
	{
		public int id { get; set; }
		public string name { get; set; }
		public string link { get; set; }
		public int sort { get; set; }
		public string description { get; set; }
		public string keyword { get; set; }
		
		public NewsTypeInfo()
		{
			id = 0;
			name = string.Empty;
			link = string.Empty;
			sort = 0;
			description = string.Empty;
			keyword = string.Empty;
		}

	}
}
