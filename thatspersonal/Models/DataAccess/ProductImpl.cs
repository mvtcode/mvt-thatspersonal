using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using Models.Entity;
using tuanva.Core;

namespace Models.DataAccess
{
    public class ProductImpl
    {
        private static ProductImpl _ProductImpl;
        public static ProductImpl Instance
        {
            get { return _ProductImpl ?? (_ProductImpl = new ProductImpl()); }
        }

        public int Add(ProductInfo info)
        {
            SqlParameter[] param = {
			    new SqlParameter("@CateName", info.CateName),
			    new SqlParameter("@CateId", info.CateId),
			    new SqlParameter("@ProductName", info.ProductName),
			    new SqlParameter("@name", info.name),
			    new SqlParameter("@description", info.description),
                new SqlParameter("@contents", info.description),
			    new SqlParameter("@tag", info.tag),
                new SqlParameter("@Keyword", info.Keyword),
			    new SqlParameter("@image", info.image),
			    new SqlParameter("@altImage", info.altImage),
			    new SqlParameter("@isHot", info.isHot),
			    new SqlParameter("@price", info.price),
			    new SqlParameter("@Link", info.Link),			
                new SqlParameter("@size", info.size)
		   };
            return int.Parse(DataHelper.ExecuteScalar(Config.ConnectString, "usp_Product_Add", param).ToString());
        }

        public int Update(ProductInfo info)
        {
            SqlParameter[] param = {
									   new SqlParameter("@id", info.id),
                                       new SqlParameter("@CateName", info.CateName),
			                           new SqlParameter("@CateId", info.CateId),
			                           new SqlParameter("@ProductName", info.ProductName),
			                           new SqlParameter("@name", info.name),
			                           new SqlParameter("@description", info.description),
                                       new SqlParameter("@contents", info.contents),
			                           new SqlParameter("@tag", info.tag),
                                       new SqlParameter("@Keyword", info.Keyword),
			                           new SqlParameter("@image", info.image),
			                           new SqlParameter("@altImage", info.altImage),
			                           new SqlParameter("@isHot", info.isHot),
			                           new SqlParameter("@price", info.price),
			                           new SqlParameter("@Link", info.Link),
                                       new SqlParameter("@size", info.size)
								   };
            return DataHelper.ExecuteNonQuery(Config.ConnectString, "usp_Product_Update", param);
        }


        public int Delete(int id)
        {
            SqlParameter[] param = {
									   new SqlParameter("@id", id)			
								   };
            return DataHelper.ExecuteNonQuery(Config.ConnectString, "usp_Product_Delete", param);
        }

        public ProductInfo GetInfo(int id)
        {
            ProductInfo info = null;
            SqlParameter[] param = {
									   new SqlParameter("@id", id)
			
								   };
            var r = DataHelper.ExecuteReader(Config.ConnectString, "usp_Product_GetById", param);
            if (r != null)
            {
                info = new ProductInfo();
                while (r.Read())
                {
                    info.id = Int32.Parse(r["id"].ToString());
                    info.CateName = r["CateName"].ToString();
                    info.CateId = Int32.Parse(r["CateId"].ToString());
                    info.ProductName = r["ProductName"].ToString();
                    info.name = r["name"].ToString();
                    info.description = r["description"].ToString();
                    info.contents = r["contents"].ToString();
                    info.tag = r["tag"].ToString();
                    info.Keyword = r["Keyword"].ToString();
                    info.image = r["image"].ToString();
                    info.altImage = r["altImage"].ToString();
                    info.isHot = Convert.ToBoolean(r["isHot"]);
                    info.price = Int32.Parse(r["price"].ToString());
                    info.Link = r["Link"].ToString();
                    info.size = r["size"].ToString();
                    info.DateCreate = Convert.ToDateTime(r["DateCreate"]);

                }
                r.Close();
                r.Dispose();
            }
            return info;
        }

        public List<ProductInfo> GetList(int pageIndex, int pageSize, out int total)
        {
            List<ProductInfo> list = null;
            var t = 0;
            SqlParameter[] param = {
                                       new SqlParameter("@pageIndex",pageIndex),
                                       new SqlParameter("@pageSize",pageSize),
                                       new SqlParameter("@totalrow",DbType.Int32){Direction = ParameterDirection.Output}
                                   };
            SqlCommand comx;
            var r = DataHelper.ExecuteReader(Config.ConnectString, "usp_Product_GetList", param, out comx);
            if (r != null)
            {
                list = new List<ProductInfo>();
                while (r.Read())
                {
                    var info = new ProductInfo();
                    info.id = Int32.Parse(r["id"].ToString());
                    info.CateName = r["CateName"].ToString();
                    info.CateId = Int32.Parse(r["CateId"].ToString());
                    info.ProductName = r["ProductName"].ToString();
                    info.name = r["name"].ToString();
                    info.description = r["description"].ToString();
                    info.contents = r["contents"].ToString();
                    info.tag = r["tag"].ToString();
                    info.Keyword = r["Keyword"].ToString();
                    info.image = r["image"].ToString();
                    info.altImage = r["altImage"].ToString();
                    info.isHot = Convert.ToBoolean(r["isHot"]);
                    info.price = Int32.Parse(r["price"].ToString());
                    info.Link = r["Link"].ToString();
                    info.size = r["size"].ToString();
                    info.DateCreate = Convert.ToDateTime(r["DateCreate"]);

                    list.Add(info);
                }
                r.Close();
                r.Dispose();
                t = int.Parse(comx.Parameters[2].Value.ToString());
            }

            total = t;
            return list;
        }

        public List<ProductInfo> GetAllByType(int iType, out int total)
        {
            List<ProductInfo> list = null;
            var t = 0;
            SqlParameter[] param = {
                                       new SqlParameter("@CateId",iType),
                                       new SqlParameter("@totalrow",DbType.Int32){Direction = ParameterDirection.Output}
                                   };
            SqlCommand comx;
            var r = DataHelper.ExecuteReader(Config.ConnectString, "usp_product_GetAllByType", param, out comx);
            if (r != null)
            {
                list = new List<ProductInfo>();
                while (r.Read())
                {
                    var info = new ProductInfo();
                    info.id = Int32.Parse(r["id"].ToString());
                    info.CateId = Int32.Parse(r["CateId"].ToString());
                    info.ProductName = r["ProductName"].ToString();
                    info.name = r["name"].ToString();
                    info.description = r["description"].ToString();
                    info.contents = r["contents"].ToString();
                    info.tag = r["tag"].ToString();
                    info.Keyword = r["Keyword"].ToString();
                    info.image = r["image"].ToString();
                    info.altImage = r["altImage"].ToString();
                    info.isHot = bool.Parse(r["isHot"].ToString());
                    info.price = Int32.Parse(r["price"].ToString());
                    info.Link = r["link"].ToString();
                    info.size = r["size"].ToString();
                    info.DateCreate = Convert.ToDateTime(r["DateCreate"].ToString());
                    list.Add(info);
                }
                r.Close();
                r.Dispose();
                t = int.Parse(comx.Parameters[1].Value.ToString());
            }

            total = t;
            return list;
        }
    }
}