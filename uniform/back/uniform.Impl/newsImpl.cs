using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using tuanva.Core;
using uniform.Entity;
using uniform.Services;

namespace uniform.Impl
{
	public class newsImpl : Inews
    {
        public int Add(newsInfo info)
        {
			SqlParameter[] param = {
			    new SqlParameter("@newsTypeId", info.newsTypeId),
			new SqlParameter("@newsTypeName", info.newsTypeName),
			new SqlParameter("@title", info.title),
			new SqlParameter("@description", info.description),
			new SqlParameter("@content", info.content),
			new SqlParameter("@image", info.image),
			new SqlParameter("@altImage", info.altImage),
			new SqlParameter("@tag", info.tag),
			new SqlParameter("@CreateDate", info.CreateDate),
			new SqlParameter("@sort", info.sort),
			new SqlParameter("@action", info.action),
			new SqlParameter("@link", info.link)			
		   };
            return int.Parse(DataHelper.ExecuteScalar(Config.ConnectString, "usp_news_Add", param).ToString());           
        }
        
        public int Update(newsInfo info)
        {
			SqlParameter[] param = {
									   new SqlParameter("@id", info.id)
			,new SqlParameter("@newsTypeId", info.newsTypeId),
			new SqlParameter("@newsTypeName", info.newsTypeName),
			new SqlParameter("@title", info.title),
			new SqlParameter("@description", info.description),
			new SqlParameter("@content", info.content),
			new SqlParameter("@image", info.image),
			new SqlParameter("@altImage", info.altImage),
			new SqlParameter("@tag", info.tag),
			new SqlParameter("@CreateDate", info.CreateDate),
			new SqlParameter("@sort", info.sort),
			new SqlParameter("@action", info.action),
			new SqlParameter("@link", info.link)			
								   };
            return DataHelper.ExecuteNonQuery(Config.ConnectString, "usp_news_Update", param);    
        }


        public int Delete(int id)
        {
            SqlParameter[] param = {
									   new SqlParameter("@id", id)
			
								   };
            return DataHelper.ExecuteNonQuery(Config.ConnectString, "usp_news_Delete", param);   
        }

        public newsInfo GetInfo(int id)
        {
            newsInfo info = null;
			SqlParameter[] param = {
									   new SqlParameter("@id", id)
			
								   };
            var r = DataHelper.ExecuteReader(Config.ConnectString, "usp_news_GetById", param);
			if (r != null)
			{
				info = new newsInfo();
				while (r.Read())
				{
					info.id = Int32.Parse(r["id"].ToString());
			info.newsTypeId = Int32.Parse(r["newsTypeId"].ToString());
			info.newsTypeName = r["newsTypeName"].ToString();
			info.title = r["title"].ToString();
			info.description = r["description"].ToString();
			info.content = r["content"].ToString();
			info.image = r["image"].ToString();
			info.altImage = r["altImage"].ToString();
			info.tag = r["tag"].ToString();
			info.CreateDate = Convert.ToDateTime(r["CreateDate"]);
			info.sort = Int32.Parse(r["sort"].ToString());
			info.action = Convert.ToBoolean(r["action"]);
			info.link = r["link"].ToString();
			
				}
				r.Close();
                r.Dispose();
			}
			return info;
        }

        public List<newsInfo> GetList(int pageIndex, int pageSize, out int total)
        {
            List<newsInfo> list = null;
            var t = 0;
            SqlParameter[] param = {
                                       new SqlParameter("@pageIndex",pageIndex),
                                       new SqlParameter("@pageSize",pageSize),
                                       new SqlParameter("@totalrow",DbType.Int32){Direction = ParameterDirection.Output}
                                   };
            SqlCommand comx;
            var r = DataHelper.ExecuteReader(Config.ConnectString, "usp_news_GetList", param, out comx);
            if (r != null)
            {
                list = new List<newsInfo>();
                while (r.Read())
                {
					var info = new newsInfo();
                    info.id = Int32.Parse(r["id"].ToString());
			info.newsTypeId = Int32.Parse(r["newsTypeId"].ToString());
			info.newsTypeName = r["newsTypeName"].ToString();
			info.title = r["title"].ToString();
			info.description = r["description"].ToString();
			info.content = r["content"].ToString();
			info.image = r["image"].ToString();
			info.altImage = r["altImage"].ToString();
			info.tag = r["tag"].ToString();
			info.CreateDate = Convert.ToDateTime(r["CreateDate"]);
			info.sort = Int32.Parse(r["sort"].ToString());
			info.action = Convert.ToBoolean(r["action"]);
			info.link = r["link"].ToString();
			
					
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
