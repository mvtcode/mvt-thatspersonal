using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Models.DataAccess;

namespace dongphucdangcap.com.admin
{
    public partial class list_category_product : System.Web.UI.Page
    {
        protected int n = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadGrid();
            }
        }

        private void LoadGrid()
        {
            GV_Product.DataSource = ProductCategoryImpl.Instance.GetAll(out n);
            GV_Product.DataBind();
        }

        protected void GV_Product_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GV_Product.PageIndex = e.NewPageIndex;
            LoadGrid();
        }

        protected void GV_Product_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int id = Convert.ToInt32(GV_Product.DataKeys[e.RowIndex].Value);
            ProductCategoryImpl.Instance.Delete(id);
            LoadGrid();
        }

        protected void GV_Product_RowEditing(object sender, GridViewEditEventArgs e)
        {
            int ID = (int)GV_Product.DataKeys[e.NewEditIndex].Value;
            Response.Redirect("edit-category-product.aspx?id=" + ID);
        }
    }
}
