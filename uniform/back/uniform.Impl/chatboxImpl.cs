using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using tuanva.Core;
using uniform.Entity;
using uniform.Services;

namespace uniform.Impl
{
	public class chatboxImpl : Ichatbox
    {
        public int Add(chatboxInfo info)
        {
			SqlParameter[] param = {
			    new SqlParameter("@name", info.name),
			new SqlParameter("@comment", info.comment),
			new SqlParameter("@CreateDate", info.CreateDate)			
		   };
            return int.Parse(DataHelper.ExecuteScalar(Config.ConnectString, "usp_chatbox_Add", param).ToString());           
        }
        
        public int Update(chatboxInfo info)
        {
			SqlParameter[] param = {
									   new SqlParameter("@ID", info.ID)
			,new SqlParameter("@name", info.name),
			new SqlParameter("@comment", info.comment),
			new SqlParameter("@CreateDate", info.CreateDate)			
								   };
            return DataHelper.ExecuteNonQuery(Config.ConnectString, "usp_chatbox_Update", param);    
        }


        public int Delete(int id)
        {
            SqlParameter[] param = {
									   new SqlParameter("@ID", id)
			
								   };
            return DataHelper.ExecuteNonQuery(Config.ConnectString, "usp_chatbox_Delete", param);   
        }

        public chatboxInfo GetInfo(int id)
        {
            chatboxInfo info = null;
			SqlParameter[] param = {
									   new SqlParameter("@ID", id)
			
								   };
            var r = DataHelper.ExecuteReader(Config.ConnectString, "usp_chatbox_GetById", param);
			if (r != null)
			{
				info = new chatboxInfo();
				while (r.Read())
				{
					info.ID = Int32.Parse(r["ID"].ToString());
			info.name = r["name"].ToString();
			info.comment = r["comment"].ToString();
			info.CreateDate = Convert.ToDateTime(r["CreateDate"]);
			
				}
				r.Close();
                r.Dispose();
			}
			return info;
        }

        public List<chatboxInfo> GetList(int pageIndex, int pageSize, out int total)
        {
            List<chatboxInfo> list = null;
            var t = 0;
            SqlParameter[] param = {
                                       new SqlParameter("@pageIndex",pageIndex),
                                       new SqlParameter("@pageSize",pageSize),
                                       new SqlParameter("@totalrow",DbType.Int32){Direction = ParameterDirection.Output}
                                   };
            SqlCommand comx;
            var r = DataHelper.ExecuteReader(Config.ConnectString, "usp_chatbox_GetList", param, out comx);
            if (r != null)
            {
                list = new List<chatboxInfo>();
                while (r.Read())
                {
					var info = new chatboxInfo();
                    info.ID = Int32.Parse(r["ID"].ToString());
			info.name = r["name"].ToString();
			info.comment = r["comment"].ToString();
			info.CreateDate = Convert.ToDateTime(r["CreateDate"]);
			
					
                    list.Add(info);
                }
                r.Close();
                r.Dispose();
                t = int.Parse(comx.Parameters[2].Value.ToString());
            }

            total = t;
            return list;
        }

	    public List<chatboxInfo> GetAll(out int total)
	    {
            List<chatboxInfo> list = null;
            var t = 0;
            SqlParameter[] param = {
                                       new SqlParameter("@totalrow",DbType.Int32){Direction = ParameterDirection.Output}
                                   };
            SqlCommand comx;
            var r = DataHelper.ExecuteReader(Config.ConnectString, "usp_chatbox_GetAll", param, out comx);
            if (r != null)
            {
                list = new List<chatboxInfo>();
                while (r.Read())
                {
                    var info = new chatboxInfo();
                    info.ID = Int32.Parse(r["ID"].ToString());
                    info.name = r["name"].ToString();
                    info.comment = r["comment"].ToString();
                    info.CreateDate = Convert.ToDateTime(r["CreateDate"]);


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
