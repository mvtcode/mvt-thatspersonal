using System.Collections.Generic;
using uniform.Entity;

namespace uniform.Services
{
	public interface IproducType
	{
		int Add(producTypeInfo info);
		int Update(producTypeInfo info);
		int Delete(int id);
		producTypeInfo GetInfo(int id);
		List<producTypeInfo> GetList(int pageIndex, int pageSize, out int total);
        List<producTypeInfo> GetAll(out int total);
	}
}
