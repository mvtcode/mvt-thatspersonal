using System;

namespace uniform.Entity
{
	[Serializable]
	public class productInfo
	{
        public int id { get; set; }
        public int ProductTypeId { get; set; }
        public string ProductName { get; set; }
        public string name { get; set; }
        public object description { get; set; }
        public string tag { get; set; }
        public string image { get; set; }
        public string altImage { get; set; }
        public int price { get; set; }
        public string link { get; set; }
	}
}
