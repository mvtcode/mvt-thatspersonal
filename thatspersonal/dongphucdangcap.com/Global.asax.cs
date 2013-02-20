using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace dongphucdangcap.com
{
    public class Global : System.Web.HttpApplication
    {

        void Application_Start(object sender, EventArgs e)
        {
            //Application["DangTruyCap"] = 0;
            //// Kiểm tra nếu chưa tồn tại file thì tạo file Count_Visited.txt
            //if (!File.Exists(Server.MapPath("Count_Visited.txt")))
            //    File.WriteAllText(Server.MapPath("~/Count_Visited.txt"), "0");
            //Application["DaTruyCap"] = int.Parse(File.ReadAllText(Server.MapPath("~/Count_Visited.txt"))); 
        }
        void Application_End(object sender, EventArgs e)
        {
        }


        protected void Application_BeginRequest(object sender, EventArgs e)
        {
            if (HttpContext.Current.Request.Url.ToString().ToLower().Contains("http://www.dongphucdangcap.com"))
            {
                HttpContext.Current.Response.Status = "301 Moved Permanently";
                HttpContext.Current.Response.AddHeader("Location", Request.Url.ToString().ToLower().Replace("http://www.dongphucdangcap.com", "http://dongphucdangcap.com"));
            }
        }

        void Application_Error(object sender, EventArgs e)
        {
        }
        void Session_Start(object sender, EventArgs e)
        {
            
        }
        void Session_End(object sender, EventArgs e)
        {
            
        }     
    }
}