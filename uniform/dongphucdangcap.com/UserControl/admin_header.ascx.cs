using System;
using uniform.Entity;

namespace dongphucdangcap.com.UserControl
{
    public partial class admin_header : System.Web.UI.UserControl
    {
        protected string Username { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                var user = Session["UserInfo"] as UserInfo;
                if (user != null)
                {
                    Username = user.Fullname;
                }
            }
        }
    }
}