using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using App_Code;
using LicSystem.Core;
using tuanva.Core;

namespace dongphucdangcap.com.admin
{
    public partial class list_product : System.Web.UI.Page
    {
        protected int n = 0;
        protected string sImgHot = "";
        protected string sImgNoHot = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Load_DDL();
                LoadGrid();
            }
        }

        private void Load_DDL()
        {
            int iOut = 0;
            DDL_ProductType.DataSource = ServiceFactory.GetInstanceProducType().GetAll(out iOut);
            DDL_ProductType.DataTextField = "name";
            DDL_ProductType.DataValueField = "id";
            DDL_ProductType.DataBind();
        }

        private void LoadGrid()
        {
            if(DDL_ProductType.SelectedValue=="") return;
            int iType = int.Parse(DDL_ProductType.SelectedValue);
            GV_Product.DataSource = ServiceFactory.GetInstanceProduct().GetAllByType(iType, out n);
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
            ServiceFactory.GetInstanceProduct().Delete(id);
            LoadGrid();
        }

        protected void GV_Product_RowEditing(object sender, GridViewEditEventArgs e)
        {
            Response.Redirect("edit-product.aspx?id=" + GV_Product.DataKeys[e.NewEditIndex].Value);
        }

        protected void GV_Product_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            string currentCommand = e.CommandName;
            int id = UntilityFunction.IntegerForNull(e.CommandArgument.ToString());

            if (currentCommand == "setHot")
            {
                ServiceFactory.GetInstanceProduct().SetHot(id);
                LoadGrid();
            }
        }

        protected void BT_Update_Click(object sender, EventArgs e)
        {
            for (int i = 0; i < GV_Product.Rows.Count; i++)
            {
                int id = UntilityFunction.IntegerForNull(GV_Product.DataKeys[i].Value);
                CheckBox cb = (CheckBox)GV_Product.Rows[i].Cells[5].FindControl("CB_Hot");
                ServiceFactory.GetInstanceProduct().UpdateHot(id, cb.Checked);
            }
            LoadGrid();
        }

        protected void DDL_ProductType_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DDL_ProductType.SelectedValue == "") return;
            int iType = int.Parse(DDL_ProductType.SelectedValue);
            GV_Product.DataSource = ServiceFactory.GetInstanceProduct().GetAllByType(iType, out n);
            GV_Product.DataBind();
        }

        protected void Link_Add_Click(object sender, EventArgs e)
        {
            Response.Redirect("edit-product.aspx?ProductTypeId=" + DDL_ProductType.SelectedValue);
        }

        protected void GV_Product_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.Cells.Count > 1)
            {
                Image img = (Image)e.Row.Cells[1].FindControl("Image1");
                if (img != null)
                {
                    if (img.ImageUrl != "")
                    {
                        img.ImageUrl = UntilityFunction.GetPathImage(Config.GetPathProduct, int.Parse(GV_Product.DataKeys[e.Row.RowIndex].Value.ToString()), 200) + img.ImageUrl;
                    }
                    else
                    {
                        img.ImageUrl = Config.GetPathNoImage;
                    }
                }
            }
        }
    }
}
