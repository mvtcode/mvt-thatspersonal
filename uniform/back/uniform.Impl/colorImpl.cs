using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using tuanva.Core;
using uniform.Entity;
using uniform.Services;

namespace uniform.Impl
{
	public class colorImpl : Icolor
    {
        public int Add(colorInfo info)
        {
			SqlParameter[] param = {
			    new SqlParameter("@name", info.name),
			new SqlParameter("@value", info.value)			
		   };
            return int.Parse(DataHelper.ExecuteScalar(Config.ConnectString, "usp_color_Add", param).ToString());           
        }
        
        public int Update(colorInfo info)
        {
			SqlParameter[] param = {
									   new SqlParameter("@id", info.id)
			,new SqlParameter("@name", info.name),
			new SqlParameter("@value", info.value)			
								   };
            return DataHelper.ExecuteNonQuery(Config.ConnectString, "usp_color_Update", param);    
        }


        public int Delete(int id)
        {
            SqlParameter[] param = {
									   new SqlParameter("@id", id)
			
								   };
            return DataHelper.ExecuteNonQuery(Config.ConnectString, "usp_color_Delete", param);   
        }

        public colorInfo GetInfo(int id)
        {
            colorInfo info = null;
			SqlParameter[] param = {
									   new SqlParameter("@id", id)
			
								   };
            var r = DataHelper.ExecuteReader(Config.ConnectString, "usp_color_GetById", param);
			if (r != null)
			{
				info = new colorInfo();
				while (r.Read())
				{
					info.id = Int32.Parse(r["id"].ToString());
			info.name = r["name"].ToString();
			info.value = r["value"].ToString();
			
				}
				r.Close();
                r.Dispose();
			}
			return info;
        }

        public List<colorInfo> GetList(int pageIndex, int pageSize, out int total)
        {
            List<colorInfo> list = null;
            var t = 0;
            SqlParameter[] param = {
                                       new SqlParameter("@pageIndex",pageIndex),
                                       new SqlParameter("@pageSize",pageSize),
                                       new SqlParameter("@totalrow",DbType.Int32){Direction = ParameterDirection.Output}
                                   };
            SqlCommand comx;
            var r = DataHelper.ExecuteReader(Config.ConnectString, "usp_color_GetList", param, out comx);
            if (r != null)
            {
                list = new List<colorInfo>();
                while (r.Read())
                {
					var info = new colorInfo();
                    info.id = Int32.Parse(r["id"].ToString());
			info.name = r["name"].ToString();
			info.value = r["value"].ToString();
			
					
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
