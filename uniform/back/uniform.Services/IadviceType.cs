using System.Collections.Generic;
using uniform.Entity;

namespace uniform.Services
{
	public interface IadviceType
	{
		int Add(adviceTypeInfo info);
		int Update(adviceTypeInfo info);
		int Delete(int id);
		adviceTypeInfo GetInfo(int id);
		List<adviceTypeInfo> GetList(int pageIndex, int pageSize, out int total);
        List<adviceTypeInfo> GetAll(out int total);
	}
}
