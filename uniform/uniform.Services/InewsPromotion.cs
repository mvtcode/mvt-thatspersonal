using System.Collections.Generic;
using uniform.Entity;

namespace uniform.Services
{
	public interface InewsPromotion
	{
		int Add(newsPromotionInfo info);
		int Update(newsPromotionInfo info);
		int Delete(int id);
		newsPromotionInfo GetInfo(int id);
		List<newsPromotionInfo> GetList(int pageIndex, int pageSize, out int total);
        List<newsPromotionInfo> GetAll(out int total);
	}
}
