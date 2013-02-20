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
            var query = Request.PhysicalPath;
            var str = new StringBuilder();
            str.Append("<li><a href=\"/\"");
                if(query.IndexOf("default")>0) str.Append(" class=\"active\" ");
            str.Append(">Trang chủ</a></li>");
            str.Append("<li><a href=\"/san-pham.htm\"");
                if (query.IndexOf("san-pham") > 0) str.Append(" class=\"active\" ");
            str.Append("><span>Sản phẩm</span></a></li>");
            str.Append("<li><a href=\"/bang-gia.htm\"");
                if (query.IndexOf("bang-gia") > 0) str.Append(" class=\"active\" ");
            str.Append(">Bảng giá</a></li>");
            str.Append("<li><a href=\"/tu-van.htm\"");
                if (query.IndexOf("tu-van") > 0) str.Append(" class=\"active\" ");
            str.Append(">Tư vấn</a></li>");
            str.Append("<li><a href=\"/tuyen-dung.htm\"");
                if (query.IndexOf("tuyen-dung") > 0) str.Append(" class=\"active\" ");
            str.Append(">Tuyển dụng</a></li>");
            str.Append("<li><a href=\"/tin-tuc.htm\"");
                if (query.IndexOf("tin-tuc") > 0) str.Append(" class=\"active\" ");
            str.Append(">Tin tức</a></li>");
            str.Append("<li><a href=\"/gioi-thieu.htm\"");
                if (query.IndexOf("gioi-thieu") > 0) str.Append(" class=\"active\" ");
            str.Append(">Giới thiệu</a></li>");

            return str.ToString();
        }
    }
}