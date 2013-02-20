using System.Collections.Generic;
using uniform.Entity;

namespace uniform.Services
{
	public interface IcarreerType
	{
		int Add(carreerTypeInfo info);
		int Update(carreerTypeInfo info);
		int Delete(int id);
		carreerTypeInfo GetInfo(int id);
		List<carreerTypeInfo> GetList(int pageIndex, int pageSize, out int total);
        List<carreerTypeInfo> GetAll();
        int UpdateSort(int id, int sort);
    }
}
