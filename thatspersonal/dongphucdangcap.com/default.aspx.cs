using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Models.Entity;
using Models.StringHelper;

namespace dongphucdangcap.com
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var ms = (DP) Master;
            ms.Facebook=new FacebookInfo(FacebookInfo.EOgType.website,"","","Description","Hêlu");
            ms.MetaInfo = MetaHelper.MetaRender("day la mo ta", "day la meta");
        }
    }
}
