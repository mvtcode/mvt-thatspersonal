using System;
using System.Web.UI.WebControls;
using App_Code;
using tuanva.Core;

namespace dongphucdangcap.com.admin
{
    public partial class list_price : System.Web.UI.Page
    {
        private readonly int _pageSize = Config.RecordPerPage;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindDropCateNews();
                BindGridNews();
            }
        }

        private void BindGridNews()
        {
            var pageindex = 1;
            drpPageNum.Items.Clear();
            drpPageNum.Items.Add(new ListItem("1"));
            if (!string.IsNullOrEmpty(Request.QueryString["page"]) && int.Parse(Request.QueryString["page"]) > 1)
            {
                pageindex = int.Parse(Request.QueryString["page"]);
            }
            int totalRow;
            var dtsNews = ServiceFactory.GetInstancePrice().GetList(pageindex - 1, _pageSize, out totalRow, int.Parse(drpCate.SelectedItem.Value));
            var totalPage = totalRow % _pageSize == 0 ? totalRow / _pageSize : (totalRow / _pageSize) + 1;
            if (totalPage > 1)
            {
                for (int i = 2; i <= totalPage; i++)
                {
                    drpPageNum.Items.Add(i.ToString());
                }
            }
            drpPageNum.DataBind();
            GridNews.DataSource = dtsNews;
            GridNews.DataBind();
        }

        private void BindDropCateNews()
        {
            var dtSource = ServiceFactory.GetInstancePriceType().GetAll();
            drpCate.DataSource = dtSource;
            drpCate.DataTextField = "name";
            drpCate.DataValueField = "id";
            drpCate.DataBind();
            drpCate.Items.Insert(0, new ListItem("[ Tất cả ]", "0"));
        }

        protected void drpPageNum_SelectedIndexChanged(object sender, EventArgs e)
        {
            Response.Redirect("list-price.aspx?page=" + drpPageNum.SelectedItem.Value);
        }

        protected void DDL_ProductType_SelectedIndexChanged(object sender, EventArgs e)
        {
            BindGridNews();
        }

        protected void GV_Product_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            var newsid = int.Parse(GridNews.DataKeys[e.RowIndex].Value.ToString());
            ServiceFactory.GetInstancePrice().Delete(newsid);
            BindGridNews();
        }

        protected void GV_Product_RowEditing(object sender, GridViewEditEventArgs e)
        {
            var newsid = int.Parse(GridNews.DataKeys[e.NewEditIndex].Value.ToString());
            Response.Redirect("edit-price.aspx?id=" + newsid);
        }
    }
}
