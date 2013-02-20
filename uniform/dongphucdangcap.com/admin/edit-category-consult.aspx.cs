using System;
using System.Collections.Generic;
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
    public partial class edit_category_consult : System.Web.UI.Page
    {
        protected bool IsEdit;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) txtSort.Text = "0";
            if (!string.IsNullOrEmpty(Request.QueryString["Id"]))
            {
                if (!IsPostBack) BindCate();
                IsEdit = true;
            }
        }

        private void BindCate()
        {
            var id = int.Parse(Request.QueryString["id"]);
            var info = ServiceFactory.GetInstanceAdviceType().GetInfo(id);
            if (info == null)
            {
                Response.Redirect("list-category-consult.aspx");
                return;
            }
            txtCategoryname.Text = info.name;
            txtSort.Text = info.sort.ToString();
            txtTukhoa.Text = info.keyword;
            txtMota.Text = info.description;
        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            if (!IsEdit)
            {
                if (!AddNewCate()) return;
            }
            else
            {
                if (!UpdatCate()) return;
            }
            Response.Redirect("list-category-consult.aspx");
        }

        private bool AddNewCate()
        {
            if (string.IsNullOrEmpty(txtCategoryname.Text) || string.IsNullOrEmpty(txtSort.Text))
            {
                ltrThongbao.Text = "Cần nhập đủ các trường!";
                return false;
            }
            var info = new AdviceTypeInfo();
            info.name = txtCategoryname.Text;
            var nextId = UntilityFunction.nextId("tbl_Advice_Type");
            info.link = Rewrite.GenCate(info.name, nextId, Rewrite.Consult);
            info.sort = int.Parse(txtSort.Text);
            info.description = txtMota.Text;
            info.keyword = txtTukhoa.Text;
            ServiceFactory.GetInstanceAdviceType().Add(info);
            return true;
        }

        protected void Unnamed1_Click2(object sender, EventArgs e)
        {
            if (!IsEdit)
            {
                if (!AddNewCate()) return;
            }
            else
            {
                if (string.IsNullOrEmpty(Request.QueryString["id"])) return;
                if (!UpdatCate()) return;
            }
            Response.Redirect("edit-category-consult.aspx");
        }

        private bool UpdatCate()
        {
            if (string.IsNullOrEmpty(txtCategoryname.Text) || string.IsNullOrEmpty(txtSort.Text)) return false;
            var info = ServiceFactory.GetInstanceAdviceType().GetInfo(int.Parse(Request.QueryString["id"]));
            if (info != null)
            {
                info.name = txtCategoryname.Text;
                info.sort = int.Parse(txtSort.Text);
                info.link = Rewrite.GenCate(info.name, info.id, Rewrite.Consult);
                info.description = txtMota.Text;
                info.keyword = txtTukhoa.Text;

                ServiceFactory.GetInstanceAdviceType().Update(info);
                return true;
            }
            return false;
        }
    }
}
