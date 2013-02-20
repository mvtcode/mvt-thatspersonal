

using System;

namespace Models.Entity
{
	[Serializable]
	public class NewsInfo
	{
		public int Id { get; set; }
		public int CateId { get; set; }
		public string CateName { get; set; }
		public string Title { get; set; }
		public string Description { get; set; }
		public string Content { get; set; }
		public string Image { get; set; }
		public string AltImage { get; set; }
		public DateTime CreateDate { get; set; }
		public bool Action { get; set; }
		public string Link { get; set; }
		public string MetaKeyword { get; set; }
		public string MetaDescription { get; set; }
		public string MetaHeading { get; set; }
		public bool IsAttach { get; set; }
		public string TitleRewrite { get; set; }
		public string LanguageId { get; set; }
		
	}
}
