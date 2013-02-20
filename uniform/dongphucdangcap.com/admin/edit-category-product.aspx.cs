using System;
using App_Code;
using LicSystem.Core;
using tuanva.Core;
using uniform.Entity;

namespace dongphucdangcap.com.admin
{
    public partial class edit_category_product : System.Web.UI.Page
    {
        protected static bool IsEdit;
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
            var info = ServiceFactory.GetInstanceProducType().GetInfo(id);
            if (info != null)
            {
                HD_ID.Value = info.id.ToString();
                TB_Name.Text = info.name;
                IsEdit = true;
            }
            else
            {
                HD_ID.Value = "0";
                TB_Name.Text = "";
            }
        }

        protected void BT_Save_Click(object sender, EventArgs e)
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
                MessageBox.Show("Bạn chưa nhập tên nhóm?");
                return false;
            }
            int id = UntilityFunction.IntegerForNull(HD_ID.Value);
            var type = new producTypeInfo();
            type.id = id;
            type.name = TB_Name.Text;
            type.link = "";
            if (id > 0)
            {
                ServiceFactory.GetInstanceProducType().Update(type);
                MessageBox.Show("Cập nhật thành công");
            }
            else
            {
                HD_ID.Value = ServiceFactory.GetInstanceProducType().Add(type).ToString();
                MessageBox.Show("Thêm mới thành công");
            }
            return true;
        }

        protected void BT_Cancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("list-category-product.aspx");
        }

        protected void BT_Save_Click2(object sender, EventArgs e)
        {
            if (save())
            {
                clearText();
            }
        }

        private void clearText()
        {
            HD_ID.Value = "0";
            TB_Name.Text = "";
        }
    }
}
