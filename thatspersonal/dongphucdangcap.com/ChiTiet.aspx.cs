using System;
using Models.Entity;

namespace dongphucdangcap.com
{
    public partial class ChiTiet : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var ms = (DP) Master;
            ms.Facebook=new FacebookInfo(FacebookInfo.EOgType.article,"","","m","Hêlu");
        }
    }
}
