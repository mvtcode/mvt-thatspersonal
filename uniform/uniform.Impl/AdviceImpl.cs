using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using tuanva.Core;
using uniform.Entity;
using uniform.Services;

namespace uniform.Impl
{
    public class AdviceImpl : IAdvice
    {
        public int Add(AdviceInfo info)
        {
            SqlParameter[] param = {
                                       new SqlParameter("@adviceTypeId", info.adviceTypeId),
                                       new SqlParameter("@adviceTypeName", info.adviceTypeName),
                                       new SqlParameter("@title", info.title),
                                       new SqlParameter("@description", info.description),
                                       new SqlParameter("@content", info.content),
                                       new SqlParameter("@image", info.image),
                                       new SqlParameter("@altImage", info.altImage),
                                       new SqlParameter("@tag", info.tag),
                                       new SqlParameter("@CreateDate", info.CreateDate),
                                       new SqlParameter("@action", info.action),
                                       new SqlParameter("@link", info.link),
                                       new SqlParameter("@desseo", info.desseo)
                                   };
            return int.Parse(DataHelper.ExecuteScalar(Config.ConnectString, "usp_Advice_Add", param).ToString());
        }

        public int Update(AdviceInfo info)
        {
            SqlParameter[] param = {
                                       new SqlParameter("@id", info.id)
                                       , new SqlParameter("@adviceTypeId", info.adviceTypeId),
                                       new SqlParameter("@adviceTypeName", info.adviceTypeName),
                                       new SqlParameter("@title", info.title),
                                       new SqlParameter("@description", info.description),
                                       new SqlParameter("@content", info.content),
                                       new SqlParameter("@image", info.image),
                                       new SqlParameter("@altImage", info.altImage),
                                       new SqlParameter("@tag", info.tag),
                                       new SqlParameter("@CreateDate", info.CreateDate),
                                       new SqlParameter("@action", info.action),
                                       new SqlParameter("@link", info.link),
                                       new SqlParameter("@desseo", info.desseo)
                                   };
            return DataHelper.ExecuteNonQuery(Config.ConnectString, "usp_Advice_Update", param);
        }


        public int Delete(int id)
        {
            SqlParameter[] param = {
                                       new SqlParameter("@id", id)

                                   };
            return DataHelper.ExecuteNonQuery(Config.ConnectString, "usp_Advice_Delete", param);
        }

        public AdviceInfo GetInfo(int id)
        {
            AdviceInfo info = null;
            SqlParameter[] param = {
                                       new SqlParameter("@id", id)

                                   };
            var r = DataHelper.ExecuteReader(Config.ConnectString, "usp_Advice_GetById", param);
            if (r != null)
            {
                info = new AdviceInfo();
                while (r.Read())
                {
                    info.id = Int32.Parse(r["id"].ToString());
                    info.adviceTypeId = Int32.Parse(r["adviceTypeId"].ToString());
                    info.adviceTypeName = r["adviceTypeName"].ToString();
                    info.title = r["title"].ToString();
                    info.description = r["description"].ToString();
                    info.content = r["content"].ToString();
                    info.image = r["image"].ToString();
                    info.altImage = r["altImage"].ToString();
                    info.tag = r["tag"].ToString();
                    info.CreateDate = Convert.ToDateTime(r["CreateDate"]);
                    info.action = Convert.ToBoolean(r["action"]);
                    info.link = r["link"].ToString();
                    info.desseo = r["desseo"].ToString();

                }
                r.Close();
                r.Dispose();
            }
            return info;
        }

        public List<AdviceInfo> GetList(int pageIndex, int pageSize, out int total)
        {
            List<AdviceInfo> list = null;
            var t = 0;
            SqlParameter[] param = {
                                       new SqlParameter("@pageIndex", pageIndex),
                                       new SqlParameter("@pageSize", pageSize),
                                       new SqlParameter("@totalrow", DbType.Int32)
                                           {Direction = ParameterDirection.Output}
                                   };
            SqlCommand comx;
            var r = DataHelper.ExecuteReader(Config.ConnectString, "usp_Advice_GetList", param, out comx);
            if (r != null)
            {
                list = new List<AdviceInfo>();
                while (r.Read())
                {
                    var info = new AdviceInfo();
                    info.id = Int32.Parse(r["id"].ToString());
                    info.adviceTypeId = Int32.Parse(r["adviceTypeId"].ToString());
                    info.adviceTypeName = r["adviceTypeName"].ToString();
                    info.title = r["title"].ToString();
                    info.description = r["description"].ToString();
                    info.content = r["content"].ToString();
                    info.image = r["image"].ToString();
                    info.altImage = r["altImage"].ToString();
                    info.tag = r["tag"].ToString();
                    info.CreateDate = Convert.ToDateTime(r["CreateDate"]);
                    info.action = Convert.ToBoolean(r["action"]);
                    info.link = r["link"].ToString();
                    info.desseo = r["desseo"].ToString();


                    list.Add(info);
                }
                r.Close();
                r.Dispose();
                t = int.Parse(comx.Parameters[2].Value.ToString());
            }

            total = t;
            return list;
        }

        public List<AdviceInfo> GetList(int pageIndex, int pageSize, out int total, int categoryId)
        {
            List<AdviceInfo> list = null;
            var t = 0;
            SqlParameter[] param = {
                                       new SqlParameter("@pageIndex", pageIndex),
                                       new SqlParameter("@pageSize", pageSize),
                                       new SqlParameter("@totalrow", DbType.Int32)
                                           {Direction = ParameterDirection.Output},
                                       new SqlParameter("@AdviceTypeId",categoryId), 
                                   };
            SqlCommand comx;
            var r = DataHelper.ExecuteReader(Config.ConnectString, "usp_Advice_GetList", param, out comx);
            if (r != null)
            {
                list = new List<AdviceInfo>();
                while (r.Read())
                {
                    var info = new AdviceInfo();
                    info.id = Int32.Parse(r["id"].ToString());
                    info.adviceTypeId = Int32.Parse(r["adviceTypeId"].ToString());
                    info.adviceTypeName = r["adviceTypeName"].ToString();
                    info.title = r["title"].ToString();
                    info.description = r["description"].ToString();
                    info.content = r["content"].ToString();
                    info.image = r["image"].ToString();
                    info.altImage = r["altImage"].ToString();
                    info.tag = r["tag"].ToString();
                    info.CreateDate = Convert.ToDateTime(r["CreateDate"]);
                    info.action = Convert.ToBoolean(r["action"]);
                    info.link = r["link"].ToString();
                    info.desseo = r["desseo"].ToString();
                    list.Add(info);
                }
                r.Close();
                r.Dispose();
                t = int.Parse(comx.Parameters[2].Value.ToString());
            }

            total = t;
            return list;
        }

        public List<AdviceInfo> GetTop3Defaul()
        {
            List<AdviceInfo> list = null;
            var r = DataHelper.ExecuteReader(Config.ConnectString, "tuan_consult_gettop3", null);
            if (r != null)
            {
                list = new List<AdviceInfo>();
                while (r.Read())
                {
                    var info = new AdviceInfo();
                    info.title = r["title"].ToString();
                    info.description = r["description"].ToString();
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
