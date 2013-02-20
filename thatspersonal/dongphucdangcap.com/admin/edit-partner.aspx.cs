using System;
using Models.DataAccess;
using Models.Entity;
using tuanva.Core;
using Helpers;

namespace dongphucdangcap.com.admin
{
    public partial class edit_partner : System.Web.UI.Page
    {
        protected int Id
        {
            get
            {
                if(ViewState["id"]!=null)
                {
                    return (int)ViewState["id"];
                }
                return 0;
            }
            set { ViewState["id"] = value; }
        }
        protected PartnerInfo Info
        {
            get
            {
                if(ViewState["PartnerInfo"]!=null)
                {
                    return (PartnerInfo) ViewState["PartnerInfo"];
                }
                return null;
            }
            set { ViewState["PartnerInfo"] = value; }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var id = Request.QueryString["id"];
                if (!string.IsNullOrEmpty(id) && ConvertUtility.ToInt16(id) > 0)
                {
                    Info = PartnerImpl.Instance.GetInfo(ConvertUtility.ToInt16(id));
                    if (Info != null)
                    {
                        Id = ConvertUtility.ToInt16(id);
                        txtPartner.Text = Info.Name;
                        txtAlt.Text = Info.Alt;
                        txtDescription.Text = Info.Description;
                        txtLinks.Text = Info.Link;
                    }
                }
            }
        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            if(Id==0) 
                Info=new PartnerInfo();
            else
                Info = PartnerImpl.Instance.GetInfo(Id);
            Info.Name = txtPartner.Text;
            Info.Alt = txtAlt.Text;
            Info.Description = txtDescription.Text;
            Info.Link = txtLinks.Text;
            if(ImageFile.HasFile)
            {
                string ext;
                if(ImageHelper.ImageValidation(ImageFile, new[] {"png", "jpg", "jpeg"},out ext))
                {
                    Info.Image = UnicodeUtility.UrlRewriting(Info.Name) + ext;
                    ImageHelper.Upload(ImageFile.FileBytes, Info.Image, ImageHelper.Partner);
                }
                else
                {
                    //Bắt lỗi
                }
            }

            if (Id==0) PartnerImpl.Instance.Add(Info);
            else PartnerImpl.Instance.Update(Info);
            Response.Redirect("list-partner.aspx");
        }
    }
}
