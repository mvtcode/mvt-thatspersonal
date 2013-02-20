using System;
using System.IO;
using System.Text;

namespace dongphucdangcap.com.UserControl
{
    public partial class footer : System.Web.UI.UserControl
    {
        protected string SignFooter;
        protected void Page_Load(object sender, EventArgs e)
        {
            SignFooter = LoadContactList();
        }

        private string LoadContactList()
        {
            var path = Server.MapPath("~/html/listctv.htm");
            var stream = new StreamReader(path, Encoding.UTF8);
            var text = stream.ReadToEnd();
            stream.Close();
            stream.Dispose();
            return text;
        }
    }
}