using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Models.DataAccess;
using Models.Entity;

namespace dongphucdangcap.com.admin
{
    public partial class edit_customer : System.Web.UI.Page
    {
        protected bool IsEdit;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (!string.IsNullOrEmpty(Request.QueryString["Id"]))
                    BindUser();
                else
                    LinkButton1.Enabled = false;
            }
        }

        private void BindUser()
        {
            var id = int.Parse(Request.QueryString["Id"]);
            var info = CustormerImpl.Instance.GetInfo(id);
            if (info == null)
            {
                Response.Redirect("~/admin/");
                return;
            }
            IsEdit = true;
            Session["id"] = info.id;
            LB_Email.Text = info.Email;
            TB_FirstName.Text = info.FirstName;
            TB_LastName.Text = info.Lastname;
            TB_Phone.Text = info.Phone;
            TB_Address.Text = info.Address;
        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            int id=(int)Session["id"];
            CustormerInfo info = new CustormerInfo
            {
                id = id,
                FirstName = TB_FirstName.Text.Trim(),
                Lastname = TB_LastName.Text.Trim(),
                Phone = TB_Phone.Text.Trim(),
                Address = TB_Address.Text.Trim(),
                Active=true
            };
            CustormerImpl.Instance.Update(info);
            if (TB_Password.Text.Trim().Length > 0)
                CustormerImpl.Instance.UpdatePassword(id, TB_Password.Text.Trim());
        }
    }
}
