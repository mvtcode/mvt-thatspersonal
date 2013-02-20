using System.Collections.Generic;
using uniform.Entity;

namespace uniform.Services
{
	public interface IPriceType
	{
		int Add(PriceTypeInfo info);
		int Update(PriceTypeInfo info);
		int Delete(int id);
		PriceTypeInfo GetInfo(int id);
		List<PriceTypeInfo> GetList(int pageIndex, int pageSize, out int total);
        List<PriceTypeInfo> GetAll();
        int UpdateSort(int id, int sort);
	}
}
