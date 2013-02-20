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
			new SqlParameter("@desseo", info.desseo),
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
			new SqlParameter("@desseo", info.desseo),
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
                    if (r["id"] != null && !r["id"].ToString().Equals(""))
                    {
                        info.id = Int32.Parse(r["id"].ToString());
                    }
                    if (r["newsTypeId"] != null && !r["newsTypeId"].ToString().Equals(""))
                    {
                        info.newsTypeId = Int32.Parse(r["newsTypeId"].ToString());
                    }
                    if (r["newsTypeName"] != null && !r["newsTypeName"].ToString().Equals(""))
                    {
                        info.newsTypeName = r["newsTypeName"].ToString();
                    }
                    if (r["title"] != null && !r["title"].ToString().Equals(""))
                    {
                        info.title = r["title"].ToString();
                    }
                    if (r["description"] != null && !r["description"].ToString().Equals(""))
                    {
                        info.description = r["description"].ToString();
                    }
                    if (r["content"] != null && !r["content"].ToString().Equals(""))
                    {
                        info.content = r["content"].ToString();
                    }
                    if (r["image"] != null && !r["image"].ToString().Equals(""))
                    {
                        info.image = r["image"].ToString();
                    }
                    if (r["altImage"] != null && !r["altImage"].ToString().Equals(""))
                    {
                        info.altImage = r["altImage"].ToString();
                    }
                    if (r["tag"] != null && !r["tag"].ToString().Equals(""))
                    {
                        info.tag = r["tag"].ToString();
                    }
                    if (r["CreateDate"] != null && !r["CreateDate"].ToString().Equals(""))
                    {
                        info.CreateDate = Convert.ToDateTime(r["CreateDate"]);
                    }
                    if (r["action"] != null && !r["action"].ToString().Equals(""))
                    {
                        info.action = Convert.ToBoolean(r["action"]);
                    }
                    if (r["link"] != null && !r["link"].ToString().Equals(""))
                    {
                        info.link = r["link"].ToString();
                    }
                    if (r["desseo"] != null && !r["desseo"].ToString().Equals(""))
                    {
                        info.desseo = r["desseo"].ToString();
                    }
                }
                r.Close();
                r.Dispose();
            }
            return info;
        }

        public List<newsInfo> GetList(int pageIndex, int pageSize, out int total,int categoryId)
        {
            List<newsInfo> list = null;
            var t = 0;
            SqlParameter[] param = {
                                       new SqlParameter("@pageIndex",pageIndex),
                                       new SqlParameter("@pageSize",pageSize),
                                       new SqlParameter("@totalrow",DbType.Int32){Direction = ParameterDirection.Output},
                                       new SqlParameter("@categoryId",categoryId) 
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
                    info.desseo = r["desseo"].ToString();
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
