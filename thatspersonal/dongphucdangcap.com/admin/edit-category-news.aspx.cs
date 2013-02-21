using System;
using LicSystem.Core;
using Models.DataAccess;
using Models.Entity;
using SunLaw.Core;

namespace dongphucdangcap.com.admin
{
    public partial class edit_category_news : System.Web.UI.Page
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
            var info = NewsCategoryImpl.Instance.GetInfo(id);
            if (info == null) { Response.Redirect("list-category-news.aspx"); return; }
            txtCategoryname.Text = info.Name;
            txtSort.Text = info.Sort.ToString();
            txtTukhoa.Text = info.MetaKeyword;
            txtMota.Text = info.Description;
        }
        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            if (!IsEdit)
            {
                if (!AddNewCate()) return;
            }
            else
            {
                if (!UpdatCate()) return;
            }
            Response.Redirect("list-category-news.aspx");
        }

        private bool AddNewCate()
        {
            if (string.IsNullOrEmpty(txtCategoryname.Text) || string.IsNullOrEmpty(txtSort.Text))
            {
                ltrThongbao.Text = "Cần nhập đủ các trường!";
                return false;
            }
            var info = new NewsCategoryInfo();
            info.Name = txtCategoryname.Text;
            var nextId = UntilityFunction.nextId("NewsCategory");
            info.Link = Rewrite.GenCate(info.Name, nextId, Rewrite.News);
            info.Sort = int.Parse(txtSort.Text);
            info.Description = txtMota.Text;
            info.MetaDescription=txtMota.Text;
            info.MetaHeading = "";
            info.MetaKeyword = txtTukhoa.Text;
            info.ParentId = 0;
            info.TitleRewrite = "";
            info.Image = "";
            NewsCategoryImpl.Instance.Add(info);
            return true;
        }

        protected void Unnamed1_Click2(object sender, EventArgs e)
        {
            if (!IsEdit)
            {
                if (!AddNewCate()) return;
            }
            else
            {
                if (string.IsNullOrEmpty(Request.QueryString["id"])) return;
                if (!UpdatCate()) return;
            }
            Response.Redirect("edit-category-news.aspx");
        }

        private bool UpdatCate()
        {
            if (string.IsNullOrEmpty(txtCategoryname.Text) || string.IsNullOrEmpty(txtSort.Text)) return false;
            var info = NewsCategoryImpl.Instance.GetInfo(int.Parse(Request.QueryString["id"]));
            if (info != null)
            {
                info.Name = txtCategoryname.Text;
                info.Sort = int.Parse(txtSort.Text);
                info.Link = Rewrite.GenCate(info.Name, info.Id, Rewrite.News);
                info.Description = txtMota.Text;
                info.MetaDescription=txtMota.Text;
                info.MetaHeading = "";
                info.MetaKeyword = txtTukhoa.Text;
                info.ParentId = 0;
                info.TitleRewrite = "";
                info.Image = "";
                NewsCategoryImpl.Instance.Update(info);
                return true;
            }
            return false;
        }
    }
}
