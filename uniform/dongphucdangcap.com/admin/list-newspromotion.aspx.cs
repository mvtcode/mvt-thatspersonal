using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using App_Code;
using LicSystem.Core;

namespace dongphucdangcap.com.admin
{
    public partial class list_newspromotion : System.Web.UI.Page
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
            GV_NewsPromotion.DataSource = ServiceFactory.GetInstanceNewsPromotion().GetAll(out n);
            GV_NewsPromotion.DataBind();
        }

        protected void GV_NewsPromotion_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GV_NewsPromotion.PageIndex = e.NewPageIndex;
            LoadGrid();
        }

        protected void GV_NewsPromotion_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int id = Convert.ToInt32(GV_NewsPromotion.DataKeys[e.RowIndex].Value);
            ServiceFactory.GetInstanceNewsPromotion().Delete(id);
            LoadGrid();
        }

        protected void GV_NewsPromotion_RowEditing(object sender, GridViewEditEventArgs e)
        {
            Response.Redirect("edit-newspromotion.aspx?id=" + GV_NewsPromotion.DataKeys[e.NewEditIndex].Value);
        }

        protected void GV_NewsPromotion_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            string currentCommand = e.CommandName;
            int id = UntilityFunction.IntegerForNull(e.CommandArgument.ToString());

            if (currentCommand == "Send")
            {
                //send email cho toàn bộ user đăng ký nhận tin
            }
        }

        protected void Link_Add_Click(object sender, EventArgs e)
        {
            Response.Redirect("edit-newspromotion.aspx");
        }
    }
}
