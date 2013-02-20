using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using App_Code;

namespace dongphucdangcap.com.admin
{
    public partial class list_category_product : System.Web.UI.Page
    {
        protected int n = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                LoadGrid();
            }
        }

        private void LoadGrid()
        {
            GV_Type.DataSource = ServiceFactory.GetInstanceProducType().GetAll(out n);
            GV_Type.DataBind();
        }

        protected void GV_Type_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GV_Type.PageIndex = e.NewPageIndex;
            LoadGrid();
        }

        protected void GV_Type_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int id = Convert.ToInt32(GV_Type.DataKeys[e.RowIndex].Value);
            ServiceFactory.GetInstanceProducType().Delete(id);
            LoadGrid();
        }

        protected void GV_Type_RowEditing(object sender, GridViewEditEventArgs e)
        {
            int ID = (int)GV_Type.DataKeys[e.NewEditIndex].Value;
            Response.Redirect("edit-category-product.aspx?id=" + ID);
        }

        protected void BT_Add_Click(object sender, EventArgs e)
        {
            Response.Redirect("edit-category-product.aspx");
        }
    }
}
