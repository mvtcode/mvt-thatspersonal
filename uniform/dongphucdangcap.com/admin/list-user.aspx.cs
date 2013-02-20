using System;
using App_Code;

namespace dongphucdangcap.com.admin
{
    public partial class list_user : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack) BindGrid();
        }

        private void BindGrid()
        {
            var datasource = ServiceFactory.GetInstanceUser().GetList();
            grvUser.DataSource = datasource;
            grvUser.DataBind();
        }

        protected void grvUser_RowEditing(object sender, System.Web.UI.WebControls.GridViewEditEventArgs e)
        {
            Response.Redirect("edit-user.aspx?id=" + grvUser.DataKeys[e.NewEditIndex].Value);
        }

        protected void grvUser_RowDeleting(object sender, System.Web.UI.WebControls.GridViewDeleteEventArgs e)
        {
            int id = Convert.ToInt32(grvUser.DataKeys[e.RowIndex].Value);
            ServiceFactory.GetInstanceUser().Delete(id);
            BindGrid();
        }
    }
}
