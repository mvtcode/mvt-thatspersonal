using System.Collections.Generic;
using uniform.Entity;

namespace uniform.Services
{
	public interface IAlbum
	{
		int Add(AlbumInfo info);
		int Update(AlbumInfo info);
		int Delete(int id);
		AlbumInfo GetInfo(int id);
		List<AlbumInfo> GetList(int pageIndex, int pageSize, out int total);
        List<AlbumInfo> GetAll(out int total);
	}
}
