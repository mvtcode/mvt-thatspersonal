﻿using System;
using System.IO;
using App_Code;
using LicSystem.Core;
using SunLaw.Core;
using tuanva.Core;
using uniform.Entity;

namespace dongphucdangcap.com.admin
{
    public partial class edit_price : System.Web.UI.Page
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
            var dropdatasorucre = ServiceFactory.GetInstancePriceType().GetAll();
            drpNhomTin.DataSource = dropdatasorucre;
            ViewState["drpNhomTin"] = dropdatasorucre;
            drpNhomTin.DataTextField = "name";
            drpNhomTin.DataValueField = "id";
            drpNhomTin.DataBind();
        }

        private void BindNews()
        {
            var info = ServiceFactory.GetInstancePrice().GetInfo(int.Parse(Request.QueryString["Id"]));
            if (info != null)
            {
                txtTenTin.Text = info.title;
                txtMotaSeo.Text = info.desseo;
                txtdesc.Text = info.description;
                txtkeyword.Text = info.tag;
                Content.Text = info.content;
                drpNhomTin.SelectedIndex = info.priceTypeId;
                chkAction.Checked = info.action;
                drpNhomTin.SelectedValue = info.priceTypeId.ToString();
                if (Images != "")
                {
                    Images = "/images/prices/" + info.id / 200 + "/" + info.id + "/" + info.image;
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
            var info = new PriceInfo();
            info.title = txtTenTin.Text;
            info.priceTypeName = drpNhomTin.SelectedItem.Text;
            info.priceTypeId = int.Parse(drpNhomTin.SelectedValue);
            info.content = Content.Text;
            info.desseo = txtMotaSeo.Text;
            info.description = txtdesc.Text;
            var nextId = UntilityFunction.nextId("tbl_Price");
            info.link = Rewrite.GenDetail(info.priceTypeName, info.priceTypeId, nextId, info.title, Rewrite.ListPrice);
            info.altImage = Server.HtmlEncode(info.title);
            info.tag = txtkeyword.Text;
            info.CreateDate = DateTime.Now;
            info.action = chkAction.Checked;
            if (upHinhanh.HasFile)
            {
                info.image = UploadImage(nextId);
            }
            ServiceFactory.GetInstancePrice().Add(info);

            return true;
        }

        private string UploadImage(int id)
        {
            string returns = "";
            var ext = Path.GetExtension(upHinhanh.FileName).ToLower();
            if (ext.Equals(".jpg") || ext.Equals(".png") || ext.Equals(".jpeg"))
            {
                var filename = UnicodeUtility.UrlRewriting(txtTenTin.Text);
                var path = Server.MapPath("~/images/prices/" + id / 200 + "/" + id + "/");
                if (!Directory.Exists(path)) Directory.CreateDirectory(path);
                upHinhanh.SaveAs(path + filename + ext);
                ResizeImage.ImageCrop(upHinhanh.FileBytes, path + "168.109." + filename + ext, 168, 109, 60);
                returns = filename + ext;
            }
            return returns;
        }

        private bool EditNews()
        {
            var info = ServiceFactory.GetInstancePrice().GetInfo(int.Parse(Request.QueryString["id"]));
            if (info != null)
            {
                info.title = txtTenTin.Text;
                info.priceTypeName = drpNhomTin.SelectedItem.Text;
                info.priceTypeId = int.Parse(drpNhomTin.SelectedValue);
                info.content = Content.Text;
                info.desseo = txtMotaSeo.Text;
                info.description = txtdesc.Text;
                info.link = Rewrite.GenDetail(info.priceTypeName, info.priceTypeId, info.id, info.title, Rewrite.ListPrice);
                info.altImage = Server.HtmlEncode(info.title);
                info.tag = txtkeyword.Text;
                info.CreateDate = DateTime.Now;
                info.action = chkAction.Checked;
                if (upHinhanh.HasFile)
                {
                    info.image = UploadImage(info.id);
                }
                ServiceFactory.GetInstancePrice().Update(info);
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
            Response.Redirect("list-price.aspx");

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
            Response.Redirect("edit-price.aspx");
        }
    }
}
