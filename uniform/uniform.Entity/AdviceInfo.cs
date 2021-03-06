using System;

namespace uniform.Entity
{
	[Serializable]
	public class AdviceInfo
	{
		public int id { get; set; }
		public int adviceTypeId { get; set; }
		public string adviceTypeName { get; set; }
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
		
        public AdviceInfo()
		{
			id = 0;
			adviceTypeId = 0;
			adviceTypeName = string.Empty;
			title = string.Empty;
			description = string.Empty;
			content = string.Empty;
			image = string.Empty;
			altImage = string.Empty;
			tag = string.Empty;
			CreateDate = DateTime.Now;
			action = false;
			link = string.Empty;
			desseo = string.Empty;
		}

	}
}
