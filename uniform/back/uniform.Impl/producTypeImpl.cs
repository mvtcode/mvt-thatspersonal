using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using tuanva.Core;
using uniform.Entity;
using uniform.Services;

namespace uniform.Impl
{
	public class producTypeImpl : IproducType
    {
        public int Add(producTypeInfo info)
        {
			SqlParameter[] param = {
			    new SqlParameter("@name", info.name),
			new SqlParameter("@link", info.link)			
		   };
            return int.Parse(DataHelper.ExecuteScalar(Config.ConnectString, "usp_producType_Add", param).ToString());           
        }
        
        public int Update(producTypeInfo info)
        {
			SqlParameter[] param = {
									   new SqlParameter("@id", info.id)
			,new SqlParameter("@name", info.name),
			new SqlParameter("@link", info.link)			
								   };
            return DataHelper.ExecuteNonQuery(Config.ConnectString, "usp_producType_Update", param);    
        }


        public int Delete(int id)
        {
            SqlParameter[] param = {
									   new SqlParameter("@id", id)
			
								   };
            return DataHelper.ExecuteNonQuery(Config.ConnectString, "usp_producType_Delete", param);   
        }

        public producTypeInfo GetInfo(int id)
        {
            producTypeInfo info = null;
			SqlParameter[] param = {
									   new SqlParameter("@id", id)
			
								   };
            var r = DataHelper.ExecuteReader(Config.ConnectString, "usp_producType_GetById", param);
			if (r != null)
			{
				info = new producTypeInfo();
				while (r.Read())
				{
					info.id = Int32.Parse(r["id"].ToString());
			info.name = r["name"].ToString();
			info.link = r["link"].ToString();
			
				}
				r.Close();
                r.Dispose();
			}
			return info;
        }

        public List<producTypeInfo> GetList(int pageIndex, int pageSize, out int total)
        {
            List<producTypeInfo> list = null;
            var t = 0;
            SqlParameter[] param = {
                                       new SqlParameter("@pageIndex",pageIndex),
                                       new SqlParameter("@pageSize",pageSize),
                                       new SqlParameter("@totalrow",DbType.Int32){Direction = ParameterDirection.Output}
                                   };
            SqlCommand comx;
            var r = DataHelper.ExecuteReader(Config.ConnectString, "usp_producType_GetList", param, out comx);
            if (r != null)
            {
                list = new List<producTypeInfo>();
                while (r.Read())
                {
					var info = new producTypeInfo();
                    info.id = Int32.Parse(r["id"].ToString());
			info.name = r["name"].ToString();
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

	    public List<producTypeInfo> GetAll(out int total)
	    {
            List<producTypeInfo> list = null;
            var t = 0;
            SqlParameter[] param = {
                                       new SqlParameter("@totalrow",DbType.Int32){Direction = ParameterDirection.Output}
                                   };
            SqlCommand comx;
            var r = DataHelper.ExecuteReader(Config.ConnectString, "usp_producType_GetAll", param, out comx);
            if (r != null)
            {
                list = new List<producTypeInfo>();
                while (r.Read())
                {
                    var info = new producTypeInfo();
                    info.id = Int32.Parse(r["id"].ToString());
                    info.name = r["name"].ToString();
                    info.link = r["link"].ToString();


                    list.Add(info);
                }
                r.Close();
                r.Dispose();
                t = int.Parse(comx.Parameters[0].Value.ToString());
            }

            total = t;
            return list;
	    }
    }
}
