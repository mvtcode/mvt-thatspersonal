using System.Collections.Generic;
using uniform.Entity;

namespace uniform.Services
{
	public interface Icolor
	{
		int Add(colorInfo info);
			
		int Update(colorInfo info);
			
		int Delete(int id);

		colorInfo GetInfo(int id);

		List<colorInfo> GetList(int pageIndex, int pageSize, out int total);
	}
}
