using System.Collections.Generic;
using uniform.Entity;

namespace uniform.Services
{
	public interface InewsType
	{
		int Add(NewsTypeInfo info);
		int Update(NewsTypeInfo info);
		int Delete(int id);
		NewsTypeInfo GetInfo(int id);
		List<NewsTypeInfo> GetList(int pageIndex, int pageSize, out int total);
        List<NewsTypeInfo> GetAll(out int total);
        List<NewsTypeInfo> GetAll();
	    int UpdateSort(int id, int sort);
	}
}
