using System.Collections.Generic;
using uniform.Entity;

namespace uniform.Services
{
	public interface IproductColor
	{
		int Add(productColorInfo info);
			
		int Update(productColorInfo info);
			
		int Delete(int id);

		productColorInfo GetInfo(int id);

		List<productColorInfo> GetList(int pageIndex, int pageSize, out int total);
	}
}
