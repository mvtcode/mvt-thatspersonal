using System;
using System.IO;

namespace dongphucdangcap.com.admin
{
    public partial class seo_other : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                txtContent.Text = LoadContent("~/html/websiteSetting.xml");
            }
        }

        protected void WriteStream(string filename)
        {
            var stream = new StreamWriter(Server.MapPath(filename));
            stream.Write(txtContent.Text);
            stream.Flush();
            stream.Close();
            stream.Dispose();
        }

        protected void btnAc_Click(object sender, EventArgs e)
        {

            WriteStream("~/html/websiteSetting.xml");
            //UniMaster.SiteInfo.Clear();
        }

        protected string LoadContent(string path)
        {
            var streamReader = new StreamReader(Server.MapPath(path));
            var str = streamReader.ReadToEnd();
            streamReader.Close();
            streamReader.Dispose();
            return str;
        }
    }
}
