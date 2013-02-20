using System.Collections.Generic;
using uniform.Entity;

namespace uniform.Services
{
	public interface IuserPromotion
	{
		int Add(userPromotionInfo info);
		int Update(userPromotionInfo info);
		int Delete(int id);
		userPromotionInfo GetInfo(int id);
		List<userPromotionInfo> GetList(int pageIndex, int pageSize, out int total);
        List<userPromotionInfo> GetAll(out int total);
	}
}
