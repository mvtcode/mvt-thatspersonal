using System.Collections.Generic;
using uniform.Entity;

namespace uniform.Services
{
	public interface Icarreer
	{
		int Add(carreerInfo info);
		int Update(carreerInfo info);
		int Delete(int id);
		carreerInfo GetInfo(int id);
        List<carreerInfo> GetList(int pageIndex, int pageSize, out int total, int categoryId);
	}
}
