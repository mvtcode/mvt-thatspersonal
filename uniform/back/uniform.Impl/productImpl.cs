using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using tuanva.Core;
using uniform.Entity;
using uniform.Services;

namespace uniform.Impl
{
	public class productImpl : Iproduct
    {
        public int Add(productInfo info)
        {
			SqlParameter[] param = {
			    new SqlParameter("@ProductTypeId", info.ProductTypeId),
			new SqlParameter("@ProductName", info.ProductName),
			new SqlParameter("@name", info.name),
			new SqlParameter("@description", info.description),
			new SqlParameter("@tag", info.tag),
			new SqlParameter("@image", info.image),
			new SqlParameter("@altImage", info.altImage),
			new SqlParameter("@price", info.price)			
		   };
            return int.Parse(DataHelper.ExecuteScalar(Config.ConnectString, "usp_product_Add", param).ToString());           
        }
        
        public int Update(productInfo info)
        {
			SqlParameter[] param = {
									   new SqlParameter("@id", info.id)
			,new SqlParameter("@ProductTypeId", info.ProductTypeId),
			new SqlParameter("@ProductName", info.ProductName),
			new SqlParameter("@name", info.name),
			new SqlParameter("@description", info.description),
			new SqlParameter("@tag", info.tag),
			new SqlParameter("@image", info.image),
			new SqlParameter("@altImage", info.altImage),
			new SqlParameter("@price", info.price)			
								   };
            return DataHelper.ExecuteNonQuery(Config.ConnectString, "usp_product_Update", param);    
        }


        public int Delete(int id)
        {
            SqlParameter[] param = {
									   new SqlParameter("@id", id)
			
								   };
            return DataHelper.ExecuteNonQuery(Config.ConnectString, "usp_product_Delete", param);   
        }

        public productInfo GetInfo(int id)
        {
            productInfo info = null;
			SqlParameter[] param = {
									   new SqlParameter("@id", id)
			
								   };
            var r = DataHelper.ExecuteReader(Config.ConnectString, "usp_product_GetById", param);
			if (r != null)
			{
				info = new productInfo();
				while (r.Read())
				{
					info.id = Int32.Parse(r["id"].ToString());
			info.ProductTypeId = Int32.Parse(r["ProductTypeId"].ToString());
			info.ProductName = r["ProductName"].ToString();
			info.name = r["name"].ToString();
			info.description = (object)r["description"].ToString();
			info.tag = r["tag"].ToString();
			info.image = r["image"].ToString();
			info.altImage = r["altImage"].ToString();
			info.price = Int64.Parse(r["price"].ToString());
			
				}
				r.Close();
                r.Dispose();
			}
			return info;
        }

        public List<productInfo> GetList(int pageIndex, int pageSize, out int total)
        {
            List<productInfo> list = null;
            var t = 0;
            SqlParameter[] param = {
                                       new SqlParameter("@pageIndex",pageIndex),
                                       new SqlParameter("@pageSize",pageSize),
                                       new SqlParameter("@totalrow",DbType.Int32){Direction = ParameterDirection.Output}
                                   };
            SqlCommand comx;
            var r = DataHelper.ExecuteReader(Config.ConnectString, "usp_product_GetList", param, out comx);
            if (r != null)
            {
                list = new List<productInfo>();
                while (r.Read())
                {
					var info = new productInfo();
                    info.id = Int32.Parse(r["id"].ToString());
			info.ProductTypeId = Int32.Parse(r["ProductTypeId"].ToString());
			info.ProductName = r["ProductName"].ToString();
			info.name = r["name"].ToString();
			info.description = (object)r["description"].ToString();
			info.tag = r["tag"].ToString();
			info.image = r["image"].ToString();
			info.altImage = r["altImage"].ToString();
			info.price = Int64.Parse(r["price"].ToString());
			
					
                    list.Add(info);
                }
                r.Close();
                r.Dispose();
                t = int.Parse(comx.Parameters[2].Value.ToString());
            }

            total = t;
            return list;
        }

	    public List<productInfo> GetAllByType(int iType, out int total)
	    {
            List<productInfo> list = null;
            var t = 0;
            SqlParameter[] param = {
                                       new SqlParameter("@ProductTypeId",iType),
                                       new SqlParameter("@totalrow",DbType.Int32){Direction = ParameterDirection.Output}
                                   };
            SqlCommand comx;
            var r = DataHelper.ExecuteReader(Config.ConnectString, "usp_product_GetAllByType", param, out comx);
            if (r != null)
            {
                list = new List<productInfo>();
                while (r.Read())
                {
                    var info = new productInfo();
                    info.id = Int32.Parse(r["id"].ToString());
                    info.ProductTypeId = Int32.Parse(r["ProductTypeId"].ToString());
                    info.ProductName = r["ProductName"].ToString();
                    info.name = r["name"].ToString();
                    info.description = (object)r["description"].ToString();
                    info.tag = r["tag"].ToString();
                    info.image = r["image"].ToString();
                    info.altImage = r["altImage"].ToString();
                    info.price = Int64.Parse(r["price"].ToString());


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
