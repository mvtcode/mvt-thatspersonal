using System;

namespace dongphucdangcap.com.admin
{
    public partial class UniAdmin : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Page_Init(object sender, EventArgs e)
        {
            if(Session["UserInfo"]==null)
            {
                var prevLink = Server.UrlEncode(Request.RawUrl);
                Response.Redirect("~/admin/login.aspx?return="+prevLink);
            }
        }
    }
}
