using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace dongphucdangcap.com.UserControl
{
    public partial class subMenuBelow : System.Web.UI.UserControl
    {
        public string FileName { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected string BuildSub()
        {
            var streamReader = new StreamReader(Server.MapPath("~/html/"+FileName));
            var str = streamReader.ReadToEnd();
            streamReader.Close();
            streamReader.Dispose();
            if (string.IsNullOrEmpty(str)) return "";
            var st = "<div class=\"below-nav\">" +
                     str +
                     "</div>";
            return st;
        }
    }
}