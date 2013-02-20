

using System;

namespace Models.Entity
{
	[Serializable]
	public class NewsCategoryInfo
	{
		public int Id { get; set; }
		public string Name { get; set; }
		public string Link { get; set; }
		public int Sort { get; set; }
		public string Description { get; set; }
		public string MetaDescription { get; set; }
		public string MetaKeyword { get; set; }
		public string MetaHeading { get; set; }
		public string Image { get; set; }
		public string TitleRewrite { get; set; }
		public int ParentId { get; set; }
		
	}
}
