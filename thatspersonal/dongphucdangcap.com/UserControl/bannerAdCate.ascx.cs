using System;
using System.IO;

namespace dongphucdangcap.com.UserControl
{
    public partial class bannerAdCate : System.Web.UI.UserControl
    {
        public string FileName { get; set; }
        public static string TempHtml;
        protected void Page_Load(object sender, EventArgs e)
        {
            TempHtml = LoadTep();
        }

        private string LoadTep()
        {
            if (string.IsNullOrEmpty(FileName)) return "";
            const string folder = "~/html/";
            var path = Server.MapPath(folder + FileName);
            var streamReader = new StreamReader(path);
            var strContent = streamReader.ReadLine();
            streamReader.Close();
            streamReader.Dispose();
            if (string.IsNullOrEmpty(strContent)) return "";
            string t = "<div id=\"slideshow\" class=\"coin-slider\">" +
                       "<div class=\"w900\">" + strContent + "" +
                       "</div>" +
                       "</div>";                       
            return t;
        }
    }
}