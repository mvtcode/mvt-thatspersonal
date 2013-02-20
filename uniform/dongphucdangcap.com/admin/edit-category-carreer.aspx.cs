using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using App_Code;
using tuanva.Core;
using uniform.Entity;

namespace dongphucdangcap.com.admin
{
    public partial class edit_category_career : System.Web.UI.Page
    {
        protected bool IsEdit;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) txtSort.Text = "0";
            if (!string.IsNullOrEmpty(Request.QueryString["Id"]))
            {
                if (!IsPostBack) BindCate();
                IsEdit = true;
            }
        }
        private void BindCate()
        {
            var id = int.Parse(Request.QueryString["id"]);
            var info = ServiceFactory.GetInstanceCarreerType().GetInfo(id);
            if (info == null) { Response.Redirect("list-category-carreer.aspx"); return; }
            txtCategoryname.Text = info.name;
            txtSort.Text = info.sort.ToString();
        }
        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            if (!IsEdit)
            {
                AddNewCate();
            }
            else
            {
                UpdatCate();
            }
            Response.Redirect("list-category-carreer.aspx");
        }

        private void AddNewCate()
        {
            var info = new carreerTypeInfo();
            info.name = txtCategoryname.Text;
            info.link = "/" + UnicodeUtility.UrlRewriting(info.name) + ".html";
            info.sort = int.Parse(txtSort.Text);
            ServiceFactory.GetInstanceCarreerType().Add(info);
        }

        protected void Unnamed1_Click2(object sender, EventArgs e)
        {
            if (!IsEdit)
            {
                AddNewCate();
            }
            else
            {
                if (string.IsNullOrEmpty(Request.QueryString["id"])) return;
                UpdatCate();
            }
            Response.Redirect("edit-category-carreer.aspx");
        }

        private void UpdatCate()
        {
            var info = ServiceFactory.GetInstanceCarreerType().GetInfo(int.Parse(Request.QueryString["id"]));
            if (info != null)
            {
                if (!string.IsNullOrEmpty(txtCategoryname.Text)) info.name = txtCategoryname.Text;
                if (!string.IsNullOrEmpty(txtSort.Text)) info.sort = int.Parse(txtSort.Text);
                //rewrite

                ServiceFactory.GetInstanceCarreerType().Update(info);
            }
        }
    }
}
