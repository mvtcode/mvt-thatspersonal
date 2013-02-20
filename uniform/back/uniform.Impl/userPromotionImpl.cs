using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using tuanva.Core;
using uniform.Entity;
using uniform.Services;

namespace uniform.Impl
{
	public class userPromotionImpl : IuserPromotion
    {
        public int Add(userPromotionInfo info)
        {
			SqlParameter[] param = {
			    new SqlParameter("@fullname", info.fullname),
			new SqlParameter("@mobile", info.mobile),
			new SqlParameter("@email", info.email),
			new SqlParameter("@className", info.className),
			new SqlParameter("@address", info.address)			
		   };
            return int.Parse(DataHelper.ExecuteScalar(Config.ConnectString, "usp_userPromotion_Add", param).ToString());           
        }
        
        public int Update(userPromotionInfo info)
        {
			SqlParameter[] param = {
									   new SqlParameter("@id", info.id)
			,new SqlParameter("@fullname", info.fullname),
			new SqlParameter("@mobile", info.mobile),
			new SqlParameter("@email", info.email),
			new SqlParameter("@className", info.className),
			new SqlParameter("@address", info.address)			
								   };
            return DataHelper.ExecuteNonQuery(Config.ConnectString, "usp_userPromotion_Update", param);    
        }


        public int Delete(int id)
        {
            SqlParameter[] param = {
									   new SqlParameter("@id", id)
			
								   };
            return DataHelper.ExecuteNonQuery(Config.ConnectString, "usp_userPromotion_Delete", param);   
        }

        public userPromotionInfo GetInfo(int id)
        {
            userPromotionInfo info = null;
			SqlParameter[] param = {
									   new SqlParameter("@id", id)
			
								   };
            var r = DataHelper.ExecuteReader(Config.ConnectString, "usp_userPromotion_GetById", param);
			if (r != null)
			{
				info = new userPromotionInfo();
				while (r.Read())
				{
					info.id = Int32.Parse(r["id"].ToString());
			info.fullname = r["fullname"].ToString();
			info.mobile = r["mobile"].ToString();
			info.email = r["email"].ToString();
			info.className = r["className"].ToString();
			info.address = r["address"].ToString();
			
				}
				r.Close();
                r.Dispose();
			}
			return info;
        }

        public List<userPromotionInfo> GetList(int pageIndex, int pageSize, out int total)
        {
            List<userPromotionInfo> list = null;
            var t = 0;
            SqlParameter[] param = {
                                       new SqlParameter("@pageIndex",pageIndex),
                                       new SqlParameter("@pageSize",pageSize),
                                       new SqlParameter("@totalrow",DbType.Int32){Direction = ParameterDirection.Output}
                                   };
            SqlCommand comx;
            var r = DataHelper.ExecuteReader(Config.ConnectString, "usp_userPromotion_GetList", param, out comx);
            if (r != null)
            {
                list = new List<userPromotionInfo>();
                while (r.Read())
                {
					var info = new userPromotionInfo();
                    info.id = Int32.Parse(r["id"].ToString());
			info.fullname = r["fullname"].ToString();
			info.mobile = r["mobile"].ToString();
			info.email = r["email"].ToString();
			info.className = r["className"].ToString();
			info.address = r["address"].ToString();
			
					
                    list.Add(info);
                }
                r.Close();
                r.Dispose();
                t = int.Parse(comx.Parameters[2].Value.ToString());
            }

            total = t;
            return list;
        }

	    public List<userPromotionInfo> GetAll(out int total)
	    {
            List<userPromotionInfo> list = null;
            var t = 0;
            SqlParameter[] param = {
                                       new SqlParameter("@totalrow",DbType.Int32){Direction = ParameterDirection.Output}
                                   };
            SqlCommand comx;
            var r = DataHelper.ExecuteReader(Config.ConnectString, "usp_userPromotion_GetAll", param, out comx);
            if (r != null)
            {
                list = new List<userPromotionInfo>();
                while (r.Read())
                {
                    var info = new userPromotionInfo();
                    info.id = Int32.Parse(r["id"].ToString());
                    info.fullname = r["fullname"].ToString();
                    info.mobile = r["mobile"].ToString();
                    info.email = r["email"].ToString();
                    info.className = r["className"].ToString();
                    info.address = r["address"].ToString();


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
