using System;
using System.Text;
using App_Code;
using tuanva.Core;

namespace dongphucdangcap.com
{
    public partial class _default : System.Web.UI.Page
    {
        protected string StrChat;
        protected string SlideShow;
        protected string HotProduct;
        protected string Top3Consult;
        protected void Page_Load(object sender, EventArgs e)
        {
            StrChat = BuildChat();
            SlideShow = BuildSlideShow();
            HotProduct = BuildHotProduct();
            Top3Consult = BuildTop3Consult();
        }

        private string BuildChat()
        {
            var list = ServiceFactory.GetInstanceChatbox().GetAll(80);
            if (list == null || list.Count < 1) return "<p>Đang cập nhật</p>";
            var sb = new StringBuilder();
            foreach (var info in list)
            {
                sb.Append("<p><span class=\"" + (info.isAdmin ? "admin-chat" : "visitor-chat") + "\">" +info.name+ "</span>: ");
                sb.Append(info.comment);
                sb.Append("</p>");
            }
            return sb.ToString();
        }

        private string BuildSlideShow()
        {
            var lstSlide = ServiceFactory.GetInstanceslideshow().GetAll();
            if (lstSlide == null || lstSlide.Count < 1) return "<p style=\"text-align:center\">Nội dung đang cập nhật</p>";
            var sb = new StringBuilder();
            sb.Append("<div id=\"slideshow\">");
            sb.Append("<div id=\"coin-slider\" class=\"w900\">");
            foreach (var info in lstSlide)
            {
               sb.Append("<a href=\""+info.link+"\">");
               sb.Append("<img src=\"/images/slideshow/"+info.image+"\" alt="+info.alt+"\" />");
               sb.Append("</a>");
            }
            sb.Append("</div>");
            sb.Append("</div>");
            return sb.ToString();
        }

        private string BuildHotProduct()
        {
            var lstHot = ServiceFactory.GetInstanceProduct().GetHotProduct();
            if (lstHot == null || lstHot.Count < 1) return "<p>Không có sản phẩm nào hot</p>";
            var sb = new StringBuilder();
            sb.Append("<ul>");
            foreach (var info in lstHot)
            {
                sb.Append("<li><a class=\"img-product yoxview\" rel=\"df\" href=\"/images/product/" + info.id / 200 + "/" + info.id + "/"+info.image+"\" title=\""+info.name+"\">");
                sb.Append("<img src=\"/images/product/" + info.id / 200 + "/" + info.id + "/256.158." + info.image + "\" alt=\"" + info.altImage + "\"/></a>");
                sb.Append("<a href=\""+info.link+"\" class=\"productname\">" + HtmlUtility.CutWordLength(info.name,40) + "</a>");
                sb.Append("</li>");
            }
            sb.Append("</ul>");
            return sb.ToString();
        }

        private string BuildTop3Consult()
        {
            var lstConsult = ServiceFactory.GetInstanceAdvice().GetTop3Defaul();
            if (lstConsult == null || lstConsult.Count == 0) return "Chưa có dữ liệu";
            var sb = new StringBuilder();
            foreach (var info in lstConsult)
            {
               sb.Append("<div class=\"top-help\">");
               sb.Append("<img src=\"/Content/images/3star.png\"/>");
               sb.Append("<h4>"+info.title+"</h4>");
               sb.Append("<p>"+info.description+" <a href=\""+info.link+"\">xem tiếp</a></p>");
               sb.Append("</div>");
            }
            return sb.ToString();
        }
    }
}
