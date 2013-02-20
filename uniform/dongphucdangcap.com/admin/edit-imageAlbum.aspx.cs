using System;
using System.IO;
using System.Web;
using App_Code;
using LicSystem.Core;
using tuanva.Core;
using uniform.Entity;

namespace dongphucdangcap.com.admin
{
    public partial class edit_imageAlbum : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Load_DDL();

                if (Request.QueryString["AlbumId"] != null)
                {
                    HD_AlbumID.Value = Request.QueryString["AlbumId"];
                }

                if (Request.QueryString["id"] != null)
                {
                    HD_ID.Value = Request.QueryString["id"];
                    int id = UntilityFunction.IntegerForNull(HD_ID.Value);
                    loadinfo(id);
                }
                else
                {
                    if (DDL_Album.Items.FindByValue(HD_AlbumID.Value) != null)
                    {
                        DDL_Album.Items.FindByValue(HD_AlbumID.Value).Selected = true;
                    }
                }
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

        private void loadinfo(int id)
        {
            var info = ServiceFactory.GetInstanceImageAlbum().GetInfo(id);
            if (info != null)
            {
                LB_Messenger.Text = "Sửa thông tin ảnh của Album";
                HD_ID.Value = info.id.ToString();
                Image1.ImageUrl = info.images != ""
                                      ? Config.GetPathAlbum + info.images
                                      : Config.GetPathNoImage;
                HD_Image.Value = info.images;
                TB_Alt.Text = info.altImage;
                if (DDL_Album.Items.FindByValue(info.AlbumId.ToString()) != null)
                {
                    DDL_Album.Items.FindByValue(info.AlbumId.ToString()).Selected = true;
                }
            }
            else
            {
                clearText();
                if (DDL_Album.Items.FindByValue(HD_AlbumID.Value) != null)
                {
                    DDL_Album.Items.FindByValue(HD_AlbumID.Value).Selected = true;
                }
            }
        }

        protected void Link_Save_Click(object sender, EventArgs e)
        {
            save();
            clearText();
        }

        protected void Link_SaveAndBack_Click(object sender, EventArgs e)
        {
            save();
            Response.Redirect("list-imageAlbum.aspx");
        }

        private void save()
        {
            string sImage = UploadImage(HD_Image.Value);
            if (sImage != "") HD_Image.Value = sImage;

            int id = UntilityFunction.IntegerForNull(HD_ID.Value);
            imageAlbumInfo info = new imageAlbumInfo();
            info.id = id;
            info.images = HD_Image.Value;
            info.altImage = TB_Alt.Text;
            info.AlbumId = UntilityFunction.IntegerForNull(HD_AlbumID.Value);
            info.AlbumName = DDL_Album.SelectedItem.Text;
            if (id > 0)
            {
                ServiceFactory.GetInstanceImageAlbum().Update(info);
                MessageBox.Show("Cập nhật thành công");
            }
            else
            {
                HD_ID.Value = ServiceFactory.GetInstanceImageAlbum().Add(info).ToString();
                MessageBox.Show("Thêm mới thành công");
                LB_Messenger.Text = "Sửa thông tin Album";
            }

            Image1.ImageUrl = info.images != ""
                                      ? Config.GetPathAlbum + info.images
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
                            sFileNameOut = UnicodeUtility.UrlRewriting(DDL_Album.SelectedItem.Text);
                            string sName = Server.MapPath(Config.GetPathAlbum + sFileNameOut);
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
                            WriteToFile(Server.MapPath(Config.GetPathAlbum + sOnlyName + sType), ref myData);
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

        private void clearText()
        {
            LB_Messenger.Text = "Thêm mới ảnh vào Album";
            HD_ID.Value = "0";
            Image1.ImageUrl = Config.GetPathNoImage;
            HD_Image.Value = "";
            TB_Alt.Text = "";
        }
    }
}
