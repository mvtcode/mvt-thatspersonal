using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using App_Code;
using LicSystem.Core;
using SunLaw.Core;
using tuanva.Core;
using uniform.Entity;

namespace dongphucdangcap.com.admin
{
    public partial class edit_product : System.Web.UI.Page
    {
        protected bool IsEdit;
        protected void Page_Load(object sender, EventArgs e)
        {
            //UntilityFunction.nextId("tbl_product");
            if (!IsPostBack)
            {
                Load_DDL();

                if (Request.QueryString["ProductTypeId"] != null)
                {
                    HD_TypeID.Value = Request.QueryString["ProductTypeId"];
                }

                if (Request.QueryString["id"] != null)
                {
                    HD_ID.Value = Request.QueryString["id"];
                    int id = UntilityFunction.IntegerForNull(HD_ID.Value);
                    loadinfo(id);
                }
                else
                {
                    DDL_Selected(DDL_ProductType, HD_TypeID.Value);
                }
            }
        }

        private void Load_DDL()
        {
            int iOtype;
            DDL_ProductType.DataSource = ServiceFactory.GetInstanceProducType().GetAll(out iOtype);
            DDL_ProductType.DataValueField = "id";
            DDL_ProductType.DataTextField = "name";
            DDL_ProductType.DataBind();
        }

        private void DDL_Selected(DropDownList ddl, string svalue)
        {
            if (DDL_ProductType.Items.FindByValue(svalue) != null)
            {
                DDL_ProductType.Items.FindByValue(svalue).Selected = true;
            }
            else
            {
                ddl.SelectedIndex = -1;
            }
        }

        private void loadinfo(int id)
        {
            var info = ServiceFactory.GetInstanceProduct().GetInfo(id);
            if (info != null)
            {
                IsEdit = true;
                HD_ID.Value = info.id.ToString();
                TB_Name.Text = info.name;
                TB_Description.Text = info.description;
                TB_tag.Text = info.tag;
                Image1.ImageUrl = info.image != ""
                                      ? UntilityFunction.GetPathImage(Config.GetPathProduct, info.id, 200) + info.image
                                      : Config.GetPathNoImage;
                HD_Image.Value = info.image;
                TB_Alt.Text = info.altImage;
                DDL_Selected(DDL_ProductType, info.ProductTypeId.ToString());
                CB_Hot.Checked = info.isHot;
            }
            else
            {
                clearText();
                DDL_Selected(DDL_ProductType, HD_TypeID.Value);
            }
        }

        protected void Link_Save_Click(object sender, EventArgs e)
        {
            Save();
            clearText();
        }

        protected void Link_SaveAndBack_Click(object sender, EventArgs e)
        {
            Save();
            Response.Redirect("list-product.aspx");
        }

        private void Save()
        {
            productInfo info;
            var nextId = 0;
            if(!string.IsNullOrEmpty(Request.QueryString["id"]) && int.Parse(Request.QueryString["id"])>0)
            {
                info = ServiceFactory.GetInstanceProduct().GetInfo(int.Parse(Request.QueryString["id"]));
                if(info==null) Response.Redirect("edit-product.aspx",true);
                nextId = info.id;
            }
            else
            {
                info = new productInfo();
                nextId = UntilityFunction.nextId("tbl_product");
            }
            
            info.ProductTypeId = UntilityFunction.IntegerForNull(DDL_ProductType.SelectedValue);
            info.ProductName = DDL_ProductType.SelectedItem.Text;
            info.name = TB_Name.Text;
            info.description = TB_Description.Text;
            info.tag = TB_tag.Text;
            if(Upload_Images.HasFile)
            {
                info.image = UploadImage(nextId);
            }
            info.altImage = TB_Alt.Text;
            info.isHot = CB_Hot.Checked;
            info.price = 0;
            info.link = Rewrite.GenDetail(info.ProductName, info.ProductTypeId,info.id == 0 ? UntilityFunction.nextId("tbl_product") : info.id, info.name,Rewrite.Product);
            if (info.id>0 )
            {
                ServiceFactory.GetInstanceProduct().Update(info);
                MessageBox.Show("Cập nhật thành công");
            }
            else
            {
                info.id = nextId;
                HD_ID.Value = ServiceFactory.GetInstanceProduct().Add(info).ToString();
                MessageBox.Show("Thêm mới thành công");
                IsEdit = true;
            }

            Image1.ImageUrl = info.image != ""
                                      ? UntilityFunction.GetPathImage(Config.GetPathProduct, info.id, 200) + info.image
                                      : Config.GetPathNoImage;
        }

        private string UploadImage(int id)
        {
            string returns="";
            var ext = Path.GetExtension(Upload_Images.FileName).ToLower();
            if(ext.Equals(".jpg") || ext.Equals(".png") || ext.Equals(".jpeg"))
            {
                var filename = UnicodeUtility.UrlRewriting(TB_Name.Text);
                var path = Server.MapPath("~/images/product/" + id/200 + "/" + id + "/");
                if (!Directory.Exists(path)) Directory.CreateDirectory(path);
                Upload_Images.SaveAs(path + filename + ext);
                ResizeImage.ImageCrop(Upload_Images.FileBytes, path + "208.129." + filename + ext, 208, 129, 60);
                ResizeImage.ImageCrop(Upload_Images.FileBytes, path + "256.158." + filename + ext, 256, 158, 60);
                returns = filename + ext;
            }
            return returns;
        }

        private void WriteToFile(string strPath, ref byte[] Buffer)
        {
            FileStream newFile = new FileStream(strPath, FileMode.Create);
            newFile.Write(Buffer, 0, Buffer.Length);
            newFile.Close();
        }

        private void clearText()
        {
            IsEdit = false;
            HD_ID.Value = "0";
            Image1.ImageUrl = Config.GetPathNoImage;
            HD_Image.Value = "";
            TB_Alt.Text = "";
            //DDL_ProductType.SelectedIndex = -1;
            TB_Name.Text = "";
            TB_Description.Text = "";
            CB_Hot.Checked = false;
            TB_tag.Text = "";
        }
    }
}
