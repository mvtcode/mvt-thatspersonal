using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using App_Code;

namespace dongphucdangcap.com
{
    public partial class products : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected string BindGridProduct()
        {
            int totalRow;
            var lstProduct = ServiceFactory.GetInstanceProduct().GetList(0, 50, out totalRow);
            if (lstProduct == null || lstProduct.Count == 0) return "";
            var sb = new StringBuilder();
            foreach (var info in lstProduct)
            {
                sb.Append("<div class=\"product-items\">");
                sb.Append("<a href=\"/images/product/"+info.id/200+"/"+info.id+"/"+info.image+"\" rel=\"gallery1\" title=\""+info.name+"\"  class=\"products-page-a yoxview\">");
                sb.Append("<img  title=\""+info.altImage+"\" src=\"/images/product/"+info.id/200+"/"+info.id+"/208.129."+info.image+"\" />");
                sb.Append("</a>");
                sb.Append("<a href=\""+info.link+"\" class=\"productname\">"+info.name+"</a>");
                sb.Append("</div>");

            }
            return sb.ToString();
        }

        protected string BindNavMenu()
        {
            int t;
            var listNav = ServiceFactory.GetInstanceProducType().GetAll(out t);
            if (listNav == null || listNav.Count < 1) return "";
            var sb = new StringBuilder();
            sb.Append("<ul>");
            foreach (var info in listNav)
            {
                if (!string.IsNullOrEmpty(Request.RawUrl) && Request.RawUrl.IndexOf(info.link) > 0)
                {
                    sb.Append("<li><a href=\"" + info.link + "\" class=\"active-head\" title=\"" + Server.HtmlEncode(info.name) + "\">" + info.name + "</a></li>");
                }
                sb.Append("<li><a href=\"" + info.link + "\" title=\"" + Server.HtmlEncode(info.name) + "\">" + info.name + "</a></li>");
            }
            sb.Append("</ul>");
            return sb.ToString();
        }
    }
}
