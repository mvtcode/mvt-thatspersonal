using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using App_Code;
using LicSystem.Core;
using tuanva.Core;
using uniform.Entity;

namespace dongphucdangcap.com.admin
{
    public partial class edit_newspromotion : System.Web.UI.Page
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
            }
        }

        private void loadinfo(int id)
        {
            var info = ServiceFactory.GetInstanceNewsPromotion().GetInfo(id);
            if (info != null)
            {
                LB_Messenger.Text = "Sửa thông tin tin khuyến mại";
                HD_ID.Value = info.id.ToString();
                TB_Title.Text = info.title;
                TB_Description.Text = info.description;
                TB_tag.Text = info.tag;
                TB_Sort.Text = string.Format("{0:N0}", info.sort);
                Image1.ImageUrl = info.image != ""
                                      ? Config.GetPathImagePromotion + info.image
                                      : Config.GetPathNoImage;
                HD_Image.Value = info.image;
                CB_Show.Checked = info.action;
                Editer_Content.Text = info.content;
            }
            else
            {
                clearText();
            }
        }

        private void save()
        {
            string sImage = UploadImage(HD_Image.Value);
            if (sImage != "") HD_Image.Value = sImage;

            int id = UntilityFunction.IntegerForNull(HD_ID.Value);
            newsPromotionInfo info = new newsPromotionInfo();
            info.id = id;
            info.title = TB_Title.Text;
            info.description = TB_Description.Text;
            info.tag = TB_tag.Text;
            info.sort = UntilityFunction.IntegerForNull(TB_tag.Text);
            info.image = HD_Image.Value;
            info.action = CB_Show.Checked;
            info.content = Editer_Content.Text;
            info.link = "";
            if (id > 0)
            {
                ServiceFactory.GetInstanceNewsPromotion().Update(info);
                MessageBox.Show("Cập nhật thành công");
            }
            else
            {
                HD_ID.Value = ServiceFactory.GetInstanceNewsPromotion().Add(info).ToString();
                MessageBox.Show("Thêm mới thành công");
                LB_Messenger.Text = "Sửa thông tin khuyến mại";
            }

            Image1.ImageUrl = info.image != ""
                                      ? Config.GetPathImagePromotion + info.image
                                      : Config.GetPathNoImage;
        }

        private string UploadImage(string sNameOld)
        {
            if (Upload_Images.PostedFile != null)
            {
                HttpPostedFile myFile = Upload_Images.PostedFile;
                int nFileLen = myFile.ContentLength;
                if (nFileLen > 0)
                {
                    //if(nFileLen>10240) file quá lớn (>10MB)!

                    byte[] myData = new byte[nFileLen];
                    myFile.InputStream.Read(myData, 0, nFileLen);
                    string strFilename = Path.GetFileName(myFile.FileName);
                    string sFileNameOut = "";
                    string sType = Path.GetExtension(strFilename);

                    if (sType.ToUpper() == ".JPG" || sType.ToUpper() == ".PNG" || sType.ToUpper() == ".BMP" || sType.ToUpper() == ".GIF")
                    {
                        if (sNameOld == "")
                        {
                            sFileNameOut = UnicodeUtility.UrlRewriting(TB_Title.Text);
                            string sName = Server.MapPath(Config.GetPathImagePromotion + sFileNameOut);
                            if (File.Exists(sName + sType))
                            {
                                int i = 1;
                                while (File.Exists(sName + "_" + i.ToString() + sType))
                                {
                                    i++;
                                }
                                sName += "_" + i.ToString();
                                sFileNameOut += "_" + i.ToString();
                            }
                            WriteToFile(sName + sType, ref myData);
                            return sFileNameOut + sType;
                        }
                        else
                        {
                            string sOnlyName = Path.GetFileNameWithoutExtension(sNameOld);
                            WriteToFile(Server.MapPath(Config.GetPathImagePromotion + sOnlyName + sType), ref myData);
                            return sNameOld;
                        }
                    }
                }
            }
            return "";
        }

        private void WriteToFile(string strPath, ref byte[] Buffer)
        {
            FileStream newFile = new FileStream(strPath, FileMode.Create);
            newFile.Write(Buffer, 0, Buffer.Length);
            newFile.Close();
        }

        protected void Link_Save_Click(object sender, EventArgs e)
        {
            save();
            clearText();
        }

        protected void Link_SaveAndBack_Click(object sender, EventArgs e)
        {
            save();
            Response.Redirect("list-newspromotion.aspx");
        }

        private void clearText()
        {
            LB_Messenger.Text = "Thêm mới tin khuyến mại";
            HD_ID.Value = "0";
            TB_Title.Text = "";
            TB_Description.Text = "";
            TB_tag.Text = "";
            TB_Sort.Text = "";
            Image1.ImageUrl = Config.GetPathNoImage;
            HD_Image.Value = "";
            CB_Show.Checked = false;
            Editer_Content.Text = "";
        }
    }
}
