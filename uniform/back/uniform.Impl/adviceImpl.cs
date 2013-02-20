using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using tuanva.Core;
using uniform.Entity;
using uniform.Services;

namespace uniform.Impl
{
	public class adviceImpl : Iadvice
    {
        public int Add(adviceInfo info)
        {
			SqlParameter[] param = {
			    new SqlParameter("@adviceTypeId", info.adviceTypeId),
			new SqlParameter("@adviceTypeName", info.adviceTypeName),
			new SqlParameter("@username", info.username),
			new SqlParameter("@question", info.question),
			new SqlParameter("@answer", info.answer),
			new SqlParameter("@sort", info.sort),
			new SqlParameter("@CreateDate", info.CreateDate),
			new SqlParameter("@isShow", info.isShow)			
		   };
            return int.Parse(DataHelper.ExecuteScalar(Config.ConnectString, "usp_advice_Add", param).ToString());           
        }
        
        public int Update(adviceInfo info)
        {
			SqlParameter[] param = {
									   new SqlParameter("@id", info.id)
			,new SqlParameter("@adviceTypeId", info.adviceTypeId),
			new SqlParameter("@adviceTypeName", info.adviceTypeName),
			new SqlParameter("@username", info.username),
			new SqlParameter("@question", info.question),
			new SqlParameter("@answer", info.answer),
			new SqlParameter("@sort", info.sort),
			new SqlParameter("@CreateDate", info.CreateDate),
			new SqlParameter("@isShow", info.isShow)			
								   };
            return DataHelper.ExecuteNonQuery(Config.ConnectString, "usp_advice_Update", param);    
        }


        public int Delete(int id)
        {
            SqlParameter[] param = {
									   new SqlParameter("@id", id)
			
								   };
            return DataHelper.ExecuteNonQuery(Config.ConnectString, "usp_advice_Delete", param);   
        }

        public adviceInfo GetInfo(int id)
        {
            adviceInfo info = null;
			SqlParameter[] param = {
									   new SqlParameter("@id", id)
			
								   };
            var r = DataHelper.ExecuteReader(Config.ConnectString, "usp_advice_GetById", param);
			if (r != null)
			{
				info = new adviceInfo();
				while (r.Read())
				{
					info.id = Int32.Parse(r["id"].ToString());
			info.adviceTypeId = Int32.Parse(r["adviceTypeId"].ToString());
			info.adviceTypeName = r["adviceTypeName"].ToString();
			info.username = r["username"].ToString();
			info.question = r["question"].ToString();
			info.answer = r["answer"].ToString();
			info.sort = Int32.Parse(r["sort"].ToString());
			info.CreateDate = Convert.ToDateTime(r["CreateDate"]);
			info.isShow = Convert.ToBoolean(r["isShow"]);
			
				}
				r.Close();
                r.Dispose();
			}
			return info;
        }

        public List<adviceInfo> GetList(int pageIndex, int pageSize, out int total)
        {
            List<adviceInfo> list = null;
            var t = 0;
            SqlParameter[] param = {
                                       new SqlParameter("@pageIndex",pageIndex),
                                       new SqlParameter("@pageSize",pageSize),
                                       new SqlParameter("@totalrow",DbType.Int32){Direction = ParameterDirection.Output}
                                   };
            SqlCommand comx;
            var r = DataHelper.ExecuteReader(Config.ConnectString, "usp_advice_GetList", param, out comx);
            if (r != null)
            {
                list = new List<adviceInfo>();
                while (r.Read())
                {
					var info = new adviceInfo();
                    info.id = Int32.Parse(r["id"].ToString());
			info.adviceTypeId = Int32.Parse(r["adviceTypeId"].ToString());
			info.adviceTypeName = r["adviceTypeName"].ToString();
			info.username = r["username"].ToString();
			info.question = r["question"].ToString();
			info.answer = r["answer"].ToString();
			info.sort = Int32.Parse(r["sort"].ToString());
			info.CreateDate = Convert.ToDateTime(r["CreateDate"]);
			info.isShow = Convert.ToBoolean(r["isShow"]);
			
					
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
