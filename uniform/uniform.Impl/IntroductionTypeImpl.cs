using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using tuanva.Core;
using uniform.Entity;
using uniform.Services;

namespace uniform.Impl
{
    public class IntroductionTypeImpl : IIntroductionType
    {
        public int Add(IntroductionTypeInfo info)
        {
            SqlParameter[] param = {
			    new SqlParameter("@name", info.name),
			new SqlParameter("@link", info.link),
			new SqlParameter("@sort", info.sort),
			new SqlParameter("@description", info.description),
			new SqlParameter("@keyword", info.keyword)			
		   };
            return int.Parse(DataHelper.ExecuteScalar(Config.ConnectString, "usp_Introduction_Type_Add", param).ToString());
        }

        public int Update(IntroductionTypeInfo info)
        {
            SqlParameter[] param = {
									   new SqlParameter("@id", info.id)
			,new SqlParameter("@name", info.name),
			new SqlParameter("@link", info.link),
			new SqlParameter("@sort", info.sort),
			new SqlParameter("@description", info.description),
			new SqlParameter("@keyword", info.keyword)			
								   };
            return DataHelper.ExecuteNonQuery(Config.ConnectString, "usp_Introduction_Type_Update", param);
        }


        public int Delete(int id)
        {
            SqlParameter[] param = {
									   new SqlParameter("@id", id)
			
								   };
            return DataHelper.ExecuteNonQuery(Config.ConnectString, "usp_Introduction_Type_Delete", param);
        }

        public IntroductionTypeInfo GetInfo(int id)
        {
            IntroductionTypeInfo info = null;
            SqlParameter[] param = {
									   new SqlParameter("@id", id)
			
								   };
            var r = DataHelper.ExecuteReader(Config.ConnectString, "usp_Introduction_Type_GetById", param);
            if (r != null)
            {
                info = new IntroductionTypeInfo();
                while (r.Read())
                {
                    info.id = Int32.Parse(r["id"].ToString());
                    info.name = r["name"].ToString();
                    info.link = r["link"].ToString();
                    info.sort = (object)r["sort"].ToString();
                    info.description = r["description"].ToString();
                    info.keyword = r["keyword"].ToString();

                }
                r.Close();
                r.Dispose();
            }
            return info;
        }

        public List<IntroductionTypeInfo> GetList(int pageIndex, int pageSize, out int total)
        {
            List<IntroductionTypeInfo> list = null;
            var t = 0;
            SqlParameter[] param = {
                                       new SqlParameter("@pageIndex",pageIndex),
                                       new SqlParameter("@pageSize",pageSize),
                                       new SqlParameter("@totalrow",DbType.Int32){Direction = ParameterDirection.Output}
                                   };
            SqlCommand comx;
            var r = DataHelper.ExecuteReader(Config.ConnectString, "usp_Introduction_Type_GetList", param, out comx);
            if (r != null)
            {
                list = new List<IntroductionTypeInfo>();
                while (r.Read())
                {
                    var info = new IntroductionTypeInfo();
                    info.id = Int32.Parse(r["id"].ToString());
                    info.name = r["name"].ToString();
                    info.link = r["link"].ToString();
                    info.sort = (object)r["sort"].ToString();
                    info.description = r["description"].ToString();
                    info.keyword = r["keyword"].ToString();


                    list.Add(info);
                }
                r.Close();
                r.Dispose();
                t = int.Parse(comx.Parameters[2].Value.ToString());
            }

            total = t;
            return list;
        }

        public List<IntroductionTypeInfo> GetAll()
        {
            List<IntroductionTypeInfo> list = null;
            var r = DataHelper.ExecuteReader(Config.ConnectString, "usp_Introduction_Type_GetAll", null);
            if (r != null)
            {
                list = new List<IntroductionTypeInfo>();
                while (r.Read())
                {
                    var info = new IntroductionTypeInfo();
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

        public int UpdateSort(int id, int sort)
        {
            var param = new[]
                            {
                                new SqlParameter("@id", id),
                                new SqlParameter("@sort",sort)
                            };
            return DataHelper.ExecuteNonQuery(Config.ConnectString, "usp_Introduction_Type_updateSort", param);
        }
    }
}
