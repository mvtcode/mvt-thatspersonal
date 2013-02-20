using System;
using System.IO;
using System.Web;
using LicSystem.Core;
using Models.DataAccess;
using Models.Entity;
using tuanva.Core;

namespace dongphucdangcap.com.admin
{
    public partial class edit_slideshow : System.Web.UI.Page
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
            var info = SliderImpl.Instance.GetInfo(id);
            if (info != null)
            {
                LB_Messenger.Text = "Sửa thông tin slideshow";
                HD_ID.Value = info.id.ToString();
                TB_Name.Text = info.name;
                TB_Alt.Text = info.alt;
                TB_Link.Text = info.link;
                Image1.ImageUrl = info.image != ""
                                      ? Config.GetPathSlideshow + info.image
                                      : Config.GetPathNoImage;
                HD_Image.Value = info.image;
            }
            else
            {
                LB_Messenger.Text = "Thêm mới slideshow";
                HD_ID.Value = "0";
                TB_Name.Text = "";
                TB_Link.Text = "";
                TB_Alt.Text = "";
                Image1.ImageUrl = Config.GetPathNoImage;
                HD_Image.Value = "";
                TB_Alt.Text = "";
            }
        }

        protected void Link_Save_Click(object sender, EventArgs e)
        {
            save();
        }

        private void save()
        {
            string sImage = UploadImage(HD_Image.Value);
            if (sImage != "") HD_Image.Value = sImage;

            int id = UntilityFunction.IntegerForNull(HD_ID.Value);
            SliderInfo info = new SliderInfo();
            info.id = id;
            info.name = TB_Name.Text;
            info.image = HD_Image.Value;
            info.alt = TB_Alt.Text;
            info.link = TB_Link.Text;
            if (id > 0)
            {
                SliderImpl.Instance.Update(info);
                MessageBox.Show("Cập nhật thành công");
            }
            else
            {
                HD_ID.Value = SliderImpl.Instance.Add(info).ToString();
                MessageBox.Show("Thêm mới thành công");
                LB_Messenger.Text = "Sửa thông tin slideshow";
            }

            Image1.ImageUrl = info.image != ""
                                      ? Config.GetPathSlideshow + info.image
                                      : Config.GetPathNoImage;
        }

        protected void Link_SaveAndBack_Click(object sender, EventArgs e)
        {
            save();
            Response.Redirect("list-slideshow.aspx");
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
                            sFileNameOut = UnicodeUtility.UrlRewriting(TB_Name.Text);
                            string sName = Server.MapPath(Config.GetPathSlideshow + sFileNameOut);
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
                            WriteToFile(Server.MapPath(Config.GetPathSlideshow + sOnlyName + sType), ref myData);
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
    }
}
