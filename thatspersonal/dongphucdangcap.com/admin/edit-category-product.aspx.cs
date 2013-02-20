using System;
using System.IO;
using System.Web.UI.WebControls;
using LicSystem.Core;
using Models.DataAccess;
using Models.Entity;
using tuanva.Core;

namespace dongphucdangcap.com.admin
{
    public partial class edit_category_product : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.QueryString["id"] != null)
                {
                    HD_ID.Value = Request.QueryString["id"];
                    int id = UntilityFunction.IntegerForNull(HD_ID.Value);
                    loadinfo(id);
                }
                Load_DDL_Type();
            }
        }

        private void Load_DDL_Type()
        {
            DDL_ProductType.DataSource = ProductCategoryImpl.Instance.GetListByParent(0);
            DDL_ProductType.DataTextField = "Name";
            DDL_ProductType.DataValueField = "Id";
            DDL_ProductType.DataBind();
            DDL_ProductType.Items.Insert(0,new ListItem("","0"));
        }

        private void loadinfo(int id)
        {
            var info = ProductCategoryImpl.Instance.GetInfo(id);
            if (info != null)
            {
                HD_ID.Value = info.Id.ToString();
                TB_Name.Text = info.Name;
                HD_Image.Value = info.Image;
                HD_TypeID.Value = info.ParentId.ToString();
                if (DDL_ProductType.Items.FindByValue(info.ParentId.ToString()) != null)
                    DDL_ProductType.Items.FindByValue(info.ParentId.ToString()).Selected = true;
                Image1.ImageUrl = info.Image != ""
                                      ? Config.GetPathCategoryProduct + info.Image
                                      : Config.GetPathNoImage;
                TB_Description.Text = info.Description;
                TB_MetaDescription.Text = info.MetaDescription;
                TB_MetaKeyword.Text = info.MetaKeyword;
                TB_MetaHeading.Text = info.MetaHeading;
                TB_Summary.Text = info.Summary;
            }
            else
            {
                HD_ID.Value = "0";
                TB_Name.Text = "";
            }
        }

        protected void Link_Save_Click(object sender, EventArgs e)
        {
            //Lưu và thêm mới
            if (save())
            {
                clearText();
            }
        }

        protected void Link_SaveAndBack_Click(object sender, EventArgs e)
        {
            //Lưu và quay lại list category
            if (save())
            {
                Response.Redirect("list-category-product.aspx");
            }
        }

        private bool save()
        {
            if (string.IsNullOrEmpty(TB_Name.Text))
            {
                MessageBox.Show("Bạn chưa nhập tên nhóm sản phẩm");
                return false;
            }
            int id = UntilityFunction.IntegerForNull(HD_ID.Value);
            //upload image
            if (Upload_Images.HasFile)
            {
                if (UploadImage()!="")
                    HD_Image.Value = UploadImage();
            }
            var info = new ProductCategoryInfo
                           {
                               Id = id,
                               Name = TB_Name.Text.Trim(),
                               Link = "/" + (id == 0 ? UntilityFunction.nextId("ProductCategory").ToString() : id.ToString()) + "/" + UnicodeUtility.UrlRewriting(TB_Name.Text.Trim()) + ".htm",
                               Sort = 0,
                               Description = TB_Description.Text.Trim(),
                               MetaDescription = TB_MetaDescription.Text.Trim(),
                               MetaKeyword = TB_MetaKeyword.Text.Trim(),
                               MetaHeading = TB_MetaHeading.Text.Trim(),
                               ParentId = UntilityFunction.IntegerForNull(DDL_ProductType.SelectedValue),
                               Summary = TB_Summary.Text.Trim(),
                               Image = HD_Image.Value,
                               Zone = "",
                               RewriteTitle = ""
                           };
            if (id > 0)
            {
                ProductCategoryImpl.Instance.Update(info);
                MessageBox.Show("Cập nhật thành công");
            }
            else
            {
                HD_ID.Value = ProductCategoryImpl.Instance.Add(info).ToString();
                MessageBox.Show("Thêm mới thành công");
            }
            return true;
        }

        private void clearText()
        {
            HD_ID.Value = "0";
            TB_Name.Text = "";
            HD_Image.Value = "";
            //HD_TypeID.Value = "0";
            //if (DDL_ProductType.Items.Count > 0)
            //    DDL_ProductType.SelectedIndex = 0;
            Image1.ImageUrl =  Config.GetPathNoImage;
            TB_Description.Text = "";
            TB_MetaDescription.Text = "";
            TB_MetaKeyword.Text = "";
            TB_MetaHeading.Text = "";
            TB_Summary.Text = "";
        }

        private string UploadImage()
        {
            string returns = "";
            var ext = Path.GetExtension(Upload_Images.FileName).ToLower();
            if (ext.Equals(".bmp") || ext.Equals(".gif") || ext.Equals(".jpg") || ext.Equals(".png") || ext.Equals(".jpeg"))
            {
                var filename = UnicodeUtility.UrlRewriting(TB_Name.Text);
                var path = Server.MapPath("~/images/CategoryProduct/");
                if (!Directory.Exists(path)) Directory.CreateDirectory(path);
                Upload_Images.SaveAs(path + filename + ext);
                
                //ResizeImage.ImageCrop(Upload_Images.FileBytes, path + "208.129." + filename + ext, 208, 129, 60);
                //ResizeImage.ImageCrop(Upload_Images.FileBytes, path + "256.158." + filename + ext, 256, 158, 60);

                returns = filename + ext;
            }
            return returns;
        }
    }
}
