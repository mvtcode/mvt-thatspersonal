using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using App_Code;

namespace dongphucdangcap.com.admin
{
    public partial class list_productColor : System.Web.UI.Page
    {
        protected int n = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Load_DDL_Type();
                Load_DDL_Product();
                LoadGrid();
            }
        }

        private void LoadGrid()
        {
            int iProduct = 0;
            if (DDL_Product.SelectedValue != "") iProduct = int.Parse(DDL_Product.SelectedValue);
            GV_ImagesColor.DataSource = ServiceFactory.GetInstanceProductColor().GetAllByProduct(iProduct, out n);
            GV_ImagesColor.DataBind();
        }

        private void Load_DDL_Type()
        {
            int iOut = 0;
            DDL_Type.DataSource = ServiceFactory.GetInstanceProducType().GetAll(out iOut);
            DDL_Type.DataValueField = "id";
            DDL_Type.DataTextField = "name";
            DDL_Type.DataBind();
            if(DDL_Type.Items.Count>0)
            {
                DDL_Type.SelectedIndex = 0;
            }

        }

        private void Load_DDL_Product()
        {
            DDL_Product.Items.Clear();
            if(DDL_Type.SelectedValue!="")
            {
                int iType = int.Parse(DDL_Type.SelectedValue);
                int iOut;
                DDL_Product.DataSource = ServiceFactory.GetInstanceProduct().GetAllByType(iType,out iOut);
                DDL_Product.DataValueField = "id";
                DDL_Product.DataTextField = "Name";
                DDL_Product.DataBind();
            }
        }

        protected void GV_ImagesColor_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GV_ImagesColor.PageIndex = e.NewPageIndex;
            LoadGrid();
        }

        protected void GV_ImagesColor_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int id = Convert.ToInt32(GV_ImagesColor.DataKeys[e.RowIndex].Value);
            ServiceFactory.GetInstanceProduct().Delete(id);
            LoadGrid();
        }

        protected void GV_ImagesColor_RowEditing(object sender, GridViewEditEventArgs e)
        {
            Response.Redirect("edit-productColor.aspx?id=" + GV_ImagesColor.DataKeys[e.NewEditIndex].Value);
        }

        protected void BT_Add_Click(object sender, EventArgs e)
        {
            Response.Redirect("edit-productColor.aspx");
        }

        protected void DDL_Type_SelectedIndexChanged(object sender, EventArgs e)
        {
            Load_DDL_Product();
            LoadGrid();
        }

        protected void DDL_Product_SelectedIndexChanged(object sender, EventArgs e)
        {
            LoadGrid();
        }
    }
}
