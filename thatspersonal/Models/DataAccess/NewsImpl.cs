using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using Models.Entity;
using tuanva.Core;

namespace Models.DataAccess
{
	public class NewsImpl
    {
        private static NewsImpl _NewsImpl;
        public static NewsImpl Instance
        {
            get { return _NewsImpl ?? (_NewsImpl = new NewsImpl()); }
        }

        public int Add(NewsInfo info)
        {
			SqlParameter[] param = {
			                        new SqlParameter("@CateId", info.CateId),
			                        new SqlParameter("@CateName", info.CateName),
			                        new SqlParameter("@Title", info.Title),
			                        new SqlParameter("@Description", info.Description),
			                        new SqlParameter("@Content", info.Content),
			                        new SqlParameter("@Image", info.Image),
			                        new SqlParameter("@AltImage", info.AltImage),
			                        new SqlParameter("@CreateDate", info.CreateDate),
			                        new SqlParameter("@Action", info.Action),
			                        new SqlParameter("@Link", info.Link),
			                        new SqlParameter("@MetaKeyword", info.MetaKeyword),
			                        new SqlParameter("@MetaDescription", info.MetaDescription),
			                        new SqlParameter("@MetaHeading", info.MetaHeading),
			                        new SqlParameter("@IsAttach", info.IsAttach),
			                        new SqlParameter("@TitleRewrite", info.TitleRewrite),
			                        new SqlParameter("@LanguageId", info.LanguageId)			
		   };
            return int.Parse(DataHelper.ExecuteScalar(Config.ConnectString, "usp_News_Add", param).ToString());           
        }
        
        public int Update(NewsInfo info)
        {
			SqlParameter[] param = {
									   new SqlParameter("@Id", info.Id),
                                       new SqlParameter("@CateId", info.CateId),
			                           new SqlParameter("@CateName", info.CateName),
			                           new SqlParameter("@Title", info.Title),
			                           new SqlParameter("@Description", info.Description),
			                           new SqlParameter("@Content", info.Content),
			                           new SqlParameter("@Image", info.Image),
			                           new SqlParameter("@AltImage", info.AltImage),
			                           new SqlParameter("@CreateDate", info.CreateDate),
			                           new SqlParameter("@Action", info.Action),
			                           new SqlParameter("@Link", info.Link),
			                           new SqlParameter("@MetaKeyword", info.MetaKeyword),
			                           new SqlParameter("@MetaDescription", info.MetaDescription),
			                           new SqlParameter("@MetaHeading", info.MetaHeading),
			                           new SqlParameter("@IsAttach", info.IsAttach),
			                           new SqlParameter("@TitleRewrite", info.TitleRewrite),
			                           new SqlParameter("@LanguageId", info.LanguageId)			
								   };
            return DataHelper.ExecuteNonQuery(Config.ConnectString, "usp_News_Update", param);    
        }


        public int Delete(int id)
        {
            SqlParameter[] param = {
									   new SqlParameter("@Id", id)
								   };
            return DataHelper.ExecuteNonQuery(Config.ConnectString, "usp_News_Delete", param);   
        }

        public NewsInfo GetInfo(int id)
        {
            NewsInfo info = null;
			SqlParameter[] param = {
									   new SqlParameter("@Id", id)
			
								   };
            var r = DataHelper.ExecuteReader(Config.ConnectString, "usp_News_GetById", param);
			if (r != null)
			{
				info = new NewsInfo();
				while (r.Read())
				{
					info.Id = Int32.Parse(r["Id"].ToString());
			        info.CateId = Int32.Parse(r["CateId"].ToString());
			        info.CateName = r["CateName"].ToString();
			        info.Title = r["Title"].ToString();
			        info.Description = r["Description"].ToString();
			        info.Content = r["Content"].ToString();
			        info.Image = r["Image"].ToString();
			        info.AltImage = r["AltImage"].ToString();
			        info.CreateDate = Convert.ToDateTime(r["CreateDate"]);
			        info.Action = Convert.ToBoolean(r["Action"]);
			        info.Link = r["Link"].ToString();
			        info.MetaKeyword = r["MetaKeyword"].ToString();
			        info.MetaDescription = r["MetaDescription"].ToString();
			        info.MetaHeading = r["MetaHeading"].ToString();
			        info.IsAttach = Convert.ToBoolean(r["IsAttach"]);
			        info.TitleRewrite = r["TitleRewrite"].ToString();
			        info.LanguageId = r["LanguageId"].ToString();
			
				}
				r.Close();
                r.Dispose();
			}
			return info;
        }

        public List<NewsInfo> GetList(int pageIndex, int pageSize, out int total)
        {
            List<NewsInfo> list = null;
            var t = 0;
            SqlParameter[] param = {
                                       new SqlParameter("@pageIndex",pageIndex),
                                       new SqlParameter("@pageSize",pageSize),
                                       new SqlParameter("@totalrow",DbType.Int32){Direction = ParameterDirection.Output}
                                   };
            SqlCommand comx;
            var r = DataHelper.ExecuteReader(Config.ConnectString, "usp_News_GetList", param, out comx);
            if (r != null)
            {
                list = new List<NewsInfo>();
                while (r.Read())
                {
					var info = new NewsInfo();
                    info.Id = Int32.Parse(r["Id"].ToString());
			        info.CateId = Int32.Parse(r["CateId"].ToString());
			        info.CateName = r["CateName"].ToString();
			        info.Title = r["Title"].ToString();
			        info.Description = r["Description"].ToString();
			        info.Content = r["Content"].ToString();
			        info.Image = r["Image"].ToString();
			        info.AltImage = r["AltImage"].ToString();
			        info.CreateDate = Convert.ToDateTime(r["CreateDate"]);
			        info.Action = Convert.ToBoolean(r["Action"]);
			        info.Link = r["Link"].ToString();
			        info.MetaKeyword = r["MetaKeyword"].ToString();
			        info.MetaDescription = r["MetaDescription"].ToString();
			        info.MetaHeading = r["MetaHeading"].ToString();
			        info.IsAttach = Convert.ToBoolean(r["IsAttach"]);
			        info.TitleRewrite = r["TitleRewrite"].ToString();
			        info.LanguageId = r["LanguageId"].ToString();
					
                    list.Add(info);
                }
                r.Close();
                r.Dispose();
                t = int.Parse(comx.Parameters[2].Value.ToString());
            }
            total = t;
            return list;
        }

        public List<NewsInfo> GetList(int pageIndex, int pageSize, out int total, int CateId)
        {
            List<NewsInfo> list = null;
            var t = 0;
            SqlParameter[] param = {
                                       new SqlParameter("@pageIndex",pageIndex),
                                       new SqlParameter("@pageSize",pageSize),
                                       new SqlParameter("@totalrow",DbType.Int32){Direction = ParameterDirection.Output},
                                       new SqlParameter("@CateId",CateId) 
                                   };
            SqlCommand comx;
            var r = DataHelper.ExecuteReader(Config.ConnectString, "usp_news_GetList", param, out comx);
            if (r != null)
            {
                list = new List<NewsInfo>();
                while (r.Read())
                {
                    var info = new NewsInfo();
                    info.Id = Int32.Parse(r["Id"].ToString());
                    info.CateId = Int32.Parse(r["CateId"].ToString());
                    info.CateName = r["CateName"].ToString();
                    info.Title = r["Title"].ToString();
                    info.Description = r["Description"].ToString();
                    info.Content = r["Content"].ToString();
                    info.Image = r["Image"].ToString();
                    info.AltImage = r["AltImage"].ToString();
                    info.CreateDate = Convert.ToDateTime(r["CreateDate"]);
                    info.Action = Convert.ToBoolean(r["Action"]);
                    info.Link = r["Link"].ToString();
                    info.MetaKeyword = r["MetaKeyword"].ToString();
                    info.MetaDescription = r["MetaDescription"].ToString();
                    info.MetaHeading = r["MetaHeading"].ToString();
                    info.IsAttach = Convert.ToBoolean(r["IsAttach"]);
                    info.TitleRewrite = r["TitleRewrite"].ToString();
                    info.LanguageId = r["LanguageId"].ToString();

                    list.Add(info);
                }
                r.Close();
                r.Dispose();
                t = int.Parse(comx.Parameters[2].Value.ToString());
            }
            total = t;
            return list;
        }
    }
}
