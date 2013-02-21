using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Models.DataAccess;
using Models.Entity;
using SunLaw.Core;
using System.IO;
using tuanva.Core;

namespace dongphucdangcap.com.admin
{
    public partial class edit_news : System.Web.UI.Page
    {
        protected bool IsEdit;
        protected string Images = "/images/no_pic.png";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                chkAction.Checked = true;
                BindDropCateNews();
                if (!string.IsNullOrEmpty(Request.QueryString["Id"]))
                {
                    BindNews();
                }

            }
            if (!string.IsNullOrEmpty(Request.QueryString["Id"])) IsEdit = true;
        }

        private void BindDropCateNews()
        {
            int n;
            var dropdatasorucre = NewsCategoryImpl.Instance.GetAll(out n);
            drpNhomTin.DataSource = dropdatasorucre;
            //ViewState["drpNhomTin"] = dropdatasorucre;
            drpNhomTin.DataTextField = "name";
            drpNhomTin.DataValueField = "id";
            drpNhomTin.DataBind();
        }

        private void BindNews()
        {
            var info = NewsImpl.Instance.GetInfo(int.Parse(Request.QueryString["Id"]));
            if (info != null)
            {
                txtTenTin.Text = info.Title;
                txtMotaSeo.Text = info.MetaDescription;
                txtdesc.Text = info.Description;
                txtkeyword.Text = info.MetaKeyword;
                Content.Text = info.Content;
                chkAction.Checked = info.Action;
                drpNhomTin.SelectedValue = info.CateId.ToString();
                if (!string.IsNullOrEmpty(info.Image))
                {
                    Images = "/images/news/" + info.Id / 200 + "/" + info.Id + "/" + info.Image;
                }
            }
        }

        private bool AddNews()
        {
            if (string.IsNullOrEmpty(txtTenTin.Text) || string.IsNullOrEmpty(Content.Text))
            {
                ltrThongbao.Text = "Bắt buộc nhập tên tin và nội dung tin";
                return false;
            }
            var info = new NewsInfo();
            info.Title = txtTenTin.Text;
            info.CateName = drpNhomTin.SelectedItem.Text;
            info.CateId = int.Parse(drpNhomTin.SelectedValue);
            info.Content = Content.Text;
            info.MetaDescription = txtMotaSeo.Text;
            info.Description = txtdesc.Text;
            var nextId = LicSystem.Core.UntilityFunction.nextId("News");
            info.Link = Rewrite.GenDetail(info.CateName, info.CateId, nextId, info.Title, Rewrite.News);
            info.AltImage = Server.HtmlEncode(info.Title);
            info.MetaKeyword=txtkeyword.Text;
            info.MetaHeading = txtkeyword.Text;
            info.CreateDate = DateTime.Now;
            info.Action = chkAction.Checked;
            info.TitleRewrite = "";
            info.LanguageId = "VN";
            info.Image = upHinhanh.HasFile ? UploadImage(info.Id) : "";
            NewsImpl.Instance.Add(info);
            return true;
        }

        private string UploadImage(int id)
        {
            string returns = "";
            var ext = Path.GetExtension(upHinhanh.FileName).ToLower();
            if (ext.Equals(".jpg") || ext.Equals(".png") || ext.Equals(".jpeg") || ext.Equals(".gif") || ext.Equals(".bmp"))
            {
                var filename = UnicodeUtility.UrlRewriting(txtTenTin.Text);
                var path = Server.MapPath("~/images/news/" + id / 200 + "/" + id + "/");
                if (!Directory.Exists(path)) Directory.CreateDirectory(path);
                upHinhanh.SaveAs(path + filename + ext);
                //ResizeImage.ImageCrop(upHinhanh.FileBytes, path + "168.109." + filename + ext, 168, 109, 60);
                returns = filename + ext;
            }
            return returns;
        }

        private bool EditNews()
        {
            var info = NewsImpl.Instance.GetInfo(int.Parse(Request.QueryString["id"]));
            if (info != null)
            {
                info.Title = txtTenTin.Text;
                info.CateName = drpNhomTin.SelectedItem.Text;
                info.CateId = int.Parse(drpNhomTin.SelectedValue);
                info.Content = Content.Text;
                info.MetaDescription = txtMotaSeo.Text;
                info.Description = txtdesc.Text;
                info.Link = Rewrite.GenDetail(info.CateName, info.CateId, info.Id, info.Title, Rewrite.News);
                info.AltImage = Server.HtmlEncode(info.Title);
                info.MetaHeading = txtkeyword.Text;
                info.MetaKeyword = txtkeyword.Text;
                info.CreateDate = DateTime.Now;
                info.Action = chkAction.Checked;
                info.TitleRewrite = "";
                info.LanguageId ="VN";
                info.Image=upHinhanh.HasFile?UploadImage(info.Id):info.Image;
                NewsImpl.Instance.Update(info);
                return true;
            }
            return false;
        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(Request.QueryString["id"]))
            {
                //Update
                if (!EditNews()) return;
            }
            else
            {
                if (!AddNews()) return;
            }
            Response.Redirect("list-news.aspx");

        }

        protected void Unnamed1_Click2(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(Request.QueryString["id"]))
            {
                //Update
                if (!EditNews()) return;
            }
            else
            {
                if (!AddNews()) return;
            }
            Response.Redirect("edit-news.aspx");
        }
    }
}
