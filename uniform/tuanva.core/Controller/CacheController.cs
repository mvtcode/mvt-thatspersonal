using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using tuanva.Core.Provider;

namespace tuanva.Core.Controller
{
    public class CacheController
    {
        #region Cache ListMenu
        public static object ListMenuGet()
        {
            return CacheProvider.Get("lstmenu");
        }

        public static void ListMenuRemove()
        {
            CacheProvider.Remove("lstmenu");
        }

        public static void ListMenuAdd(object s)
        {
            CacheProvider.Add("lstmenu",s);
        }
        #endregion

        #region Cache List Category
        public static object ListCategoryGet()
        {
            return CacheProvider.Get("lstcategory");
        }

        public static void ListCategoryRemove()
        {
            CacheProvider.Remove("lstcategory");
        }

        public static void ListCategoryAdd(object s)
        {
            CacheProvider.Add("lstcategory", s);
        }
        #endregion

        #region Cache List ListTopArticleByLanguageID
        public static object ListTopArticleByLanguageIDGet(int top, string lang)
        {
            return CacheProvider.Get("ListTopArticleByLanguageID" + top + lang);
        }

        public static void ListTopArticleByLanguageIDAdd(int top,string lang, object s)
        {
            CacheProvider.Add("ListTopArticleByLanguageID" + top + lang,s);
        }

        public static void ListTopArticleByLanguageIDRemove(int top,string lang)
        {
            CacheProvider.Remove("ListTopArticleByLanguageID" + top + lang);
        }
        #endregion

        #region Cache ListTopArticleByLanguageIDAndArticleID
        public static object ListTopArticleByLanguageIDAndArticleIDGet(int top, string lang, int acticleId)
        {
            return CacheProvider.Get("ListTopArticleByLanguageIDAndArticleID_" + top+"_" + lang+"_" + acticleId);
        }

        public static void ListTopArticleByLanguageIDAndArticleIDAdd(int top, string lang, int acticleId,object s)
        {
            CacheProvider.Add("ListTopArticleByLanguageIDAndArticleID_" + top + "_" + lang + "_" + acticleId, s);
        }

        public static void ListTopArticleByLanguageIDAndArticleIDRemove(int top, string lang, int acticleId)
        {
            CacheProvider.Remove("ListTopArticleByLanguageIDAndArticleID_" + top + "_" + lang + "_" + acticleId);
        }

        #endregion

        #region Cache GetListTopArticleByLanguageIDAndPosition
        public static object GetListTopArticleByLanguageIDAndPositionGet(int top, string lang, int position)
        {
            return CacheProvider.Get("GetListTopArticleByLanguageIDAndPosition_" + top + lang + position);
        }

        public static void GetListTopArticleByLanguageIDAndPositionAdd(int top, string lang, int position, object s)
        {
            CacheProvider.Add("GetListTopArticleByLanguageIDAndPosition_" + top + lang + position,s);
        }

        public static void GetListTopArticleByLanguageIDAndPositionRemove(int top, string lang, int position)
        {
            CacheProvider.Remove("GetListTopArticleByLanguageIDAndPosition_" + top + lang + position);
        }
        #endregion

        #region Cache Block
        public static object ListArticleGet(int cateId, string lang)
        {
            return CacheProvider.Get("ListArticle_" + cateId + lang);
        }

        public static void ListArticleAdd(int cateId, string lang,object s)
        {
            CacheProvider.Add("ListArticle_"+cateId+lang,s);
        }

        public static void ListArticleRemove(int cateId, string lang)
        {
            CacheProvider.Remove("ListArticle_"+cateId+lang);   
        }
        #endregion

        #region Advertise
        public static object ListByCategoryAndLanguageGet(int cateId, string lang)
        {
            return CacheProvider.Get("ListByCategoryAndLanguage_" + cateId + lang);
        }

        public static void ListByCategoryAndLanguageAdd(int cateId, string lang, object s)
        {
            CacheProvider.Add("ListByCategoryAndLanguage_" + cateId + lang, s);
        }

        public static void ListByCategoryAndLanguageRemove(int cateId, string lang)
        {
            CacheProvider.Remove("ListByCategoryAndLanguage_" + cateId + lang);
        }
        #endregion

        #region DvBlock
        public static object DvNoiBat_Get(int cateId, string lang)
        {
            return CacheProvider.Get("DvNoiBat_Get_" + cateId + lang);
        }

        public static void DvNoiBat_GetAdd(int cateId, string lang, object s)
        {
            CacheProvider.Add("DvNoiBat_Get_" + cateId + lang, s);
        }

        public static void DvNoiBat_GetRemove(int cateId, string lang)
        {
            CacheProvider.Remove("DvNoiBat_Get_" + cateId + lang);
        }
        #endregion
    }
}
