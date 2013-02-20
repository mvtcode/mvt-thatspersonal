using System.Collections.Generic;
using uniform.Entity;

namespace uniform.Services
{
	public interface IIntroductionType
	{
		int Add(IntroductionTypeInfo info);
		int Update(IntroductionTypeInfo info);
		int Delete(int id);
		IntroductionTypeInfo GetInfo(int id);
		List<IntroductionTypeInfo> GetList(int pageIndex, int pageSize, out int total);
        List<IntroductionTypeInfo> GetAll();
        int UpdateSort(int id, int sort);
	}
}
