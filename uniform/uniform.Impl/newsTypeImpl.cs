using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using tuanva.Core;
using uniform.Entity;
using uniform.Services;

namespace uniform.Impl
{
    public class newsTypeImpl : InewsType
    {
        public int Add(NewsTypeInfo info)
        {
            SqlParameter[] param = {
                                       new SqlParameter("@name", info.name),
                                       new SqlParameter("@link", info.link),
                                       new SqlParameter("@sort", info.sort),
                                       new SqlParameter("@description", info.description),
                                       new SqlParameter("@keyword", info.keyword)
                                   };

           return int.Parse(DataHelper.ExecuteScalar(Config.ConnectString, "usp_newsType_Add", param).ToString());
        }

        public int Update(NewsTypeInfo info)
        {
            SqlParameter[] param = {
                                       new SqlParameter("@id", info.id), 
                                       new SqlParameter("@name", info.name),
                                       new SqlParameter("@link", info.link),
                                       new SqlParameter("@sort", info.sort),
                                       new SqlParameter("@description", info.description),
                                       new SqlParameter("@keyword", info.keyword)
                                   };

            return DataHelper.ExecuteNonQuery(Config.ConnectString, "usp_newsType_Update", param);
        }


        public int Delete(int id)
        {
            SqlParameter[] param = {
									   new SqlParameter("@id", id)
			
								   };
            return DataHelper.ExecuteNonQuery(Config.ConnectString, "usp_newsType_Delete", param);
        }

        public NewsTypeInfo GetInfo(int id)
        {
            NewsTypeInfo info = null;
            SqlParameter[] param = {
									   new SqlParameter("@id", id)
			
								   };
            var r = DataHelper.ExecuteReader(Config.ConnectString, "usp_newsType_GetById", param);
            if (r != null)
            {
                info = new NewsTypeInfo();
                while (r.Read())
                {
                    if (r["id"] != null && !r["id"].ToString().Equals(""))
                    {
                        info.id = Int32.Parse(r["id"].ToString());
                    }
                    if (r["name"] != null && !r["name"].ToString().Equals(""))
                    {
                        info.name = r["name"].ToString();
                    }
                    if (r["link"] != null && !r["link"].ToString().Equals(""))
                    {
                        info.link = r["link"].ToString();
                    }
                    if (r["sort"] != null && !r["sort"].ToString().Equals(""))
                    {
                        info.sort = Convert.ToInt16(r["sort"].ToString());
                    }
                    if (r["description"] != null && !r["description"].ToString().Equals(""))
                    {
                        info.description = r["description"].ToString();
                    }
                    if (r["keyword"] != null && !r["keyword"].ToString().Equals(""))
                    {
                        info.keyword = r["keyword"].ToString();
                    }
                }
                r.Close();
                r.Dispose();
            }
            return info;
        }

        public List<NewsTypeInfo> GetList(int pageIndex, int pageSize, out int total)
        {
            List<NewsTypeInfo> list = null;
            var t = 0;
            SqlParameter[] param = {
                                       new SqlParameter("@pageIndex",pageIndex),
                                       new SqlParameter("@pageSize",pageSize),
                                       new SqlParameter("@totalrow",DbType.Int32){Direction = ParameterDirection.Output}
                                   };
            SqlCommand comx;
            var r = DataHelper.ExecuteReader(Config.ConnectString, "usp_newsType_GetList", param, out comx);
            if (r != null)
            {
                list = new List<NewsTypeInfo>();
                while (r.Read())
                {
                    var info = new NewsTypeInfo();
                    info.id = Int32.Parse(r["id"].ToString());
                    info.name = r["name"].ToString();
                    info.link = r["link"].ToString();
                    info.sort = int.Parse(r["source"].ToString());

                    list.Add(info);
                }
                r.Close();
                r.Dispose();
                t = int.Parse(comx.Parameters[2].Value.ToString());
            }

            total = t;
            return list;
        }

        public List<NewsTypeInfo> GetAll(out int total)
        {
            List<NewsTypeInfo> list = null;
            var t = 0;
            SqlParameter[] param = {
                                       new SqlParameter("@totalrow",DbType.Int32){Direction = ParameterDirection.Output}
                                   };
            SqlCommand comx;
            var r = DataHelper.ExecuteReader(Config.ConnectString, "usp_newsType_GetAll", param, out comx);
            if (r != null)
            {
                list = new List<NewsTypeInfo>();
                while (r.Read())
                {
                    var info = new NewsTypeInfo();
                    info.id = Int32.Parse(r["id"].ToString());
                    info.name = r["name"].ToString();
                    info.link = r["link"].ToString();
                    info.sort = int.Parse(r["source"].ToString());
                    list.Add(info);
                }
                r.Close();
                r.Dispose();
                t = int.Parse(comx.Parameters[0].Value.ToString());
            }

            total = t;
            return list;
        }

        public List<NewsTypeInfo> GetAll()
        {
            List<NewsTypeInfo> list = null;
            var r = DataHelper.ExecuteReader(Config.ConnectString, "tuan_newsType_GetAll", null);
            if (r != null)
            {
                list = new List<NewsTypeInfo>();
                while (r.Read())
                {
                    var info = new NewsTypeInfo();
                    info.id = Int32.Parse(r["id"].ToString());
                    info.name = r["name"].ToString();
                    info.link = r["link"].ToString();
                    info.sort = int.Parse(r["sort"].ToString());
                    list.Add(info);
                }
                r.Close();
                r.Dispose();
            }
            return list;
        }

        public int UpdateSort(int id,int sort)
        {
            var param = new[]
                            {
                                new SqlParameter("@id", id),
                                new SqlParameter("@sort",sort)
                            };
            return DataHelper.ExecuteNonQuery(Config.ConnectString, "tuan_newstype_updateSort", param);
        }
    }
}
