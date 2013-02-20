using System;
using App_Code;
using uniform.Entity;

namespace dongphucdangcap.com.admin
{
    public partial class edit_chatbox : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BT_Save_Click(object sender, EventArgs e)
        {

            chatboxInfo info = new chatboxInfo();
            info.comment = TB_Comment.Text;
            info.name = "Admin";
            info.isAdmin = true;
            info.active = CB_Active.Checked;
            ServiceFactory.GetInstanceChatbox().Add(info);
            Response.Redirect("list-chatbox-other.aspx");
        }

        protected void BT_Back_Click(object sender, EventArgs e)
        {
            Response.Redirect("list-chatbox-other.aspx");
        }
    }
}
