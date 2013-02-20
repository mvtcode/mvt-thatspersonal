using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using App_Code;
using tuanva.Core;

namespace dongphucdangcap.com
{
    public partial class list_price : System.Web.UI.Page
    {
        protected string Nav;
        protected string GridMain;
        protected void Page_Load(object sender, EventArgs e)
        {
            Nav = BuildNav();
            GridMain = BuildList();
        }

        private string BuildNav()
        {
            var listNav = ServiceFactory.GetInstancePriceType().GetAll();
            if (listNav == null || listNav.Count < 1) return "";
            var sb = new StringBuilder();
            sb.Append("<ul>");
            foreach (var info in listNav)
            {
                sb.Append("<li><a href=\"" + info.link + "\" title=\"" + Server.HtmlEncode(info.name) + "\">"+info.name +"</a></li>");
            }
            sb.Append("</ul>");
            return sb.ToString();
        }

        private string BuildList()
        {
            int pageIndex = 1, cateId = 0;
            if(!string.IsNullOrEmpty(Request.QueryString["p"]) && int.Parse(Request.QueryString["p"])>1)
              pageIndex = int.Parse(Request.QueryString["p"]);
            if(!string.IsNullOrEmpty(Request.QueryString["c"]) && int.Parse(Request.QueryString["c"])>0)
                cateId = int.Parse(Request.QueryString["c"]);
            int totalRow;
            var lstPrice = ServiceFactory.GetInstancePrice().GetList(pageIndex - 1, Config.RecordPerPage, out totalRow,cateId);
            if (lstPrice == null || lstPrice.Count < 1) return "<p>Chưa có dữ liệu!</p>";
             var sb = new StringBuilder();
            foreach (var info in lstPrice)
            {
                sb.Append("<div class=\"newitems clearfix\">");
                sb.Append("<h2>");
                sb.Append("<a href=\""+info.link+"\">"+info.title+"</a></h2>");
                sb.Append("<span class=\"newsdatecreate\">"+info.CreateDate.ToString("dd/MM/yyyy")+"</span>");
                sb.Append("<img src=\"");
                if(string.IsNullOrEmpty(info.image)) 
                    sb.Append("/images/no_pic.png");
                else
                    sb.Append("/images/prices/" + info.id / 200 + "/" + info.id + "/168.109." + info.image);
                sb.Append("\" alt=\""+info.altImage+"\" />");
                sb.Append("<p>"+info.description+"<p>");
                sb.Append("<a href=\""+info.link+"\">Xem tiếp</a>");
                sb.Append("</div>");
            }
            return sb.ToString();
        }
    }
}
