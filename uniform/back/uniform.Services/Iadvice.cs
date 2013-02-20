using System.Collections.Generic;
using uniform.Entity;

namespace uniform.Services
{
	public interface Iadvice
	{
		int Add(adviceInfo info);
			
		int Update(adviceInfo info);
			
		int Delete(int id);

		adviceInfo GetInfo(int id);

		List<adviceInfo> GetList(int pageIndex, int pageSize, out int total);
	}
}
