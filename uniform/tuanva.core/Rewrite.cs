using System.Text.RegularExpressions;
using tuanva.Core;

namespace SunLaw.Core
{
    public static class Rewrite
    {
        public const string Product = "/san-pham/";
        public const string News = "/tin-tuc/";
        public const string ListPrice = "/bang-gia/";
        public const string Consult = "/tu-van/";
        public const string About = "/gioi-thieu/";
        public const string Carreer = "/tuyen-dung/";

        /// <summary>
        /// Sinh mã cho nhóm
        /// </summary>
        /// <param name="cateName">Tên nhóm chưa rewrite</param>
        /// <param name="idCate">mã nhóm</param>
        /// <param name="cateType">Kiểu nhóm Ex: Rewrite.Product</param>
        /// <returns></returns>
        public static string GenCate(string cateName,int idCate,string cateType)
        {
            // /san-pham/tu-van-c2.html
            return cateType + UnicodeUtility.UrlRewriting(cateName).RemoveDuplicate("-c\\d+") + "-c" + idCate + ".htm";
        }

        /// <summary>
        /// Sinh mã Url cho chi tiết
        /// </summary>
        /// <param name="cateName">Tên nhóm</param>
        /// <param name="idCate">mã nhóm</param>
        /// <param name="idDetail">id tin chi tiết</param>
        /// <param name="nameDetail">tên tin chi tiết</param>
        /// <param name="cateType">kiểu nhóm (Rewrite.Product - Tức là loại url sản phẩm)</param>
        /// <returns></returns>
        public static string GenDetail(string cateName, int idCate, int idDetail, string nameDetail, string cateType)
        {
            // /san-pham/tu-van-c2/dong-phuc-dep-d8.html
            return cateType + UnicodeUtility.UrlRewriting(cateName).RemoveDuplicate("-c\\d+") + "-c" + idCate + "/" + UnicodeUtility.UrlRewriting(nameDetail).RemoveDuplicate("-d\\d+") + "-d" + idDetail + ".htm";
        }

        private static string RemoveDuplicate(this string chuoi,string pattern)
        {
            // -c43 => --43 cai-co-c476552228 -c54.htm
            var regex = new Regex(pattern); // -c\d+
            return regex.Replace(chuoi, "-");
        }
    }
}
