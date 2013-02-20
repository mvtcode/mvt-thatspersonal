using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using tuanva.Core;
using uniform.Entity;
using uniform.Services;

namespace uniform.Impl
{
	public class productColorImpl : IproductColor
    {
        public int Add(productColorInfo info)
        {
			SqlParameter[] param = {
			    new SqlParameter("@colorId", info.colorId),
			new SqlParameter("@ProductId", info.ProductId),
			new SqlParameter("@image", info.image),
			new SqlParameter("@altImage", info.altImage)			
		   };
            return int.Parse(DataHelper.ExecuteScalar(Config.ConnectString, "usp_productColor_Add", param).ToString());           
        }
        
        public int Update(productColorInfo info)
        {
			SqlParameter[] param = {
									   new SqlParameter("@id", info.id)
			,new SqlParameter("@colorId", info.colorId),
			new SqlParameter("@ProductId", info.ProductId),
			new SqlParameter("@image", info.image),
			new SqlParameter("@altImage", info.altImage)			
								   };
            return DataHelper.ExecuteNonQuery(Config.ConnectString, "usp_productColor_Update", param);    
        }


        public int Delete(int id)
        {
            SqlParameter[] param = {
									   new SqlParameter("@id", id)
			
								   };
            return DataHelper.ExecuteNonQuery(Config.ConnectString, "usp_productColor_Delete", param);   
        }

        public productColorInfo GetInfo(int id)
        {
            productColorInfo info = null;
			SqlParameter[] param = {
									   new SqlParameter("@id", id)
			
								   };
            var r = DataHelper.ExecuteReader(Config.ConnectString, "usp_productColor_GetById", param);
			if (r != null)
			{
				info = new productColorInfo();
				while (r.Read())
				{
					info.id = Int32.Parse(r["id"].ToString());
			info.colorId = Int32.Parse(r["colorId"].ToString());
			info.ProductId = Int32.Parse(r["ProductId"].ToString());
			info.image = r["image"].ToString();
			info.altImage = r["altImage"].ToString();
			
				}
				r.Close();
                r.Dispose();
			}
			return info;
        }

        public List<productColorInfo> GetList(int pageIndex, int pageSize, out int total)
        {
            List<productColorInfo> list = null;
            var t = 0;
            SqlParameter[] param = {
                                       new SqlParameter("@pageIndex",pageIndex),
                                       new SqlParameter("@pageSize",pageSize),
                                       new SqlParameter("@totalrow",DbType.Int32){Direction = ParameterDirection.Output}
                                   };
            SqlCommand comx;
            var r = DataHelper.ExecuteReader(Config.ConnectString, "usp_productColor_GetList", param, out comx);
            if (r != null)
            {
                list = new List<productColorInfo>();
                while (r.Read())
                {
					var info = new productColorInfo();
                    info.id = Int32.Parse(r["id"].ToString());
			info.colorId = Int32.Parse(r["colorId"].ToString());
			info.ProductId = Int32.Parse(r["ProductId"].ToString());
			info.image = r["image"].ToString();
			info.altImage = r["altImage"].ToString();
			
					
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
