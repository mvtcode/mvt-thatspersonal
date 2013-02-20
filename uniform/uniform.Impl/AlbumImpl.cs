using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using tuanva.Core;
using uniform.Entity;
using uniform.Services;

namespace uniform.Impl
{
    public class AlbumImpl : IAlbum
    {
        public int Add(AlbumInfo info)
        {
            SqlParameter[] param = {
			    new SqlParameter("@title", info.title),
			new SqlParameter("@description", info.description),
			new SqlParameter("@image", info.image),
			new SqlParameter("@altImage", info.altImage),
			new SqlParameter("@tag", info.tag),
			new SqlParameter("@sort", info.sort),
			new SqlParameter("@action", info.action),
			new SqlParameter("@link", info.link)			
		   };
            return int.Parse(DataHelper.ExecuteScalar(Config.ConnectString, "usp_Album_Add", param).ToString());
        }

        public int Update(AlbumInfo info)
        {
            SqlParameter[] param = {
									   new SqlParameter("@id", info.id)
			,new SqlParameter("@title", info.title),
			new SqlParameter("@description", info.description),
			new SqlParameter("@image", info.image),
			new SqlParameter("@altImage", info.altImage),
			new SqlParameter("@tag", info.tag),
			new SqlParameter("@sort", info.sort),
			new SqlParameter("@action", info.action),
			new SqlParameter("@link", info.link)			
								   };
            return DataHelper.ExecuteNonQuery(Config.ConnectString, "usp_Album_Update", param);
        }


        public int Delete(int id)
        {
            SqlParameter[] param = {
									   new SqlParameter("@id", id)
			
								   };
            return DataHelper.ExecuteNonQuery(Config.ConnectString, "usp_Album_Delete", param);
        }

        public AlbumInfo GetInfo(int id)
        {
            AlbumInfo info = null;
            SqlParameter[] param = {
									   new SqlParameter("@id", id)
			
								   };
            var r = DataHelper.ExecuteReader(Config.ConnectString, "usp_Album_GetById", param);
            if (r != null)
            {
                info = new AlbumInfo();
                while (r.Read())
                {
                    info.id = Int32.Parse(r["id"].ToString());
                    info.title = r["title"].ToString();
                    info.description = r["description"].ToString();
                    info.image = r["image"].ToString();
                    info.altImage = r["altImage"].ToString();
                    info.tag = r["tag"].ToString();
                    info.CreateDate = Convert.ToDateTime(r["CreateDate"]);
                    info.sort = Int32.Parse(r["sort"].ToString());
                    info.action = Convert.ToBoolean(r["action"]);
                    info.link = r["link"].ToString();

                }
                r.Close();
                r.Dispose();
            }
            return info;
        }

        public List<AlbumInfo> GetList(int pageIndex, int pageSize, out int total)
        {
            List<AlbumInfo> list = null;
            var t = 0;
            SqlParameter[] param = {
                                       new SqlParameter("@pageIndex",pageIndex),
                                       new SqlParameter("@pageSize",pageSize),
                                       new SqlParameter("@totalrow",DbType.Int32){Direction = ParameterDirection.Output}
                                   };
            SqlCommand comx;
            var r = DataHelper.ExecuteReader(Config.ConnectString, "usp_Album_GetList", param, out comx);
            if (r != null)
            {
                list = new List<AlbumInfo>();
                while (r.Read())
                {
                    var info = new AlbumInfo();
                    info.id = Int32.Parse(r["id"].ToString());
                    info.title = r["title"].ToString();
                    info.description = r["description"].ToString();
                    info.image = r["image"].ToString();
                    info.altImage = r["altImage"].ToString();
                    info.tag = r["tag"].ToString();
                    info.CreateDate = Convert.ToDateTime(r["CreateDate"]);
                    info.sort = Int32.Parse(r["sort"].ToString());
                    info.action = Convert.ToBoolean(r["action"]);
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

        public List<AlbumInfo> GetAll(out int total)
        {
            List<AlbumInfo> list = null;
            var t = 0;
            SqlParameter[] param = {
                                       new SqlParameter("@totalrow",DbType.Int32){Direction = ParameterDirection.Output}
                                   };
            SqlCommand comx;
            var r = DataHelper.ExecuteReader(Config.ConnectString, "usp_Album_GetAll", param, out comx);
            if (r != null)
            {
                list = new List<AlbumInfo>();
                while (r.Read())
                {
                    var info = new AlbumInfo();
                    info.id = Int32.Parse(r["id"].ToString());
                    info.title = r["title"].ToString();
                    info.description = r["description"].ToString();
                    info.image = r["image"].ToString();
                    info.altImage = r["altImage"].ToString();
                    info.tag = r["tag"].ToString();
                    info.CreateDate = Convert.ToDateTime(r["CreateDate"]);
                    info.sort = Int32.Parse(r["sort"].ToString());
                    info.action = Convert.ToBoolean(r["action"]);
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
