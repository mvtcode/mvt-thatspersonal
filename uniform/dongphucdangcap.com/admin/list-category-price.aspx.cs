using System;
using System.Linq;
using System.Web.UI.WebControls;
using App_Code;

namespace dongphucdangcap.com.admin
{
    public partial class list_category_price : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                BindGrid();
        }

        private void BindGrid()
        {
            var datasource = ServiceFactory.GetInstancePriceType().GetAll().OrderBy(a => a.sort);
            grvUser.DataSource = datasource;
            grvUser.DataBind();
        }

        protected void grvUser_RowCommand(object sender, System.Web.UI.WebControls.GridViewCommandEventArgs e)
        {
            int t;
            int.TryParse(e.CommandArgument.ToString(), out t);
            if (e.CommandName == "Save")
            {

                if (t != 0)
                {
                    var row = (GridViewRow) ((ImageButton) e.CommandSource).NamingContainer;
                    var textbox = row.FindControl("txtSource") as TextBox;
                    if (textbox != null)
                    {
                        ServiceFactory.GetInstancePriceType().UpdateSort(t, int.Parse(textbox.Text));
                        BindGrid();
                    }
                }
            }
        }

        protected void grvUser_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            var key = int.Parse(grvUser.DataKeys[e.RowIndex].Value.ToString());
            ServiceFactory.GetInstancePriceType().Delete(key);
            BindGrid();
        }

        protected void grvUser_RowEditing(object sender, GridViewEditEventArgs e)
        {
            var key = int.Parse(grvUser.DataKeys[e.NewEditIndex].Value.ToString());
            Response.Redirect("edit-category-price.aspx?id=" + key);
        }
    }
}
