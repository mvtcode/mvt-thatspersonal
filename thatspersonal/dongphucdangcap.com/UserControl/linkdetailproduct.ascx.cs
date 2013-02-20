using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace dongphucdangcap.com.UserControl
{
    public partial class linkdetailproduct : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected string Build()
        {
            var streamReader = new StreamReader(Server.MapPath("~/html/linkproduct.htm"));
            var str = streamReader.ReadToEnd();
            streamReader.Close();
            streamReader.Dispose();
            if (string.IsNullOrEmpty(str)) return "";
            var st = "<div class=\"user-template\">" +
                     "<h4>Xem thêm</h4>" +
                     str +
                     "</div>";
            return st;
        }
    }
}