using System;
using System.Web.UI.WebControls;
using LicSystem.Core;
using Models.DataAccess;
using tuanva.Core;

namespace dongphucdangcap.com.admin
{
    public partial class edit_order_product : System.Web.UI.Page
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
                else Response.Redirect("/admin/");
            }
        }

        private void Load_DDL()
        {
            DDL_StatusOrder.Items.Add(new ListItem("Đơn hàng mới", "0"));
            DDL_StatusOrder.Items.Add(new ListItem("Hủy bỏ", "1"));
            DDL_StatusOrder.Items.Add(new ListItem("Hết hàng", "2"));
            DDL_StatusOrder.Items.Add(new ListItem("Đã giao hàng", "3"));
        }

        private void loadinfo(int id)
        {
            var info = OrderImpl.Instance.GetInfo(id);
            if (info != null)
            {
                Load_DDL();
                HD_ID.Value = info.OrderID.ToString();
                LB_FullnameOrder.Text = info.FullnameOrder;
                LB_SexOrder.Text = info.SexOrder==0?"Nữ":"Nam";
                LB_AddressOrder.Text = info.AddressOrder;
                LB_EmailOrder.Text = info.EmailOrder;
                LB_MobileOrder.Text = info.MobileOrder;
                LB_FaxOrder.Text = info.FaxOrder;
                LB_OtherInfoOrder.Text = info.OtherInfoOrder;

                LB_FullnameReceived.Text = info.FullnameReceived;
                LB_SexReceived.Text=info.SexReceived==0?"Nữ":"Nam";
                LB_AddressReceived.Text = info.AddressReceived;
                LB_EmailReceived.Text = info.EmailReceived;
                LB_MobileReceived.Text = info.MobileReceived;
                LB_FaxReceived.Text = info.FaxReceived;
                LB_OtherInfoReceived.Text = info.OtherInfoReceived;

                LB_Shipping.Text = info.Shipping.ToString();
                LB_TransitTime.Text = string.Format("{0:HH:mm dd/MM/yyyy}", info.TransitTime);
                LB_Payment.Text = string.Format("{0:N0}", info.Payment);

                LoagGrid(info.OrderID);
                
                LB_ProductNumber.Text=string.Format("{0:N0}", info.ProductNumber);
                LB_TotalPayment.Text=string.Format("{0:N0}", info.TotalPayment);
                if (DDL_StatusOrder.Items.FindByValue(info.StatusOrder.ToString()) != null)
                    DDL_StatusOrder.Items.FindByValue(info.StatusOrder.ToString()).Selected = true;
            }
            else
            {
                HD_ID.Value = "0";
                Response.Redirect("/admin/");
            }
        }

        private void LoagGrid(int id)
        {
            int n;
            GV_Product.DataSource = OrderDetailImpl.Instance.GetAll(id,out n);
            GV_Product.DataBind();
        }

        protected void Link_Save_Click(object sender, EventArgs e)
        {
            if(save())
            MessageBox.Show("Cập nhật thành công");
        }

        private bool save()
        {
            OrderImpl.Instance.UpdateStatus(UntilityFunction.IntegerForNull(HD_ID.Value),
                                            UntilityFunction.IntegerForNull(DDL_StatusOrder.SelectedValue));
            return true;
        }

        protected void Link_SaveAndBack_Click(object sender, EventArgs e)
        {
            if (save())
                Response.Redirect("/list-order-product.aspx");
        }
    }
}
