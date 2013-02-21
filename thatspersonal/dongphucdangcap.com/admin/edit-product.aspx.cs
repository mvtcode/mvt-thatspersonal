using System;
using System.IO;
using LicSystem.Core;
using Models.DataAccess;
using Models.Entity;
using UrlRewritingNet.Web;
using tuanva.Core;

namespace dongphucdangcap.com.admin
{
    public partial class edit_product : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Load_DDL_Type();
                if (Request.QueryString["id"] != null)
                {
                    HD_ID.Value = Request.QueryString["id"];
                    int id = UntilityFunction.IntegerForNull(HD_ID.Value);
                    loadinfo(id);
                }
                else
                {
                    HD_TypeID.Value = Request.QueryString["type"];
                    if (DDL_ProductType.Items.FindByValue(HD_TypeID.Value) != null)
                        DDL_ProductType.Items.FindByValue(HD_TypeID.Value).Selected = true;
                }
            }
        }

        private void Load_DDL_Type()
        {
            int n;
            DDL_ProductType.DataSource = ProductCategoryImpl.Instance.GetAll(out n);
            DDL_ProductType.DataTextField = "Name";
            DDL_ProductType.DataValueField = "Id";
            DDL_ProductType.DataBind();
            //DDL_ProductType.Items.Insert(0, new ListItem("", "0"));
        }

        private void loadinfo(int id)
        {
            var info = ProductImpl.Instance.GetInfo(id);
            if (info != null)
            {
                HD_ID.Value = info.id.ToString();
                TB_Name.Text = info.name;
                TB_ProductName.Text = info.ProductName;
                HD_Image.Value = info.image;
                HD_TypeID.Value = info.CateId.ToString();
                if (DDL_ProductType.Items.FindByValue(info.CateId.ToString()) != null)
                    DDL_ProductType.Items.FindByValue(info.CateId.ToString()).Selected = true;
                Image1.ImageUrl = info.image != ""
                                      ? Config.GetPathProduct + info.image
                                      : Config.GetPathNoImage;
                TB_Description.Text = info.description;
                TB_Tag.Text = info.tag;
                TB_Keyword.Text = info.Keyword;
                TB_Content.Text = info.contents;
                TB_Alt.Text = info.altImage;
                TB_Price.Text = info.price.ToString();
                TB_Size.Text = info.size;
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
                Response.Redirect("list-product.aspx?type=" + HD_TypeID.Value);
            }
        }

        private bool save()
        {
            if (string.IsNullOrEmpty(TB_Name.Text))
            {
                MessageBox.Show("Bạn chưa nhập tên sản phẩm");
                return false;
            }
            int id = UntilityFunction.IntegerForNull(HD_ID.Value);
            //upload image
            if (Upload_Images.HasFile)
            {
                if (UploadImage() != "")
                    HD_Image.Value = UploadImage();
            }
            string sLink = "/" + UnicodeUtility.UrlRewriting(DDL_ProductType.SelectedItem.Text) + "/" + DDL_ProductType.SelectedValue + 
                (id ==0? UntilityFunction.nextId("Product").ToString(): id.ToString()) + "/" + UnicodeUtility.UrlRewriting(TB_Name.Text.Trim())+".htm";
            var info = new ProductInfo
            {
                id = id,
                name = TB_Name.Text.Trim(),
                CateId = UntilityFunction.IntegerForNull(DDL_ProductType.SelectedValue),
                CateName = DDL_ProductType.SelectedItem.Text,
                Link = sLink,
                description = TB_Description.Text.Trim(),
                contents = TB_Content.Text.Trim(),
                tag = TB_Tag.Text.Trim(),
                Keyword =TB_Keyword.Text.Trim(),
                price = UntilityFunction.IntegerForNull(TB_Price.Text.Trim()),
                size = TB_Size.Text.Trim(),
                image = HD_Image.Value,
                ProductName = TB_ProductName.Text.Trim(),
                altImage = TB_Alt.Text.Trim(),
                isHot = false
            };
            if (id > 0)
            {
                ProductImpl.Instance.Update(info);
                MessageBox.Show("Cập nhật thành công");
            }
            else
            {
                //int nextId = UntilityFunction.nextId("Product"); 
                //info.Link = "";
                HD_ID.Value = ProductImpl.Instance.Add(info).ToString();
                MessageBox.Show("Thêm mới thành công");
            }
            return true;
        }

        private void clearText()
        {
            HD_ID.Value = "0";
            TB_Name.Text = "";
            TB_ProductName.Text = "";
            HD_Image.Value = "";
            //HD_TypeID.Value = "0";
            //if (DDL_ProductType.Items.Count > 0)
            //    DDL_ProductType.SelectedIndex = 0;
            Image1.ImageUrl = Config.GetPathNoImage;
            TB_Description.Text = "";
            TB_Alt.Text = "";
            TB_Price.Text = "";
            TB_Size.Text = "";
            TB_Content.Text = "";
            TB_Tag.Text = "";
        }

        private string UploadImage()
        {
            string returns = "";
            var ext = Path.GetExtension(Upload_Images.FileName).ToLower();
            if (ext.Equals(".bmp") || ext.Equals(".gif") || ext.Equals(".jpg") || ext.Equals(".png") || ext.Equals(".jpeg"))
            {
                var filename = UnicodeUtility.UrlRewriting(TB_Name.Text);
                var path = Server.MapPath("~/images/Product/");
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
