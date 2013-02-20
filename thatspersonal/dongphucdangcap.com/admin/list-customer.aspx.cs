using System;
using System.Web.UI.WebControls;
using Models.DataAccess;

namespace dongphucdangcap.com.admin
{
    public partial class list_customer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) BindGrid();
        }

        private void BindGrid()
        {
            int n;
            var datasource = CustormerImpl.Instance.GetList(grvUser.PageIndex, grvUser.PageSize,out n);
            grvUser.DataSource = datasource;
            grvUser.DataBind();
        }

        protected void grvUser_RowEditing(object sender, System.Web.UI.WebControls.GridViewEditEventArgs e)
        {
            Response.Redirect("edit-customer.aspx?id=" + grvUser.DataKeys[e.NewEditIndex].Value);
        }

        protected void grvUser_RowDeleting(object sender, System.Web.UI.WebControls.GridViewDeleteEventArgs e)
        {
            int id = Convert.ToInt32(grvUser.DataKeys[e.RowIndex].Value);
            CustormerImpl.Instance.Delete(id);
            BindGrid();
        }

        protected void grvUser_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            grvUser.PageIndex = e.NewPageIndex;
            BindGrid();
        }

        protected void Link_Update_Click(object sender, EventArgs e)
        {
            foreach (GridViewRow row in grvUser.Rows)
            {
                CheckBox Status = (CheckBox)row.Cells[5].FindControl("CheckBox1");
                int id = Convert.ToInt32(grvUser.DataKeys[row.RowIndex].Value);
                CustormerImpl.Instance.UpdateActive(id, Status.Checked);
            }
            BindGrid();
        }
    }
}
