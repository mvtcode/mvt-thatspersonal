using System;

namespace uniform.Entity
{
	[Serializable]
	public class imageAlbumInfo
	{
        public int id { get; set; }
        public int AlbumId { get; set; }
        public string AlbumName { get; set; }
        public string images { get; set; }
        public string altImage { get; set; }
	}
}
