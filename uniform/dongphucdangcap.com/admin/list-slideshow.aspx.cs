using System;
using System.Web.UI.WebControls;
using App_Code;
using tuanva.Core;

namespace dongphucdangcap.com.admin
{
    public partial class slideshow : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadGrid();
            }
        }

        private void LoadGrid()
        {
            GV_Album.DataSource = ServiceFactory.GetInstanceslideshow().GetAll();
            GV_Album.DataBind();
        }

        protected void GV_Album_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GV_Album.PageIndex = e.NewPageIndex;
            LoadGrid();
        }

        protected void GV_Album_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int id = Convert.ToInt32(GV_Album.DataKeys[e.RowIndex].Value);
            ServiceFactory.GetInstanceslideshow().Delete(id);
            LoadGrid();
        }

        protected void GV_Album_RowEditing(object sender, GridViewEditEventArgs e)
        {
            Response.Redirect("edit-slideshow.aspx?id=" + GV_Album.DataKeys[e.NewEditIndex].Value);
        }

        protected void Link_Add_Click(object sender, EventArgs e)
        {
            Response.Redirect("edit-slideshow.aspx");
        }

        protected void GV_Album_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.Cells.Count > 1)
            {
                Image img = (Image)e.Row.Cells[1].FindControl("Image1");
                if (img != null)
                {
                    if (img.ImageUrl != "")
                    {
                        img.ImageUrl = Config.GetPathSlideshow + img.ImageUrl;
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
