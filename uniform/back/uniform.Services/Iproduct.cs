using System.Collections.Generic;
using uniform.Entity;

namespace uniform.Services
{
	public interface Iproduct
	{
		int Add(productInfo info);
		int Update(productInfo info);
		int Delete(int id);
		productInfo GetInfo(int id);
		List<productInfo> GetList(int pageIndex, int pageSize, out int total);
        List<productInfo> GetAllByType(int iType, out int total);
	}
}
