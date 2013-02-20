using System.Collections.Generic;
using uniform.Entity;

namespace uniform.Services
{
	public interface IimageAlbum
	{
		int Add(imageAlbumInfo info);
		int Update(imageAlbumInfo info);
		int Delete(int id);
		imageAlbumInfo GetInfo(int id);
		List<imageAlbumInfo> GetList(int pageIndex, int pageSize, out int total);
        List<imageAlbumInfo> GetAllByType(int AlbumId, out int total);
	}
}
