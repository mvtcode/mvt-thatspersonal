using System;
using System.Web.UI.WebControls;
using Models.Entity;
using tuanva.Core;

namespace dongphucdangcap.com
{
    public partial class cart : System.Web.UI.Page
    {
        protected Cart Cart
        {
            get{ return ViewState["carts"] as Cart;}
            set { ViewState["carts"] = value; }
        }

        protected double Sum=0;
        protected void Page_Load(object sender, EventArgs e)
        {
            //_cart = Session[Constant.SESSION_KEY_CART] as Cart;
            Title = string.Format("{0} - {1}", Title, Config.SiteTitle);
            if (!IsPostBack)
            {
                //Xu ly form post từ luc addcart
                Cart = Session[Constant.SESSION_KEY_CART] as Cart;

                var type = Request.QueryString["type"];
                if (!string.IsNullOrEmpty(type) && type == "add")
                {

                    var info = new ProductInfo
                    {
                        id = 6,
                        Quantity = 6,
                        price = 5
                    };
                    AddToCart(info);
                }

                //tạo cart lần đầu tiên
                if (Cart == null || Cart.LstProduct.Count == 0)
                {
                    ltrAnnounce.Text += "<ul class=\"messages\"><li class=\"error-msg\"><ul><li><span>Không có sản phẩm nào trong giỏ hàng.</span></li><li><span>Để tiếp tục mua hàng nhấn vào <a href=\"/\">đây</a>.</span></li></ul></li></ul>";
                }
                else
                {
                    rptCart.DataSource = Cart.LstProduct;
                    rptCart.DataBind();
                    Sum = Cart.TotalPrice();
                }
            }

        }

        protected int RptCount()
        {
            return Cart.LstProduct.Count;
        }

        private void AddToCart(ProductInfo product)
        {
            if (Cart == null) Cart = new Cart();

            Cart.AddProduct(product);
            Session[Constant.SESSION_KEY_CART] = Cart;//Cap nhat lai session
            ltrAnnounce.Text = "<ul class=\"messages\"><li class=\"success-msg\"><ul><li><span>Bao cao su Durex đã được thêm vào giỏ hàng.</span></li></ul></li></ul>";
            Form.Action = "gio-hang.htm";
        }

        private void RemoveProduct(string pId, ref Cart cart1)
        {
            cart1.RemoveProduct(int.Parse(pId));
        }

        private void UpdateQuantity(string pId, ref Cart cart1,int quantity)
        {
            cart1.UpdateQuantity(int.Parse(pId),quantity);
        }

        protected void BindingDTS(object sender, RepeaterItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType ==ListItemType.AlternatingItem)
            {
                //Keys.Add(e.Item.ItemIndex, DataBinder.Eval(e.Item.DataItem, "Id"));
            }
        }

        protected void CommandEvent(object source, RepeaterCommandEventArgs e)
        {
            var c = ((HiddenField) e.Item.FindControl("idkey")).Value;
            Cart cart1 = Cart; //Tao bien local de gan
            switch (e.CommandName)
            {
                case "Update":
                    var quantity = ConvertUtility.ToInt16(((TextBox) e.Item.FindControl("txtQuantity")).Text.Trim());
                    UpdateQuantity(c, ref cart1,quantity);
                    break;
                case "Remove":
                    RemoveProduct(c, ref cart1);
                    break;
            }

            if(cart1.LstProduct.Count==0)
            {
                Session.Remove(Constant.SESSION_KEY_CART);
                Cart = null;
                Response.Redirect(Request.Url.ToString());
            }
            else
            {
                Session[Constant.SESSION_KEY_CART] = cart1;
                Cart = cart1;
                rptCart.DataSource = cart1.LstProduct;
                rptCart.DataBind();
                Sum = cart1.TotalPrice();
            }
        }

        protected void UpdateCartRpt(object sender, EventArgs e)
        {
            for (var i=0;i< rptCart.Items.Count;i++)
            {
                var id = ((HiddenField) rptCart.Items[i].FindControl("idkey")).Value;
                var quantity = ((TextBox) rptCart.Items[i].FindControl("txtQuantity")).Text;
                Cart.UpdateQuantity(ConvertUtility.ToInt32(id),ConvertUtility.ToInt16(quantity));
            }
            Session[Constant.SESSION_KEY_CART] = Cart;
            rptCart.DataSource = Cart.LstProduct;
            rptCart.DataBind();
            Sum = Cart.TotalPrice();
        }
    }
}
