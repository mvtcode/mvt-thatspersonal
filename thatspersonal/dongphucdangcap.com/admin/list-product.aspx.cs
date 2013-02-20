using System;
using System.Web.UI.WebControls;
using Models.DataAccess;

namespace dongphucdangcap.com.admin
{
    public partial class list_product : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Load_DDL();
                string sType = Request.QueryString["type"];
                if (DDL_ProductType.Items.FindByValue(sType) != null)
                    DDL_ProductType.Items.FindByValue(sType).Selected = true;
                LoadGrid();
            }
        }

        private void Load_DDL()
        {
            int n;
            //DDL_ProductType.DataSource = ProductCategoryImpl.Instance.GetListByParent(0);
            DDL_ProductType.DataSource = ProductCategoryImpl.Instance.GetAll(out n);
            DDL_ProductType.DataTextField = "Name";
            DDL_ProductType.DataValueField = "Id";
            DDL_ProductType.DataBind();
        }

        private void LoadGrid()
        {
            int n;
            if (DDL_ProductType.SelectedValue == "") return;
            int iType = int.Parse(DDL_ProductType.SelectedValue);
            GV_Product.DataSource = ProductImpl.Instance.GetAllByType(iType, out n);
            LB_Count.Text = n.ToString();
            GV_Product.DataBind();

            Link_Add.NavigateUrl = "edit-product.aspx?type=" + iType;
        }

        protected void DDL_ProductType_SelectedIndexChanged(object sender, EventArgs e)
        {
            LoadGrid();
        }

        protected void GV_Product_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int id = Convert.ToInt32(GV_Product.DataKeys[e.RowIndex].Value);
            ProductImpl.Instance.Delete(id);
            LoadGrid();
        }

        protected void GV_Product_RowEditing(object sender, GridViewEditEventArgs e)
        {
            Response.Redirect("edit-product.aspx?id=" + GV_Product.DataKeys[e.NewEditIndex].Value);
        }

        protected void GV_Product_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GV_Product.PageIndex = e.NewPageIndex;
            LoadGrid();
        }
    }
}
