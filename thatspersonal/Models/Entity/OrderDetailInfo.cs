using System;

namespace Models.Entity
{
	[Serializable]
	public class OrderDetailInfo
	{
		public int id { get; set; }
		public int OrderId { get; set; }
		public int ProductId { get; set; }
		public string ProductName { get; set; }
		public int price { get; set; }
		public int Number { get; set; }
        public int total { get { return price * Number; } }
	}
}
