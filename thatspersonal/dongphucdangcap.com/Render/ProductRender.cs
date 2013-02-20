using System.Collections.Generic;
using System.Text;
using Models.Entity;

namespace dongphucdangcap.com.Render
{
    internal class ProductRender
    {
        public static string LoadProductByCate(ICollection<ProductInfo> lstP)
        {
            if (lstP == null || lstP.Count == 0) return "";
            var sb = new StringBuilder();
            sb.Append("<ul class=\"products-grid\">");
               
            foreach (var info in lstP)
            {
                sb.AppendFormat("<li class=\"item\">" +
                                "<a href=\"{0}\" title=\"{1}\" class=\"product-image\">" +
                                "<img src=\"{2}\" width=\"240\" height=\"240\" alt=\"{1}\" />" +
                                "<div class=\"price-box\">" +
                                "<span class=\"regular-price\">" +
                                "<span class=\"price\">{3} VNĐ</span></span></div>" +
                                "</a>" +
                                "<div class=\"product-name\">" +
                                "<h2 class=\"product-name\">{1}</h2>" +
                                "<div class=\"actions\">" +
                                "<span class=\"view-details\"><a href=\"{0}\" title=\"{1}\">Xem chi tiết</a></span>" +
                                "<button type=\"button\" title=\"Thêm vào giỏ hàng\" class=\"button btn-cart\" onclick=\"setLocation('/gio-hang.htm?type=add&pid={4}')\"><span>Thêm vào giỏ hàng</span></button>" +
                                "</div>"+//div actions
                                "</div></div>" +
                                "</li>",info.Link,info.ProductName,info.image,info.price,info.id);
            }
            return sb.ToString();
        }
    }
}