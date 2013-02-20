using System;

namespace uniform.Entity
{
	[Serializable]
	public class userPromotionInfo
	{
		public int id { get; set; }
		public string fullname { get; set; }
		public string mobile { get; set; }
		public string email { get; set; }
		public string className { get; set; }
		public string address { get; set; }
		public DateTime CreateDate { get; set; }
	}
}
