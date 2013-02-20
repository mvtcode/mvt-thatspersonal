using System;
using System.Web.UI.WebControls;
using App_Code;
using LicSystem.Core;

namespace dongphucdangcap.com.admin
{
    public partial class list_chatbox : System.Web.UI.Page
    {
        protected int n;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadGrid();
            }
        }

        private void LoadGrid()
        {
            GV_Chat.DataSource = ServiceFactory.GetInstanceChatbox().GetAll(out n);
            GV_Chat.DataBind();
        }

        protected void GV_Chat_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GV_Chat.PageIndex = e.NewPageIndex;
            LoadGrid();
        }

        protected void GV_Chat_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int id = Convert.ToInt32(GV_Chat.DataKeys[e.RowIndex].Value);
            ServiceFactory.GetInstanceChatbox().Delete(id);
            LoadGrid();
        }

        protected void BT_Add_Click(object sender, EventArgs e)
        {
            Response.Redirect("edit-chatbox-other.aspx");
        }

        protected void BT_Update_Click(object sender, EventArgs e)
        {
            for(int i=0;i<GV_Chat.Rows.Count;i++)
            {
                int id = UntilityFunction.IntegerForNull(GV_Chat.DataKeys[i].Value);
                CheckBox cb =(CheckBox) GV_Chat.Rows[i].Cells[5].FindControl("CB_Active");
                ServiceFactory.GetInstanceChatbox().UpdateActive(id, cb.Checked);
            }
            LoadGrid();
        }
    }
}
