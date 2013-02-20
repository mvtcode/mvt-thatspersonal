using System.Collections.Generic;
using uniform.Entity;

namespace uniform.Services
{
	public interface Inews
	{
		int Add(newsInfo info);
			
		int Update(newsInfo info);
			
		int Delete(int id);

		newsInfo GetInfo(int id);

		List<newsInfo> GetList(int pageIndex, int pageSize, out int total,int categoryId);
	}
}
