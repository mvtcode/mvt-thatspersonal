﻿using System;
using Models.DataAccess;
using Models.Entity;

namespace dongphucdangcap.com.admin
{
    public partial class update_profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                var user = Session["UserInfo"] as UserInfo;
                if(user!=null)
                {
                    Username.Text = user.Username;
                    Password.Text = user.Password;
                    Fullname.Text = user.Fullname;
                }
            }
        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            var user = Session["UserInfo"] as UserInfo;
            if(user==null) return;
            user.Username = Username.Text;
            if (!string.IsNullOrEmpty(Password.Text)) user.Password = Password.Text;
            user.Fullname = Fullname.Text;
            var userAfter = UserImpl.Instance.UpdateProfile(user);
            if(userAfter==null)
            {
                ltrThongbao.Text = "Xảy ra lỗi!";
                return;
            }
            Session["UserInfo"] = userAfter;
            Response.Redirect("/admin");
        }
    }
}
