using System.Collections.Generic;
using uniform.Entity;

namespace uniform.Services
{
	public interface Islideshow
	{
		int Add(slideshowInfo info);
		int Update(slideshowInfo info);
		int Delete(int id);
		slideshowInfo GetInfo(int id);
		List<slideshowInfo> GetList(int pageIndex, int pageSize, out int total);
        List<slideshowInfo> GetAll();
	}
}
