using System.Collections.Generic;
using uniform.Entity;

namespace uniform.Services
{
	public interface IPrice
	{
		int Add(PriceInfo info);
			
		int Update(PriceInfo info);
			
		int Delete(int id);

		PriceInfo GetInfo(int id);

		List<PriceInfo> GetList(int pageIndex, int pageSize, out int total);

        List<PriceInfo> GetList(int pageIndex, int pageSize, out int total, int categoryId);
	}
}
