using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using tuanva.Core;
using uniform.Entity;
using uniform.Services;

namespace uniform.Impl
{
	public class imageAlbumImpl : IimageAlbum
    {
        public int Add(imageAlbumInfo info)
        {
			SqlParameter[] param = {
			    new SqlParameter("@AlbumId", info.AlbumId),
			new SqlParameter("@AlbumName", info.AlbumName),
			new SqlParameter("@images", info.images),
			new SqlParameter("@altImage", info.altImage)			
		   };
            return int.Parse(DataHelper.ExecuteScalar(Config.ConnectString, "usp_imageAlbum_Add", param).ToString());           
        }
        
        public int Update(imageAlbumInfo info)
        {
			SqlParameter[] param = {
									   new SqlParameter("@id", info.id)
			,new SqlParameter("@AlbumId", info.AlbumId),
			new SqlParameter("@AlbumName", info.AlbumName),
			new SqlParameter("@images", info.images),
			new SqlParameter("@altImage", info.altImage)			
								   };
            return DataHelper.ExecuteNonQuery(Config.ConnectString, "usp_imageAlbum_Update", param);    
        }


        public int Delete(int id)
        {
            SqlParameter[] param = {
									   new SqlParameter("@id", id)
			
								   };
            return DataHelper.ExecuteNonQuery(Config.ConnectString, "usp_imageAlbum_Delete", param);   
        }

        public imageAlbumInfo GetInfo(int id)
        {
            imageAlbumInfo info = null;
			SqlParameter[] param = {
									   new SqlParameter("@id", id)
			
								   };
            var r = DataHelper.ExecuteReader(Config.ConnectString, "usp_imageAlbum_GetById", param);
			if (r != null)
			{
				info = new imageAlbumInfo();
				while (r.Read())
				{
					info.id = Int32.Parse(r["id"].ToString());
			info.AlbumId = Int32.Parse(r["AlbumId"].ToString());
			info.AlbumName = r["AlbumName"].ToString();
			info.images = r["images"].ToString();
			info.altImage = r["altImage"].ToString();
			
				}
				r.Close();
                r.Dispose();
			}
			return info;
        }

        public List<imageAlbumInfo> GetList(int pageIndex, int pageSize, out int total)
        {
            List<imageAlbumInfo> list = null;
            var t = 0;
            SqlParameter[] param = {
                                       new SqlParameter("@pageIndex",pageIndex),
                                       new SqlParameter("@pageSize",pageSize),
                                       new SqlParameter("@totalrow",DbType.Int32){Direction = ParameterDirection.Output}
                                   };
            SqlCommand comx;
            var r = DataHelper.ExecuteReader(Config.ConnectString, "usp_imageAlbum_GetList", param, out comx);
            if (r != null)
            {
                list = new List<imageAlbumInfo>();
                while (r.Read())
                {
					var info = new imageAlbumInfo();
                    info.id = Int32.Parse(r["id"].ToString());
			info.AlbumId = Int32.Parse(r["AlbumId"].ToString());
			info.AlbumName = r["AlbumName"].ToString();
			info.images = r["images"].ToString();
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
