using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Models.DataAccess;

namespace dongphucdangcap.com.admin
{
    public partial class list_partner : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                BindGrid();
            }
        }

        protected void grvUser_RowEditing(object sender, GridViewEditEventArgs e)
        {
            Response.Redirect("edit-partner.aspx?id=" + grvPartner.DataKeys[e.NewEditIndex].Value);
        }

        protected void grvUser_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int id = Convert.ToInt32(grvPartner.DataKeys[e.RowIndex].Value);
            PartnerImpl.Instance.Delete(id);
            BindGrid();
        }

        protected void BindGrid()
        {
            var lst = PartnerImpl.Instance.GetList();
            grvPartner.DataSource = lst;
            grvPartner.DataBind();
        }
    }
}
