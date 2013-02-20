using System.Collections.Generic;
using uniform.Entity;

namespace uniform.Services
{
	public interface IAdvice
	{
		int Add(AdviceInfo info);
			
		int Update(AdviceInfo info);
			
		int Delete(int id);

		AdviceInfo GetInfo(int id);

		List<AdviceInfo> GetList(int pageIndex, int pageSize, out int total);

        List<AdviceInfo> GetList(int pageIndex, int pageSize, out int total,int categoryId);

	    List<AdviceInfo> GetTop3Defaul();
	}
}
