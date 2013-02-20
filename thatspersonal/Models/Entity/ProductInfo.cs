

using System;

namespace Models.Entity
{
    [Serializable]
    public class ProductInfo
    {
        public int id { get; set; }
        public string CateName { get; set; }
        public int CateId { get; set; }
        public string ProductName { get; set; }
        public string name { get; set; }
        public string description { get; set; }
        public string contents { get; set; }
        public string tag { get; set; }
        public string image { get; set; }
        public string altImage { get; set; }
        public bool isHot { get; set; }
        public int price { get; set; }
        public string Link { get; set; }
        public DateTime DateCreate { get; set; }
        public string size { get; set; }
        public int Quantity { get; set; }

        public double TotalPrice
        {
            get { return Quantity * price; }
        }

    }
}
