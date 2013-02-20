using System.Collections.Generic;
using uniform.Entity;

namespace uniform.Services
{
	public interface InewsType
	{
		int Add(newsTypeInfo info);
		int Update(newsTypeInfo info);
		int Delete(int id);
		newsTypeInfo GetInfo(int id);
		List<newsTypeInfo> GetList(int pageIndex, int pageSize, out int total);
        List<newsTypeInfo> GetAll(out int total);
	}
}
