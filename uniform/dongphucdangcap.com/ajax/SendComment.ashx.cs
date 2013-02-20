using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.Caching;
using System.Web.Services;
using App_Code;
using uniform.Entity;

namespace dongphucdangcap.com.ajax
{
    /// <summary>
    /// Summary description for $codebehindclassname$
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    public class SendComment : IHttpHandler
    {
        private const string cachcomment = "constantCacheIp_Comment_";

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            var times = 0;
            var username = context.Request.Form["username"];
            var comment = Emotify(context.Request.Form["comment"]);
            var ip = context.Request.ServerVariables["REMOTE_ADDR"];
            var cach = context.Cache[cachcomment + ip];
            if (cach != null) times = int.Parse(cach.ToString());
            if (times >= 0 && times < 15)
            {
                //Insert
                var info = new chatboxInfo();
                info.isAdmin = false;
                info.active = true;
                info.name = username;
                info.comment = comment;
                ServiceFactory.GetInstanceChatbox().Add(info);
                //Recache
                //context.Cache.Add(cachcomment + ip.Replace(".", "_"), ++times, null, DateTime.Now.AddDays(1),Cache.NoSlidingExpiration, CacheItemPriority.Normal, null);
                context.Response.Write(1);
            }
            else
            {
                context.Response.Write(2);
            }
            context.Response.End();
        }

        public bool IsReusable
        {
            get { return false; }
        }

        private static string Emotify(string inputText)
        {
            #region Create Emote hashtable

            var htEmotes = new Hashtable(100);
            htEmotes.Add(":))", "21");
            htEmotes.Add(":)>-", "67");
            htEmotes.Add(":)", "1");
            htEmotes.Add(":-)", "1");
            htEmotes.Add(":((", "20");
            htEmotes.Add(":(", "2");
            htEmotes.Add("=))", "24");
            htEmotes.Add(":D", "4");
            htEmotes.Add(":p", "10");
            // Add other Yahoo emotes

            #endregion

            var sb = new StringBuilder(inputText.Length);

            for (int i = 0; i < inputText.Length; i++)
            {
                string strEmote = string.Empty;
                foreach (string emote in htEmotes.Keys)
                {
                    if (inputText.Length - i >= emote.Length &&
                        emote.Equals(inputText.Substring(i, emote.Length),
                                     StringComparison.InvariantCultureIgnoreCase))
                    {
                        strEmote = emote;
                        break;
                    }
                }

                if (strEmote.Length != 0)
                {
                    sb.AppendFormat("<img src='/Content/yahoo/{0}.gif' alt='{1}' />",
                                    htEmotes[strEmote], strEmote);
                    i += strEmote.Length - 1;
                }
                else
                {
                    sb.Append(inputText[i]);
                }
            }
            return sb.ToString();
        }

    }
}
