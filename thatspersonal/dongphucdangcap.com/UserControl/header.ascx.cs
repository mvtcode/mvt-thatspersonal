using System;
using System.IO;
using System.Text;

namespace dongphucdangcap.com.UserControl
{
    public partial class header : System.Web.UI.UserControl
    {
        protected string MenuString;
        protected string YahooSupport;
        protected void Page_Load(object sender, EventArgs e)
        {
            var stream = new StreamReader(Server.MapPath("~/html/yahoosupport.htm"));
            YahooSupport = stream.ReadToEnd();
            stream.Close();
            stream.Dispose();
            MenuString = Menu();
        }

        private string Menu()
        {
            var query = Request.Url.PathAndQuery;
            var str = new StringBuilder();
            str.Append("<li><a href=\"/\"");
                if(query.StartsWith("/default")) str.Append(" class=\"active\" ");
            str.Append(">Trang chủ</a></li>");
            str.Append("<li><a href=\"/san-pham.htm\"");
                if (query.StartsWith("/san-pham")) str.Append(" class=\"active\" ");
            str.Append("><span>Sản phẩm</span></a></li>");
            str.Append("<li><a href=\"/bang-gia.htm\"");
                if (query.StartsWith("/bang-gia")) str.Append(" class=\"active\" ");
            str.Append(">Bảng giá</a></li>");
            str.Append("<li><a href=\"/tu-van.htm\"");
                if (query.StartsWith("/tu-van")) str.Append(" class=\"active\" ");
            str.Append(">Tư vấn</a></li>");
            str.Append("<li><a href=\"/tuyen-dung.htm\"");
                if (query.StartsWith("/tuyen-dung")) str.Append(" class=\"active\" ");
            str.Append(">Tuyển dụng</a></li>");
            str.Append("<li><a href=\"/tin-tuc.htm\"");
                if (query.StartsWith("/tin-tuc")) str.Append(" class=\"active\" ");
            str.Append(">Tin tức</a></li>");
            str.Append("<li><a href=\"/gioi-thieu.htm\"");
                if (query.StartsWith("/gioi-thieu")) str.Append(" class=\"active\" ");
            str.Append(">Giới thiệu</a></li>");

            return str.ToString();
        }
    }
}