using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using App_Code;
using tuanva.Core;

namespace dongphucdangcap.com.admin
{
    public partial class list_imageAlbum : System.Web.UI.Page
    {
        protected int n = 0;
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
            int iOtype;
            DDL_Album.DataSource = ServiceFactory.GetInstanceAlbumImpl().GetAll(out iOtype);
            DDL_Album.DataValueField = "id";
            DDL_Album.DataTextField = "title";
            DDL_Album.DataBind();
        }

        private void LoadGrid()
        {
            if (DDL_Album.SelectedValue == "") return;
            int iAlbum = int.Parse(DDL_Album.SelectedValue);
            GV_Images.DataSource = ServiceFactory.GetInstanceImageAlbum().GetAllByType(iAlbum, out n);
            GV_Images.DataBind();
        }

        protected void GV_Images_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GV_Images.PageIndex = e.NewPageIndex;
            LoadGrid();
        }

        protected void GV_Images_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int id = Convert.ToInt32(GV_Images.DataKeys[e.RowIndex].Value);
            ServiceFactory.GetInstanceProducType().Delete(id);
            LoadGrid();
        }

        protected void GV_Images_RowEditing(object sender, GridViewEditEventArgs e)
        {
            int ID = (int)GV_Images.DataKeys[e.NewEditIndex].Value;
            Response.Redirect(string.Format("edit-imageAlbum.aspx?id={0}&AlbumId={1}", ID, DDL_Album.SelectedValue));
        }

        protected void Link_Add_Click(object sender, EventArgs e)
        {
            Response.Redirect("edit-imageAlbum.aspx?AlbumId=" + DDL_Album.SelectedValue);
        }

        protected void GV_Images_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.Cells.Count > 1)
            {
                Image img = (Image)e.Row.Cells[1].FindControl("Image1");
                if (img != null)
                {
                    if (img.ImageUrl != "")
                    {
                        img.ImageUrl = Config.GetPathAlbum + img.ImageUrl;
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
