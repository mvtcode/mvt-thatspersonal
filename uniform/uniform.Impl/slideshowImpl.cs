using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using tuanva.Core;
using uniform.Entity;
using uniform.Services;

namespace uniform.Impl
{
    public class slideshowImpl : Islideshow
    {
        public int Add(slideshowInfo info)
        {
            SqlParameter[] param = {
			    new SqlParameter("@name", info.name),
			new SqlParameter("@image", info.image),
			new SqlParameter("@alt", info.alt),
			new SqlParameter("@link", info.link)			
		   };
            return int.Parse(DataHelper.ExecuteScalar(Config.ConnectString, "usp_slideshow_Add", param).ToString());
        }

        public int Update(slideshowInfo info)
        {
            SqlParameter[] param = {
									   new SqlParameter("@id", info.id)
			,new SqlParameter("@name", info.name),
			new SqlParameter("@image", info.image),
			new SqlParameter("@alt", info.alt),
			new SqlParameter("@link", info.link)			
								   };
            return DataHelper.ExecuteNonQuery(Config.ConnectString, "usp_slideshow_Update", param);
        }


        public int Delete(int id)
        {
            SqlParameter[] param = {
									   new SqlParameter("@id", id)
			
								   };
            return DataHelper.ExecuteNonQuery(Config.ConnectString, "usp_slideshow_Delete", param);
        }

        public slideshowInfo GetInfo(int id)
        {
            slideshowInfo info = null;
            SqlParameter[] param = {
									   new SqlParameter("@id", id)
			
								   };
            var r = DataHelper.ExecuteReader(Config.ConnectString, "usp_slideshow_GetById", param);
            if (r != null)
            {
                info = new slideshowInfo();
                while (r.Read())
                {
                    info.id = Int32.Parse(r["id"].ToString());
                    info.name = r["name"].ToString();
                    info.image = r["image"].ToString();
                    info.alt = r["alt"].ToString();
                    info.link = r["link"].ToString();

                }
                r.Close();
                r.Dispose();
            }
            return info;
        }

        public List<slideshowInfo> GetList(int pageIndex, int pageSize, out int total)
        {
            List<slideshowInfo> list = null;
            var t = 0;
            SqlParameter[] param = {
                                       new SqlParameter("@pageIndex",pageIndex),
                                       new SqlParameter("@pageSize",pageSize),
                                       new SqlParameter("@totalrow",DbType.Int32){Direction = ParameterDirection.Output}
                                   };
            SqlCommand comx;
            var r = DataHelper.ExecuteReader(Config.ConnectString, "usp_slideshow_GetList", param, out comx);
            if (r != null)
            {
                list = new List<slideshowInfo>();
                while (r.Read())
                {
                    var info = new slideshowInfo();
                    info.id = Int32.Parse(r["id"].ToString());
                    info.name = r["name"].ToString();
                    info.image = r["image"].ToString();
                    info.alt = r["alt"].ToString();
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

        public List<slideshowInfo> GetAll()
        {
            List<slideshowInfo> list = null;
            var r = DataHelper.ExecuteReader(Config.ConnectString, "usp_slideshow_GetAll", null);
            if (r != null)
            {
                list = new List<slideshowInfo>();
                while (r.Read())
                {
                    var info = new slideshowInfo();
                    info.id = Int32.Parse(r["id"].ToString());
                    info.name = r["name"].ToString();
                    info.image = r["image"].ToString();
                    info.alt = r["alt"].ToString();
                    info.link = r["link"].ToString();

                    list.Add(info);
                }
                r.Close();
                r.Dispose();
            }
            return list;
        }
    }
}
