using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using App_Code;

namespace dongphucdangcap.com.admin
{
    public partial class UserPromotion : System.Web.UI.Page
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
            GV_UserPromotion.DataSource = ServiceFactory.GetInstanceUserPromotion().GetAll(out n);
            GV_UserPromotion.DataBind();
        }

        protected void GV_UserPromotion_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GV_UserPromotion.PageIndex = e.NewPageIndex;
            LoadGrid();
        }

        protected void GV_UserPromotion_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int id = Convert.ToInt32(GV_UserPromotion.DataKeys[e.RowIndex].Value);
            ServiceFactory.GetInstanceUserPromotion().Delete(id);
            LoadGrid();
        }
    }
}
