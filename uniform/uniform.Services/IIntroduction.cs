using System.Collections.Generic;
using uniform.Entity;

namespace uniform.Services
{
	public interface IIntroduction
	{
		int Add(IntroductionInfo info);
		int Update(IntroductionInfo info);
		int Delete(int id);
		IntroductionInfo GetInfo(int id);
        List<IntroductionInfo> GetList(int pageIndex, int pageSize, out int total, int categoryId);
	}
}
