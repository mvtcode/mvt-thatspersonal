using System.Configuration;
using SunLaw.Core.Encrypt;

namespace tuanva.Core
{
    public class Config
    {
        private static string _ConnectionString;

        public static string ConnectString
        {
            get
            {
                if(string.IsNullOrEmpty(_ConnectionString)) _ConnectionString= Encrypt.DecryptConn(ConfigurationManager.AppSettings["conStr"]);
                //return _ConnectionString;
                return @"SERVER=sunlaw.com.vn;UID=webquanao;Password=mvt;database=dongphuc-new";
            }
        }
        private static string _ImgPathShow;
        public static string ImgPathShow
        {
            get { 
                if(string.IsNullOrEmpty(_ImgPathShow))
                    _ImgPathShow = ConfigurationManager.AppSettings["ImgPathShow"];
                return _ImgPathShow;
            }

        }

        private static string _ServerSolr;
        public static string ServerSolr
        {
            get
            {
                if (string.IsNullOrEmpty(_ServerSolr))
                    _ServerSolr = ConfigurationManager.AppSettings["ServerSolr"];
                return _ServerSolr;
            }

        }

        public static string LogPath
        {
            get { return ConfigurationManager.AppSettings["LogPath"]; }
        }

        public static string PathAdmin
        {
            get { return ConfigurationManager.AppSettings["PathAdmin"]; }
        }

        public static string LoginAdmin
        {
            get { return ConfigurationManager.AppSettings["LoginAdmin"]; }
        }

        public static string PathNotRight
        {
            get { return ConfigurationManager.AppSettings["PathNotRight"]; }
        }

        public static string PathError
        {
            get { return ConfigurationManager.AppSettings["PathError"]; }
        }

        private static int _RecordPerPage;
        public static int RecordPerPage
        {
            get
            {
                _RecordPerPage = int.TryParse(ConfigurationManager.AppSettings["PageSizeAdmin"], out _RecordPerPage) ? int.Parse(ConfigurationManager.AppSettings["PageSizeAdmin"]) : 40;

                return _RecordPerPage;
            }
        }

        public static string PathUpload
        {
            get { return ConfigurationManager.AppSettings["PathUpload"]; }
        }

        public static string HtmlFolder
        {
            get { return ConfigurationManager.AppSettings["HtmlFolder"]; }
        }

        public static string CacheLink
        {
            get { return ConfigurationManager.AppSettings["CacheLink"]; }
        }

        public static string AdminFolder
        {
            get { return ConfigurationManager.AppSettings["AdminFolder"]; }
        }

        public static string ContactMail4
        {
            get { return ConfigurationManager.AppSettings["ContactMail4"]; }
        }

        

        //
        public static string GetPathImagePromotion
        {
            get { return ConvertUtility.ToString(ConfigurationManager.AppSettings["ImagePromotion"]); }
        }

        public static string GetPathNoImage
        {
            get { return ConvertUtility.ToString(ConfigurationManager.AppSettings["NoImage"]); }
        }

        public static string GetPathAlbum
        {
            get { return ConvertUtility.ToString(ConfigurationManager.AppSettings["ImageAlbum"]); }
        }

        public static string GetPathCategoryProduct
        {
            get { return ConvertUtility.ToString(ConfigurationManager.AppSettings["ImageCategoryProduct"]); }
        }

        public static string GetPathProduct
        {
            get { return ConvertUtility.ToString(ConfigurationManager.AppSettings["ImageProduct"]); }
        }

        public static string GetPathSlideshow
        {
            get { return ConvertUtility.ToString(ConfigurationManager.AppSettings["ImageSlideshow"]); }
        }

        public static int PageSizeNews
        {
            get { return int.Parse(ConfigurationManager.AppSettings["PageSizeNews"]); }
        }
        public static int PageSizeProduct
        {
            get { return int.Parse(ConfigurationManager.AppSettings["PageSizeProduct"]); }
        }
    }
}