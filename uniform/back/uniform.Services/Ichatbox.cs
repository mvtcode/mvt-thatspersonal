using System.Collections.Generic;
using uniform.Entity;

namespace uniform.Services
{
	public interface Ichatbox
	{
		int Add(chatboxInfo info);
		int Update(chatboxInfo info);
		int Delete(int id);
		chatboxInfo GetInfo(int id);
		List<chatboxInfo> GetList(int pageIndex, int pageSize, out int total);
        List<chatboxInfo> GetAll(out int total);
	}
}
