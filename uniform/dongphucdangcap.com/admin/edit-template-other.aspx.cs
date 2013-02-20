using System;
using System.IO;
using System.Text;

namespace dongphucdangcap.com.admin
{
    public partial class edit_template : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                panelSupport.Visible = false;
                panelCTV.Visible = false;
            }
        }

        protected void btnAc_Click(object sender, EventArgs e)
        {
            if(panelSupport.Visible)
            {
                var stream = new StreamWriter(Server.MapPath("~/html/listctv.htm"));
                stream.Write(txtSupport.Text);
                stream.Close();
                stream.Dispose();

            }
            if(panelCTV.Visible)
            {
                var stream = new StreamWriter(Server.MapPath("~/html/listctv.htm"));
                stream.Write(txtCTV.Text);
                stream.Close();
                stream.Dispose();
            }
        }

        protected void drpKhuvuc_SelectedIndexChanged(object sender, EventArgs e)
        {
            var check = int.Parse(drpKhuvuc.SelectedValue);
            if(check==1)
            {
                panelSupport.Visible = true;
                panelCTV.Visible = false;
                var stream = new StreamReader(Server.MapPath("~/html/yahoosupport.htm"));
                txtSupport.Text = stream.ReadToEnd();
                stream.Close();
                stream.Dispose();
            }
            else if(check ==2)
            {
                panelSupport.Visible = false;
                panelCTV.Visible = true;
                var stream = new StreamReader(Server.MapPath("~/html/listctv.htm"));
                txtCTV.Text = stream.ReadToEnd();
                stream.Close();
                stream.Dispose();
            }
        }
    }
}
