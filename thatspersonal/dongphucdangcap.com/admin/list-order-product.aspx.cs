using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Models.DataAccess;

namespace dongphucdangcap.com.admin
{
    public partial class list_order_product : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Load_DDL();
                string sType = Request.QueryString["status"];
                if (DDL_Status.Items.FindByValue(sType) != null)
                    DDL_Status.Items.FindByValue(sType).Selected = true;
                LoadGrid();
            }
        }

        private void LoadGrid()
        {
            int n;
            int iStatus = int.Parse(DDL_Status.SelectedValue);
            GV_Order.DataSource = OrderImpl.Instance.GetAll(iStatus, out n);
            LB_Count.Text = n.ToString();
            GV_Order.DataBind();

            //Link_Add.NavigateUrl = "edit-order-product.aspx?type=" + iType;
        }

        private void Load_DDL()
        {
            DDL_Status.Items.Add(new ListItem("Đơn hàng mới","0"));
            DDL_Status.Items.Add(new ListItem("Hủy bỏ", "1"));
            DDL_Status.Items.Add(new ListItem("Hết hàng", "2"));
            DDL_Status.Items.Add(new ListItem("Đã giao hàng", "3"));
        }

        protected void DDL_Status_SelectedIndexChanged(object sender, EventArgs e)
        {
            LoadGrid();
        }

        protected void GV_Product_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int id = Convert.ToInt32(GV_Order.DataKeys[e.RowIndex].Value);
            OrderImpl.Instance.Delete(id);
            LoadGrid();
        }

        protected void GV_Product_RowEditing(object sender, GridViewEditEventArgs e)
        {
            Response.Redirect("edit-order-product.aspx?id=" + GV_Order.DataKeys[e.NewEditIndex].Value);
        }
    }
}
