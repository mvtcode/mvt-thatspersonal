using System.Collections.Generic;
using System.Text;
using Models.Entity;

namespace dongphucdangcap.com.Render
{
    class Menu
    {
        protected static string MenuRender(IList<ProductCategoryInfo> lstCate,string url)
        {
            var sb = new StringBuilder();
            sb.Append("<li class=\"nav-parent active\"><a href=\"/\"><span>Trang chủ</span></a></li>");
            sb.Append("<li class=\"nav-parent\"><a href=\"#\"><span class=\"nav-link\">Phái nữ</span> </a>");
                //        <ul class="level1">
                //        <li class="first"><a href="../h#"><span class="nav-link">Chemise</span> <span class="thumb-icon">
                //            <img src=\"\" border="0" />
                //        </span></a></li>
                //        <li><a href="../h#"><span class="nav-link">Chemise</span> <span class="thumb-icon">
                //            <img src="http://www.thatspersonal.com/media/catalog/category/dd_lingerie.jpg" border="0" />
                //        </span></a></li>
                //        <li><a href="../h#"><span class="nav-link">Chemise</span> <span class="thumb-icon">
                //            <img src="http://www.thatspersonal.com/media/catalog/category/dd_lingerie.jpg" border="0" />
                //        </span></a></li>
                //        <li><a href="../h#"><span class="nav-link">Chemise</span> <span class="thumb-icon">
                //            <img src="http://www.thatspersonal.com/media/catalog/category/dd_lingerie.jpg" border="0" />
                //        </span></a></li>
                //    </ul>
                //</li>

            return "";
        }

        //private static 
    }
}