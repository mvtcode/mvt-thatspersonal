using System;
using System.Collections.Generic;
using System.Linq;

namespace Models.Entity
{
    [Serializable]
    public class Cart
    {
        public UserInfo User { get; set; }
        public List<ProductInfo> LstProduct { get; private set; }
        public Cart()
        {
            LstProduct=new List<ProductInfo>();
        }
        public void AddProduct(ProductInfo product)
        {
            var info = LstProduct.Where(a => a.id == product.id);
            if(info.Any())
            {//Co
                foreach (ProductInfo t in LstProduct)
                {
                    if (t.id == product.id)
                    {
                        t.Quantity += 1;
                        break;
                    }
                }
            }
            else
            {
                if (product.Quantity < 1) product.Quantity = 1;
                LstProduct.Add(product);
            }
        }

        public void RemoveProduct(int pId)
        {
            if (LstProduct == null) LstProduct = new List<ProductInfo>();
            var info = LstProduct.FirstOrDefault(a => a.id == pId);
            if(info!=null) LstProduct.Remove(info);
        }

        public void UpdateQuantity(int pId,int quantity)
        {
            if (LstProduct.Any(a => a.id == pId))
            {//Co
                foreach (ProductInfo t in LstProduct)
                {
                    if (t.id ==  pId)
                    {
                        if (quantity < 1 || quantity>1000) quantity = 1;
                        t.Quantity = quantity;
                        break;
                    }
                }
            }

        }

        public void RemoveAll()
        {
            LstProduct.Clear();
        }

        public double TotalPrice()
        {
            return LstProduct.Sum(a => a.TotalPrice);
        }
    }
}
