using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using tuanva.Core;
using uniform.Entity;
using uniform.Services;

namespace uniform.Impl
{
	public class newsPromotionImpl : InewsPromotion
    {
        public int Add(newsPromotionInfo info)
        {
			SqlParameter[] param = {
			    new SqlParameter("@title", info.title),
			new SqlParameter("@description", info.description),
			new SqlParameter("@content", info.content),
			new SqlParameter("@image", info.image),
			new SqlParameter("@CreateDate", info.CreateDate),
			new SqlParameter("@sort", info.sort),
			new SqlParameter("@action", info.action)			
		   };
            return int.Parse(DataHelper.ExecuteScalar(Config.ConnectString, "usp_newsPromotion_Add", param).ToString());           
        }
        
        public int Update(newsPromotionInfo info)
        {
			SqlParameter[] param = {
									   new SqlParameter("@id", info.id)
			,new SqlParameter("@title", info.title),
			new SqlParameter("@description", info.description),
			new SqlParameter("@content", info.content),
			new SqlParameter("@image", info.image),
			new SqlParameter("@CreateDate", info.CreateDate),
			new SqlParameter("@sort", info.sort),
			new SqlParameter("@action", info.action)			
								   };
            return DataHelper.ExecuteNonQuery(Config.ConnectString, "usp_newsPromotion_Update", param);    
        }


        public int Delete(int id)
        {
            SqlParameter[] param = {
									   new SqlParameter("@id", id)
			
								   };
            return DataHelper.ExecuteNonQuery(Config.ConnectString, "usp_newsPromotion_Delete", param);   
        }

        public newsPromotionInfo GetInfo(int id)
        {
            newsPromotionInfo info = null;
			SqlParameter[] param = {
									   new SqlParameter("@id", id)
			
								   };
            var r = DataHelper.ExecuteReader(Config.ConnectString, "usp_newsPromotion_GetById", param);
			if (r != null)
			{
				info = new newsPromotionInfo();
				while (r.Read())
				{
					info.id = Int32.Parse(r["id"].ToString());
			info.title = r["title"].ToString();
			info.description = r["description"].ToString();
			info.content = r["content"].ToString();
			info.image = r["image"].ToString();
			info.CreateDate = Convert.ToDateTime(r["CreateDate"]);
			info.sort = Int32.Parse(r["sort"].ToString());
			info.action = Convert.ToBoolean(r["action"]);
			
				}
				r.Close();
                r.Dispose();
			}
			return info;
        }

        public List<newsPromotionInfo> GetList(int pageIndex, int pageSize, out int total)
        {
            List<newsPromotionInfo> list = null;
            var t = 0;
            SqlParameter[] param = {
                                       new SqlParameter("@pageIndex",pageIndex),
                                       new SqlParameter("@pageSize",pageSize),
                                       new SqlParameter("@totalrow",DbType.Int32){Direction = ParameterDirection.Output}
                                   };
            SqlCommand comx;
            var r = DataHelper.ExecuteReader(Config.ConnectString, "usp_newsPromotion_GetList", param, out comx);
            if (r != null)
            {
                list = new List<newsPromotionInfo>();
                while (r.Read())
                {
					var info = new newsPromotionInfo();
                    info.id = Int32.Parse(r["id"].ToString());
			info.title = r["title"].ToString();
			info.description = r["description"].ToString();
			info.content = r["content"].ToString();
			info.image = r["image"].ToString();
			info.CreateDate = Convert.ToDateTime(r["CreateDate"]);
			info.sort = Int32.Parse(r["sort"].ToString());
			info.action = Convert.ToBoolean(r["action"]);
			
					
                    list.Add(info);
                }
                r.Close();
                r.Dispose();
                t = int.Parse(comx.Parameters[2].Value.ToString());
            }

            total = t;
            return list;
        }

	    public List<newsPromotionInfo> GetAll(out int total)
	    {
            List<newsPromotionInfo> list = null;
            var t = 0;
            SqlParameter[] param = {
                                       new SqlParameter("@totalrow",DbType.Int32){Direction = ParameterDirection.Output}
                                   };
            SqlCommand comx;
            var r = DataHelper.ExecuteReader(Config.ConnectString, "usp_newsPromotion_GetAll", param, out comx);
            if (r != null)
            {
                list = new List<newsPromotionInfo>();
                while (r.Read())
                {
                    var info = new newsPromotionInfo();
                    info.id = Int32.Parse(r["id"].ToString());
                    info.title = r["title"].ToString();
                    info.description = r["description"].ToString();
                    info.content = r["content"].ToString();
                    info.image = r["image"].ToString();
                    info.CreateDate = Convert.ToDateTime(r["CreateDate"]);
                    info.sort = Int32.Parse(r["sort"].ToString());
                    info.action = Convert.ToBoolean(r["action"]);

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
