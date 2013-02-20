using System.Configuration;

namespace Models.Entity
{
    public class FacebookInfo
    {
        public enum EOgType
        {
            website,
            article,
            blog
        }

        public EOgType OgType { get; private set; }
        public string OgUrl { get; private set; }
        public string OgImage { get; private set; }
        public string OgDescription { get; private set; }
        public string OgTitle { get; private set; }
        public string FbAdmins {
            get { return ConfigurationManager.AppSettings["fbadmins"]; }
        }
        public string OgSiteName {
            get { return ConfigurationManager.AppSettings["fbsitename"]; }
        }

        public FacebookInfo(EOgType ogType,string ogUrl, string ogImage,string ogDescription,string ogTitle)
        {
            OgType = ogType;
            OgUrl = ogUrl;
            OgImage = string.IsNullOrEmpty(ogImage)?ConfigurationManager.AppSettings["AbsoluteNoImagePath"]:ogImage;
            OgDescription = ogDescription;
            OgTitle = ogTitle;
        }

        public string FaceBookToMeta()
        {
            return string.Format("<meta property=\"og:type\" content=\"{0}\" />" +
                                 "<meta property=\"og:site_name\" content=\"{1}\" />" +
                                 "<meta property=\"og:title\" content=\"{2}\" />" +
                                 "<meta property=\"og:description\" content=\"{3}\" />" +
                                 "<meta property=\"og:image\" content=\"{4}\" />" +
                                 "<meta property=\"og:url\" content=\"{5}\" />" +
                                 "<meta property=\"fb:admins\" content=\"{6}\" />",
                                 OgType,OgSiteName,OgTitle,OgDescription,OgImage,OgUrl,FbAdmins);
        }
    }
}
