using System;

namespace uniform.Entity
{
	[Serializable]
	public class productColorInfo
	{
        public int id { get; set; }
        public int colorId { get; set; }
        public string colorValue { get; set; }
        public int ProductId { get; set; }
        public string productName { get; set; }
        public string image { get; set; }
        public string altImage { get; set; }
	}
}
