using System.Collections.Generic;
using System.Text;
using Models.Entity;

namespace dongphucdangcap.com.Render
{
    internal class SlideRender
    {
        public static string SlideDefault(ICollection<SliderInfo> lstSlide)
        {
            if (lstSlide == null || lstSlide.Count == 0) return "";
            var sb = new StringBuilder();
            sb.Append("<ul id=\"mycarousel\" class=\"jcarousel-skin-tango\">");
            foreach (var slInfo in lstSlide)
            {
                sb.AppendFormat("<li>" +
                                "<div class=\"right\">" +
                                "<a href=\"{0}\"><img src=\"{1}\" width=\"920\" height=\"300\" alt=\"{2}\" /></a>" +
                                "</div></li>", slInfo.link, slInfo.image, slInfo.alt);
            }
            sb.Append("</ul>");
            return sb.ToString();
        }
    }
}