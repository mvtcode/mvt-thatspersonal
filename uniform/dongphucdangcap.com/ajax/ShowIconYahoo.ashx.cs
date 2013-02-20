using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Services;

namespace dongphucdangcap.com.ajax
{
    /// <summary>
    /// Summary description for $codebehindclassname$
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    public class ShowIconYahoo : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            var user = context.Request.QueryString["yahoo"];
            if(string.IsNullOrEmpty(user)) return;
            //request to yahoo server
            var request = (HttpWebRequest)WebRequest.Create("http://opi.yahoo.com/online?u="+user+"&m=s&t=8");

            // setting up connection with web and posting
            var response = (HttpWebResponse)request.GetResponse();       // Returns httpwebresponse
            var reader = new StreamReader(response.GetResponseStream());
            var isOffline = (reader.ReadToEnd()).IndexOf("NOT");
            context.Response.Clear();
            context.Response.Status = "301 Moved Permanently";
            context.Response.AddHeader("Location",(isOffline > 0 ? "/Content/images/off-yahoo.png" : "/Content/images/on-yahoo.png"));
            context.Response.End();
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}
