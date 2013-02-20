using System.Collections.Generic;
using uniform.Entity;

namespace uniform.Services
{
	public interface IAdviceType
	{
		int Add(AdviceTypeInfo info);
		int Update(AdviceTypeInfo info);
		int Delete(int id);
		AdviceTypeInfo GetInfo(int id);
		List<AdviceTypeInfo> GetList(int pageIndex, int pageSize, out int total);
        List<AdviceTypeInfo> GetAll();
        int UpdateSort(int id, int sort);
	}
}
