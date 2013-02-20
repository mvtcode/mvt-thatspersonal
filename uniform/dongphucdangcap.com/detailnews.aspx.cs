using System;
using System.Text;
using App_Code;

namespace dongphucdangcap.com
{
    public partial class detailnews : System.Web.UI.Page
    {
        protected string StrNews;
        protected void Page_Load(object sender, EventArgs e)
        {
            string title, desc, keyword;
            StrNews = BuildNews(out title, out desc, out keyword);
            Title = title;
            //var tag = new 
        }

        private string BuildNews(out string title, out string desc, out string keyword)
        {
            if (string.IsNullOrEmpty(Request.QueryString["d"]) || int.Parse(Request.QueryString["d"]) < 1)
            {
                Response.Redirect("/", true);
            }
            var info = ServiceFactory.GetInstanceNews().GetInfo(int.Parse(Request.QueryString["d"]));
            var sb = new StringBuilder();
            sb.Append("<div class=\"newsdetail clearfix\">");
            sb.Append("<h2>" + info.title + "</h2>");
            sb.Append("<h3>(dongphucdangcap.com) " + info.description + " - " + info.CreateDate.ToShortDateString() + "</h3>");
            sb.Append("<div class=\"newsbody\">");
            sb.Append(info.content);
            sb.Append("</div>");
            sb.Append("</div>");
            title = info.title;
            desc = info.desseo;
            keyword = info.tag;
            return sb.ToString();
        }
    }
}
