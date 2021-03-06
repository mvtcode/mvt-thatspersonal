USE [dongphuc-new]
GO
/****** Object:  Table [dbo].[tblUser]    Script Date: 02/22/2013 17:40:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblUser](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](30) NULL,
	[Password] [nvarchar](100) NULL,
	[Fullname] [nvarchar](50) NULL,
	[Status] [smallint] NULL,
 CONSTRAINT [PK_tblUser] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tblUser] ON
INSERT [dbo].[tblUser] ([Id], [Username], [Password], [Fullname], [Status]) VALUES (2, N'tuan.it89', N'1', N'Vũ Anh Tuấn', 1)
SET IDENTITY_INSERT [dbo].[tblUser] OFF
/****** Object:  Table [dbo].[tblCustormer]    Script Date: 02/22/2013 17:40:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblCustormer](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Email] [varchar](50) NULL,
	[FirstName] [nvarchar](20) NULL,
	[Lastname] [nvarchar](20) NULL,
	[Password] [varchar](30) NULL,
	[Phone] [varchar](15) NULL,
	[Address] [nvarchar](500) NULL,
	[Active] [bit] NULL,
	[CreateDate] [datetime] NULL,
 CONSTRAINT [PK_tblCustormer] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tblCustormer] ON
INSERT [dbo].[tblCustormer] ([id], [Email], [FirstName], [Lastname], [Password], [Phone], [Address], [Active], [CreateDate]) VALUES (2, N'macvantan@gmail.com', N'mạc', N'văn tân', N'123456', N'0123456789', N'Hải Phòng', 1, CAST(0x0000A16C00000000 AS DateTime))
INSERT [dbo].[tblCustormer] ([id], [Email], [FirstName], [Lastname], [Password], [Phone], [Address], [Active], [CreateDate]) VALUES (3, N'tuan.it89@gmail.com', N'vu anh', N'tuan', N'123456', N'', N'', 0, CAST(0x0000A16C0131A6E5 AS DateTime))
INSERT [dbo].[tblCustormer] ([id], [Email], [FirstName], [Lastname], [Password], [Phone], [Address], [Active], [CreateDate]) VALUES (4, N'07t1.net@gmail.com', N'ưdwdw', N'đwd', N'1', N'', N'', 0, CAST(0x0000A16C0133798E AS DateTime))
SET IDENTITY_INSERT [dbo].[tblCustormer] OFF
/****** Object:  Table [dbo].[Slider]    Script Date: 02/22/2013 17:40:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Slider](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](200) NULL,
	[image] [varchar](200) NULL,
	[alt] [nvarchar](200) NULL,
	[link] [varchar](200) NULL,
 CONSTRAINT [PK_tbl_slideshow] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Slider] ON
INSERT [dbo].[Slider] ([id], [name], [image], [alt], [link]) VALUES (4, N'Váy siêu ngắn', N'vay-sieu-ngan.jpg', N'wdfwfef fefefef', N'http://google.com.vn')
INSERT [dbo].[Slider] ([id], [name], [image], [alt], [link]) VALUES (5, N'Mạc văn tân là con người như thế nào? dâm đãng :D', N'mac-van-tan-la-con-nguoi-nhu-the-nao-dam-dang-d.jpg', N'hoang hoa tham', N'dudwd')
INSERT [dbo].[Slider] ([id], [name], [image], [alt], [link]) VALUES (6, N'con dog tuấn', N'con-dog-tuan.jpg', N'dog tuấn', N'linh tinh')
SET IDENTITY_INSERT [dbo].[Slider] OFF
/****** Object:  Table [dbo].[ProductCategory]    Script Date: 02/22/2013 17:40:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ProductCategory](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Link] [varchar](200) NULL,
	[Sort] [int] NULL,
	[Description] [nvarchar](350) NULL,
	[MetaDescription] [nvarchar](250) NULL,
	[MetaKeyword] [nvarchar](250) NULL,
	[MetaHeading] [nvarchar](150) NULL,
	[ParentId] [int] NULL,
	[Summary] [nvarchar](500) NULL,
	[Image] [nvarchar](150) NULL,
	[Zone] [varchar](10) NULL,
	[RewriteTitle] [varchar](150) NULL,
	[imgbanner] [nvarchar](150) NULL,
	[linkbanner] [varchar](200) NULL,
	[titbanner] [nvarchar](150) NULL,
 CONSTRAINT [PK_tbl_producType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[ProductCategory] ON
INSERT [dbo].[ProductCategory] ([Id], [Name], [Link], [Sort], [Description], [MetaDescription], [MetaKeyword], [MetaHeading], [ParentId], [Summary], [Image], [Zone], [RewriteTitle], [imgbanner], [linkbanner], [titbanner]) VALUES (10, N'Đồ cho Nam', N'', 0, N'mô tả gì nhỉ?', N'cái này là cái j', N'còn cái này nữa', N'chịu chết', 0, N'dog tuấn', N'do-cho-nam.jpg', N'', N'', NULL, NULL, NULL)
INSERT [dbo].[ProductCategory] ([Id], [Name], [Link], [Sort], [Description], [MetaDescription], [MetaKeyword], [MetaHeading], [ParentId], [Summary], [Image], [Zone], [RewriteTitle], [imgbanner], [linkbanner], [titbanner]) VALUES (11, N'Đồ cho Nữ', N'', 0, N'đồ chơi cho nữa', N'as', N'ddddddd', N'fg', 0, N'fdsgdf', N'do-cho-nu.jpg', N'', N'', NULL, NULL, NULL)
INSERT [dbo].[ProductCategory] ([Id], [Name], [Link], [Sort], [Description], [MetaDescription], [MetaKeyword], [MetaHeading], [ParentId], [Summary], [Image], [Zone], [RewriteTitle], [imgbanner], [linkbanner], [titbanner]) VALUES (12, N'bao cao su', N'/12/bao-cao-su.htm', 0, N'aaaaaaaaaaaaaa', N'bbbbbbbbbbbbbb', N'cccccccccccccccc', N'dddddddd', 10, N'eeeeeeeeeeee', N'bao-cao-su.png', N'', N'', N'banner-bao-cao-su.jpg', N'22222222222222', N'111111111111111')
SET IDENTITY_INSERT [dbo].[ProductCategory] OFF
/****** Object:  Table [dbo].[Product]    Script Date: 02/22/2013 17:40:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Product](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[CateName] [nvarchar](150) NULL,
	[CateId] [int] NULL,
	[ProductName] [nvarchar](100) NULL,
	[name] [nvarchar](100) NULL,
	[description] [nvarchar](500) NULL,
	[contents] [nvarchar](1000) NULL,
	[tag] [nvarchar](200) NULL,
	[Keyword] [nvarchar](200) NULL,
	[image] [varchar](200) NULL,
	[altImage] [nvarchar](200) NULL,
	[isHot] [bit] NULL,
	[price] [bigint] NULL,
	[Link] [nvarchar](200) NULL,
	[size] [nvarchar](500) NULL,
	[DateCreate] [smalldatetime] NULL,
 CONSTRAINT [PK_tbl_product] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON
INSERT [dbo].[Product] ([id], [CateName], [CateId], [ProductName], [name], [description], [contents], [tag], [Keyword], [image], [altImage], [isHot], [price], [Link], [size], [DateCreate]) VALUES (13, N'Đồ cho Nam', 10, N'', N'bao cao su', N'fgh', N'nội dung', N'111', N'222', N'bao-cao-su.gif', N'bao cao su nè', 0, 10000, N'/do-cho-nam/1013/bao-cao-su.htm', N'None', CAST(0xA16B028C AS SmallDateTime))
INSERT [dbo].[Product] ([id], [CateName], [CateId], [ProductName], [name], [description], [contents], [tag], [Keyword], [image], [altImage], [isHot], [price], [Link], [size], [DateCreate]) VALUES (14, N'Đồ cho Nam', 10, N'', N'áo lót', N'áo', N'', N'gfsdfs', N'55555555', N'ao-lot.jpg', N'sdfgsdf', 0, 1222, N'/do-cho-nam/1014/ao-lot.htm', N'M,L,XL', CAST(0xA16B02A2 AS SmallDateTime))
INSERT [dbo].[Product] ([id], [CateName], [CateId], [ProductName], [name], [description], [contents], [tag], [Keyword], [image], [altImage], [isHot], [price], [Link], [size], [DateCreate]) VALUES (15, N'Đồ cho Nam', 10, N'', N'Đồ quay tay', N'ádfasf', N'ádfasf', N'dddddđ', NULL, N'do-quay-tay.jpg', N'hhhhhhhhhhhh', 0, 100000, N'', N'nhỏ, to vừa vừa, bé', CAST(0xA16B02A5 AS SmallDateTime))
INSERT [dbo].[Product] ([id], [CateName], [CateId], [ProductName], [name], [description], [contents], [tag], [Keyword], [image], [altImage], [isHot], [price], [Link], [size], [DateCreate]) VALUES (16, N'bao cao su', 12, N'', N'aaaaaaaa', N'bbbbbbbbb', N'bbbbbbbbb', N'ddddđ', NULL, N'aaaaaaaa.jpg', N'dadfa', 0, 200000, N'', N'A,B,C,D', CAST(0xA16B02AC AS SmallDateTime))
SET IDENTITY_INSERT [dbo].[Product] OFF
/****** Object:  Table [dbo].[Partner]    Script Date: 02/22/2013 17:40:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Partner](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Link] [nvarchar](150) NULL,
	[Description] [nvarchar](250) NULL,
	[Image] [nvarchar](250) NULL,
	[Alt] [nvarchar](50) NULL,
 CONSTRAINT [PK_Partner] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Partner] ON
INSERT [dbo].[Partner] ([Id], [Name], [Link], [Description], [Image], [Alt]) VALUES (1, N'Công ty VC Corp', N'http://vccorp.vn', N'mô tả công ty', N'cong-ty-vc-corp.jpg', N'seo')
INSERT [dbo].[Partner] ([Id], [Name], [Link], [Description], [Image], [Alt]) VALUES (2, N'Công ty BHD', N'ưdfwdfwdfw', N'uununununun', N'cong-ty-bhd.jpg', N'')
INSERT [dbo].[Partner] ([Id], [Name], [Link], [Description], [Image], [Alt]) VALUES (4, N'Công ty VC Corp', N'kkmmkmkmkm', N'mô tả công ty', N'', N'seo')
SET IDENTITY_INSERT [dbo].[Partner] OFF
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 02/22/2013 17:40:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [int] NULL,
	[ProductId] [int] NULL,
	[ProductName] [nvarchar](100) NULL,
	[price] [int] NULL,
	[Number] [int] NULL,
	[size] [nvarchar](100) NULL,
 CONSTRAINT [PK_OrderDetail] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 02/22/2013 17:40:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerID] [int] NULL,
	[FullnameOrder] [nvarchar](200) NULL,
	[SexOrder] [int] NULL,
	[AddressOrder] [nvarchar](500) NULL,
	[EmailOrder] [nvarchar](50) NULL,
	[PhoneOrder] [nvarchar](50) NULL,
	[MobileOrder] [nvarchar](50) NULL,
	[FaxOrder] [nvarchar](50) NULL,
	[OtherInfoOrder] [nvarchar](500) NULL,
	[FullnameReceived] [nvarchar](200) NULL,
	[SexReceived] [int] NULL,
	[AddressReceived] [nvarchar](500) NULL,
	[EmailReceived] [nvarchar](50) NULL,
	[PhoneReceived] [nvarchar](50) NULL,
	[MobileReceived] [nvarchar](50) NULL,
	[FaxReceived] [nvarchar](50) NULL,
	[OtherInfoReceived] [nvarchar](500) NULL,
	[Shipping] [int] NULL,
	[TransitTime] [nvarchar](50) NULL,
	[Payment] [int] NULL,
	[TotalPayment] [float] NULL,
	[ProductNumber] [int] NULL,
	[StatusOrder] [int] NULL,
	[OnOrder] [datetime] NULL,
 CONSTRAINT [PK_DK_Order] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NewsCategory]    Script Date: 02/22/2013 17:40:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NewsCategory](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Link] [varchar](200) NULL,
	[Sort] [int] NULL,
	[Description] [nvarchar](350) NULL,
	[MetaDescription] [nvarchar](250) NULL,
	[MetaKeyword] [nvarchar](250) NULL,
	[MetaHeading] [nvarchar](50) NULL,
	[Image] [nvarchar](250) NULL,
	[TitleRewrite] [varchar](150) NULL,
	[ParentId] [int] NULL,
 CONSTRAINT [PK_tbl_newsType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[NewsCategory] ON
INSERT [dbo].[NewsCategory] ([Id], [Name], [Link], [Sort], [Description], [MetaDescription], [MetaKeyword], [MetaHeading], [Image], [TitleRewrite], [ParentId]) VALUES (1, N'Tin mới', N'/tin-tuc/tin-moi-c2.htm', 0, N'seo', N'seo', N'meta', N'', N'', N'', 0)
INSERT [dbo].[NewsCategory] ([Id], [Name], [Link], [Sort], [Description], [MetaDescription], [MetaKeyword], [MetaHeading], [Image], [TitleRewrite], [ParentId]) VALUES (2, N'tin sốt sình sịch 1', N'/tin-tuc/tin-sot-sinh-sich-1-c2.htm', 1, N'seo sịch', N'seo sịch', N'ta sịch', N'', N'', N'', 0)
SET IDENTITY_INSERT [dbo].[NewsCategory] OFF
/****** Object:  Table [dbo].[News]    Script Date: 02/22/2013 17:40:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[News](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CateId] [int] NULL,
	[CateName] [nvarchar](100) NULL,
	[Title] [nvarchar](100) NULL,
	[Description] [nvarchar](500) NULL,
	[Content] [ntext] NULL,
	[Image] [nvarchar](200) NULL,
	[AltImage] [nvarchar](200) NULL,
	[CreateDate] [datetime] NULL,
	[Action] [bit] NULL,
	[Link] [varchar](200) NULL,
	[MetaKeyword] [nvarchar](200) NULL,
	[MetaDescription] [nvarchar](500) NULL,
	[MetaHeading] [nvarchar](250) NULL,
	[IsAttach] [bit] NULL,
	[TitleRewrite] [nvarchar](150) NOT NULL,
	[LanguageId] [varchar](5) NULL,
 CONSTRAINT [PK_News] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[News] ON
INSERT [dbo].[News] ([Id], [CateId], [CateName], [Title], [Description], [Content], [Image], [AltImage], [CreateDate], [Action], [Link], [MetaKeyword], [MetaDescription], [MetaHeading], [IsAttach], [TitleRewrite], [LanguageId]) VALUES (1, 1, N'Tin mới', N'tin hot 1111', N'ggf', N'<p>
	sdgdfgdsfg</p>
', N'tin-hot-1111.jpg', N'tin hot 1111', CAST(0x0000A16C00C4103D AS DateTime), 1, N'/tin-tuc/tin-moi-c1/tin-hot-1111-d2.htm', N'aaaaaaaa', N'sdfgfhgfhfg', N'aaaaaaaa', 0, N'', N'VN')
INSERT [dbo].[News] ([Id], [CateId], [CateName], [Title], [Description], [Content], [Image], [AltImage], [CreateDate], [Action], [Link], [MetaKeyword], [MetaDescription], [MetaHeading], [IsAttach], [TitleRewrite], [LanguageId]) VALUES (2, 1, N'Tin mới', N'11111111', N'222222222', N'<p>
	33333333333333</p>
', N'', N'11111111', CAST(0x0000A16C00C503F0 AS DateTime), 1, N'/tin-tuc/tin-moi-c1/11111111-d2.htm', N'444444444444444', N'55555555555', N'444444444444444', 0, N'', N'VN')
INSERT [dbo].[News] ([Id], [CateId], [CateName], [Title], [Description], [Content], [Image], [AltImage], [CreateDate], [Action], [Link], [MetaKeyword], [MetaDescription], [MetaHeading], [IsAttach], [TitleRewrite], [LanguageId]) VALUES (3, 2, N'tin sốt sình sịch 1', N'11111111', N'22222222', N'<p>
	333333333333</p>
', N'', N'11111111', CAST(0x0000A16C00CA9E52 AS DateTime), 1, N'/tin-tuc/tin-sot-sinh-sich-1-c2/11111111-d3.htm', N'4444444444444', N'55555555', N'4444444444444', 0, N'', N'VN')
SET IDENTITY_INSERT [dbo].[News] OFF
/****** Object:  StoredProcedure [dbo].[usp_Introduction_Update]    Script Date: 02/22/2013 17:40:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Introduction_Update] 
	@id int,
	@introductionTypeId int,
	@introductionTypeName nvarchar(100),
	@title nvarchar(100),
	@description nvarchar(500),
	@content ntext,
	@image nvarchar(200),
	@altImage nvarchar(200),
	@tag nvarchar(200),
	@CreateDate datetime,
	@action bit,
	@link varchar(200),
	@desseo nvarchar(500)
	
AS
BEGIN	

	SET NOCOUNT OFF;
	
	Update [tbl_Introduction]
	Set	
		[introductionTypeId]=@introductionTypeId,
		[introductionTypeName]=@introductionTypeName,
		[title]=@title,
		[description]=@description,
		[content]=@content,
		[image]=@image,
		[altImage]=@altImage,
		[tag]=@tag,
		[CreateDate]=@CreateDate,
		[action]=@action,
		[link]=@link,
		[desseo]=@desseo
		
	Where
		id=@id
		
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Introduction_Type_updateSort]    Script Date: 02/22/2013 17:40:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[usp_Introduction_Type_updateSort]
@id int,
@sort int
as
begin
	update tbl_Introduction_Type set sort=@sort where id=@id
end
GO
/****** Object:  StoredProcedure [dbo].[usp_Introduction_Type_Update]    Script Date: 02/22/2013 17:40:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Introduction_Type_Update] 
	@id int,
	@name nvarchar(100),
	@link varchar(200),
	@sort smallint,
	@description nvarchar(350),
	@keyword nvarchar(250)
	
AS
BEGIN	

	SET NOCOUNT OFF;
	
	Update [tbl_Introduction_Type]
	Set	
		[name]=@name,
		[link]=@link,
		[sort]=@sort,
		[description]=@description,
		[keyword]=@keyword
		
	Where
		id=@id
		
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Introduction_Type_GetList]    Script Date: 02/22/2013 17:40:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Introduction_Type_GetList]
	@PageIndex int,
	@PageSize int,
	@totalrow int output
AS
BEGIN
	DECLARE @from int
	DECLARE @to int

    SET @from = @PageIndex * @PageSize + 1;
	SET @to = @from + @PageSize - 1;

	SELECT 
		id
		,[name],
		[link],
		[sort],
		[description],
		[keyword]
		
	FROM (
			SELECT 
				id
		,[name],
		[link],
		[sort],
		[description],
		[keyword]
		,
				ROW_NUMBER() OVER(ORDER BY id
		 ASC) as ROWNUMBER
			FROM [tbl_Introduction_Type]
		  ) as p  where ROWNUMBER between @from and @to

	SET @totalrow = (SELECT count(*) FROM [tbl_Introduction_Type])
	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Introduction_Type_GetById]    Script Date: 02/22/2013 17:40:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Introduction_Type_GetById] 
	@id int
	
AS
BEGIN	

	SET NOCOUNT ON;
	
	Select 
		id
		,[name],
		[link],
		[sort],
		[description],
		[keyword]
		
	From [tbl_Introduction_Type]
	Where
		id=@id
		
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Introduction_Type_GetAll]    Script Date: 02/22/2013 17:40:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Introduction_Type_GetAll]
AS
BEGIN
	
			SELECT *
			FROM [tbl_Introduction_Type]
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Introduction_Type_Delete]    Script Date: 02/22/2013 17:40:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Introduction_Type_Delete] 
	@id int
	
AS
BEGIN	

	SET NOCOUNT OFF;
	
	Delete From [tbl_Introduction_Type]
	Where
		id=@id
		
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Introduction_Type_Add]    Script Date: 02/22/2013 17:40:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Introduction_Type_Add] 
	@name nvarchar(100),
	@link varchar(200),
	@sort smallint,
	@description nvarchar(350),
	@keyword nvarchar(250)
	
AS
BEGIN	

	SET NOCOUNT OFF;
	Insert Into [tbl_Introduction_Type]
	(
		[name],
		[link],
		[sort],
		[description],
		[keyword]
		
	)
	values
	(
		@name,
		@link,
		@sort,
		@description,
		@keyword
		
	)
END
    select @@IDENTITY
GO
/****** Object:  StoredProcedure [dbo].[usp_Introduction_GetList]    Script Date: 02/22/2013 17:40:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Introduction_GetList]
	@PageIndex int,
	@PageSize int,
	@totalrow int output,
	@introductionTypeId int
AS
BEGIN
	DECLARE @from int
	DECLARE @to int

    SET @from = @PageIndex * @PageSize + 1;
	SET @to = @from + @PageSize - 1;
IF(@introductionTypeId>0)
BEGIN
	SELECT 
		id
		,[introductionTypeId],
		[introductionTypeName],
		[title],
		[description],
		[content],
		[image],
		[altImage],
		[tag],
		[CreateDate],
		[action],
		[link],
		[desseo]
		
	FROM (
			SELECT 
				id
		,[introductionTypeId],
		[introductionTypeName],
		[title],
		[description],
		[content],
		[image],
		[altImage],
		[tag],
		[CreateDate],
		[action],
		[link],
		[desseo]
		,
				ROW_NUMBER() OVER(ORDER BY id
		 ASC) as ROWNUMBER
			FROM [tbl_Introduction]
			WHERE introductionTypeId=@introductionTypeId
		  ) as p  where ROWNUMBER between @from and @to

	SET @totalrow = (SELECT count(*) FROM [tbl_Introduction] WHERE introductionTypeId=@introductionTypeId)
END
ELSE
BEGIN
	SELECT 
		id
		,[introductionTypeId],
		[introductionTypeName],
		[title],
		[description],
		[content],
		[image],
		[altImage],
		[tag],
		[CreateDate],
		[action],
		[link],
		[desseo]
		
	FROM (
			SELECT 
				id
		,[introductionTypeId],
		[introductionTypeName],
		[title],
		[description],
		[content],
		[image],
		[altImage],
		[tag],
		[CreateDate],
		[action],
		[link],
		[desseo]
		,
				ROW_NUMBER() OVER(ORDER BY id
		 ASC) as ROWNUMBER
			FROM [tbl_Introduction]
		  ) as p  where ROWNUMBER between @from and @to

	SET @totalrow = (SELECT count(*) FROM [tbl_Introduction])
END
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Introduction_GetById]    Script Date: 02/22/2013 17:40:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Introduction_GetById] 
	@id int
	
AS
BEGIN	

	SET NOCOUNT ON;
	
	Select 
		id
		,[introductionTypeId],
		[introductionTypeName],
		[title],
		[description],
		[content],
		[image],
		[altImage],
		[tag],
		[CreateDate],
		[action],
		[link],
		[desseo]
		
	From [tbl_Introduction]
	Where
		id=@id
		
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Introduction_Delete]    Script Date: 02/22/2013 17:40:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Introduction_Delete] 
	@id int
	
AS
BEGIN	

	SET NOCOUNT OFF;
	
	Delete From [tbl_Introduction]
	Where
		id=@id
		
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Introduction_Add]    Script Date: 02/22/2013 17:40:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Introduction_Add] 
	@introductionTypeId int,
	@introductionTypeName nvarchar(100),
	@title nvarchar(100),
	@description nvarchar(500),
	@content ntext,
	@image nvarchar(200),
	@altImage nvarchar(200),
	@tag nvarchar(200),
	@CreateDate datetime,
	@action bit,
	@link varchar(200),
	@desseo nvarchar(500)
	
AS
BEGIN	

	SET NOCOUNT OFF;
	Insert Into [tbl_Introduction]
	(
		[introductionTypeId],
		[introductionTypeName],
		[title],
		[description],
		[content],
		[image],
		[altImage],
		[tag],
		[CreateDate],
		[action],
		[link],
		[desseo]
		
	)
	values
	(
		@introductionTypeId,
		@introductionTypeName,
		@title,
		@description,
		@content,
		@image,
		@altImage,
		@tag,
		@CreateDate,
		@action,
		@link,
		@desseo
		
	)
END
    select @@IDENTITY
GO
/****** Object:  StoredProcedure [dbo].[usp_imageAlbum_Update]    Script Date: 02/22/2013 17:40:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_imageAlbum_Update] 
	@id int,
	@AlbumId int,
	@AlbumName nvarchar(200),
	@images varchar(200),
	@altImage nvarchar(200)
	
AS
BEGIN	

	SET NOCOUNT OFF;
	
	Update [tbl_imageAlbum]
	Set	
		[AlbumId]=@AlbumId,
		[AlbumName]=@AlbumName,
		[images]=@images,
		[altImage]=@altImage
		
	Where
		id=@id
		
END
GO
/****** Object:  StoredProcedure [dbo].[usp_imageAlbum_GetList]    Script Date: 02/22/2013 17:40:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_imageAlbum_GetList]
	@PageIndex int,
	@PageSize int,
	@totalrow int output
AS
BEGIN
	DECLARE @from int
	DECLARE @to int

    SET @from = @PageIndex * @PageSize + 1;
	SET @to = @from + @PageSize - 1;

	SELECT 
		id
		,[AlbumId],
		[AlbumName],
		[images],
		[altImage]
		
	FROM (
			SELECT 
				id
		,[AlbumId],
		[AlbumName],
		[images],
		[altImage]
		,
				ROW_NUMBER() OVER(ORDER BY id
		 ASC) as ROWNUMBER
			FROM [tbl_imageAlbum]
		  ) as p  where ROWNUMBER between @from and @to

	SET @totalrow = (SELECT count(*) FROM [tbl_imageAlbum])
	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_imageAlbum_GetById]    Script Date: 02/22/2013 17:40:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_imageAlbum_GetById] 
	@id int
	
AS
BEGIN	

	SET NOCOUNT ON;
	
	Select 
		id
		,[AlbumId],
		[AlbumName],
		[images],
		[altImage]
		
	From [tbl_imageAlbum]
	Where
		id=@id
		
END
GO
/****** Object:  StoredProcedure [dbo].[usp_imageAlbum_GetAllByType]    Script Date: 02/22/2013 17:40:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_imageAlbum_GetAllByType]
	@AlbumId int,
	@totalrow int output
AS
BEGIN
	SELECT *
	FROM [tbl_imageAlbum]
	WHERE AlbumId=@AlbumId
	SET @totalrow = (SELECT count(*) FROM [tbl_imageAlbum] WHERE AlbumId=@AlbumId)
	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_imageAlbum_Delete]    Script Date: 02/22/2013 17:40:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_imageAlbum_Delete] 
	@id int
	
AS
BEGIN	

	SET NOCOUNT OFF;
	
	Delete From [tbl_imageAlbum]
	Where
		id=@id
		
END
GO
/****** Object:  StoredProcedure [dbo].[usp_imageAlbum_Add]    Script Date: 02/22/2013 17:40:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_imageAlbum_Add] 
	@AlbumId int,
	@AlbumName nvarchar(200),
	@images varchar(200),
	@altImage nvarchar(200)
	
AS
BEGIN	

	SET NOCOUNT OFF;
	Insert Into [tbl_imageAlbum]
	(
		[AlbumId],
		[AlbumName],
		[images],
		[altImage]
		
	)
	values
	(
		@AlbumId,
		@AlbumName,
		@images,
		@altImage
		
	)
END
    select @@IDENTITY
GO
/****** Object:  StoredProcedure [dbo].[usp_color_Update]    Script Date: 02/22/2013 17:40:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_color_Update] 
	@id int,
	@name nvarchar(50),
	@value varchar(50)
	
AS
BEGIN	

	SET NOCOUNT OFF;
	
	Update [tbl_color]
	Set	
		[name]=@name,
		[value]=@value
		
	Where
		id=@id
		
END
GO
/****** Object:  StoredProcedure [dbo].[usp_color_GetList]    Script Date: 02/22/2013 17:40:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_color_GetList]
	@PageIndex int,
	@PageSize int,
	@totalrow int output
AS
BEGIN
	DECLARE @from int
	DECLARE @to int

    SET @from = @PageIndex * @PageSize + 1;
	SET @to = @from + @PageSize - 1;

	SELECT 
		id
		,[name],
		[value]
		
	FROM (
			SELECT 
				id
		,[name],
		[value]
		,
				ROW_NUMBER() OVER(ORDER BY id
		 ASC) as ROWNUMBER
			FROM [tbl_color]
		  ) as p  where ROWNUMBER between @from and @to

	SET @totalrow = (SELECT count(*) FROM [tbl_color])
	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_color_GetAll]    Script Date: 02/22/2013 17:40:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_color_GetAll]
	@totalrow int output
AS
BEGIN	
	SELECT *
	FROM [tbl_color]
	SET @totalrow = (SELECT count(*) FROM [tbl_color])	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_color_Delete]    Script Date: 02/22/2013 17:40:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_color_Delete] 
	@id int
	
AS
BEGIN	

	SET NOCOUNT OFF;
	
	Delete From [tbl_color]
	Where
		id=@id
		
END
GO
/****** Object:  StoredProcedure [dbo].[usp_chatbox_UpdateActive]    Script Date: 02/22/2013 17:40:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_chatbox_UpdateActive] 
	@ID int,
	@active bit	
AS
BEGIN	

	SET NOCOUNT OFF;
	
	Update [tbl_chatbox]
	Set	
		active=@active		
	Where
		ID=@ID
		
END
GO
/****** Object:  StoredProcedure [dbo].[usp_chatbox_GetById]    Script Date: 02/22/2013 17:40:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_chatbox_GetById] 
	@ID int
	
AS
BEGIN	

	SET NOCOUNT ON;
	
	Select 
		ID
		,[name],
		[comment],
		[CreateDate]
		
	From [tbl_chatbox]
	Where
		ID=@ID
		
END
GO
/****** Object:  StoredProcedure [dbo].[usp_chatbox_Delete]    Script Date: 02/22/2013 17:40:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_chatbox_Delete] 
	@ID int
	
AS
BEGIN	

	SET NOCOUNT OFF;
	
	Delete From [tbl_chatbox]
	Where
		ID=@ID
		
END
GO
/****** Object:  StoredProcedure [dbo].[usp_carreer_Update]    Script Date: 02/22/2013 17:40:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_carreer_Update] 
	@id int,
	@carreerTypeId int,
	@carreerTypeName nvarchar(100),
	@title nvarchar(100),
	@description nvarchar(500),
	@content ntext,
	@image nvarchar(200),
	@altImage nvarchar(200),
	@tag nvarchar(200),
	@CreateDate datetime,
	@action bit,
	@link varchar(200),
	@desseo nvarchar(500)
	
AS
BEGIN	

	SET NOCOUNT OFF;
	
	Update [tbl_carreer]
	Set	
		[carreerTypeId]=@carreerTypeId,
		[carreerTypeName]=@carreerTypeName,
		[title]=@title,
		[description]=@description,
		[content]=@content,
		[image]=@image,
		[altImage]=@altImage,
		[tag]=@tag,
		[CreateDate]=@CreateDate,
		[action]=@action,
		[link]=@link,
		[desseo]=@desseo
		
	Where
		id=@id
		
END
GO
/****** Object:  StoredProcedure [dbo].[usp_carreer_Type_updateSort]    Script Date: 02/22/2013 17:40:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[usp_carreer_Type_updateSort]
@id int,
@sort int
as
begin
	update tbl_carreer_Type set sort=@sort where id=@id
end
GO
/****** Object:  StoredProcedure [dbo].[usp_carreer_Type_Update]    Script Date: 02/22/2013 17:40:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_carreer_Type_Update] 
	@id int,
	@name nvarchar(100),
	@link varchar(200),
	@sort smallint,
	@description nvarchar(350),
	@keyword nvarchar(250)
	
AS
BEGIN	

	SET NOCOUNT OFF;
	
	Update [tbl_carreer_Type]
	Set	
		[name]=@name,
		[link]=@link,
		[sort]=@sort,
		[description]=@description,
		[keyword]=@keyword
		
	Where
		id=@id
		
END
GO
/****** Object:  StoredProcedure [dbo].[usp_carreer_Type_GetList]    Script Date: 02/22/2013 17:40:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_carreer_Type_GetList]
	@PageIndex int,
	@PageSize int,
	@totalrow int output
AS
BEGIN
	DECLARE @from int
	DECLARE @to int

    SET @from = @PageIndex * @PageSize + 1;
	SET @to = @from + @PageSize - 1;

	SELECT 
		id
		,[name],
		[link],
		[sort],
		[description],
		[keyword]
		
	FROM (
			SELECT 
				id
		,[name],
		[link],
		[sort],
		[description],
		[keyword]
		,
				ROW_NUMBER() OVER(ORDER BY id
		 ASC) as ROWNUMBER
			FROM [tbl_carreer_Type]
		  ) as p  where ROWNUMBER between @from and @to

	SET @totalrow = (SELECT count(*) FROM [tbl_carreer_Type])
	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_carreer_Type_GetById]    Script Date: 02/22/2013 17:40:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_carreer_Type_GetById] 
	@id int
	
AS
BEGIN	

	SET NOCOUNT ON;
	
	Select 
		id
		,[name],
		[link],
		[sort],
		[description],
		[keyword]
		
	From [tbl_carreer_Type]
	Where
		id=@id
		
END
GO
/****** Object:  StoredProcedure [dbo].[usp_carreer_Type_Add]    Script Date: 02/22/2013 17:40:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_carreer_Type_Add] 
	@name nvarchar(100),
	@link varchar(200),
	@sort smallint,
	@description nvarchar(350),
	@keyword nvarchar(250)
	
AS
BEGIN	

	SET NOCOUNT OFF;
	Insert Into [tbl_carreer_Type]
	(
		[name],
		[link],
		[sort],
		[description],
		[keyword]
		
	)
	values
	(
		@name,
		@link,
		@sort,
		@description,
		@keyword
		
	)
END
    select @@IDENTITY
GO
/****** Object:  StoredProcedure [dbo].[usp_carreer_GetList]    Script Date: 02/22/2013 17:40:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_carreer_GetList]
	@PageIndex int,
	@PageSize int,
	@totalrow int output,
	@carreerTypeId int
AS
BEGIN
	DECLARE @from int
	DECLARE @to int

    SET @from = @PageIndex * @PageSize + 1;
	SET @to = @from + @PageSize - 1;
IF(@carreerTypeId>0)
BEGIN
	SELECT 
		id
		,[carreerTypeId],
		[carreerTypeName],
		[title],
		[description],
		[content],
		[image],
		[altImage],
		[tag],
		[CreateDate],
		[action],
		[link],
		[desseo]
		
	FROM (
			SELECT 
				id
		,[carreerTypeId],
		[carreerTypeName],
		[title],
		[description],
		[content],
		[image],
		[altImage],
		[tag],
		[CreateDate],
		[action],
		[link],
		[desseo]
		,
				ROW_NUMBER() OVER(ORDER BY id
		 ASC) as ROWNUMBER
			FROM [tbl_carreer]
			WHERE carreerTypeId=@carreerTypeId
		  ) as p  where ROWNUMBER between @from and @to

	SET @totalrow = (SELECT count(*) FROM [tbl_carreer] WHERE carreerTypeId=@carreerTypeId)
END
ELSE
BEGIN
	SELECT 
		id
		,[carreerTypeId],
		[carreerTypeName],
		[title],
		[description],
		[content],
		[image],
		[altImage],
		[tag],
		[CreateDate],
		[action],
		[link],
		[desseo]
		
	FROM (
			SELECT 
				id
		,[carreerTypeId],
		[carreerTypeName],
		[title],
		[description],
		[content],
		[image],
		[altImage],
		[tag],
		[CreateDate],
		[action],
		[link],
		[desseo]
		,
				ROW_NUMBER() OVER(ORDER BY id
		 ASC) as ROWNUMBER
			FROM [tbl_carreer]
		  ) as p  where ROWNUMBER between @from and @to

	SET @totalrow = (SELECT count(*) FROM [tbl_carreer])
END
END
GO
/****** Object:  StoredProcedure [dbo].[usp_carreer_Delete]    Script Date: 02/22/2013 17:40:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_carreer_Delete] 
	@id int
	
AS
BEGIN	

	SET NOCOUNT OFF;
	
	Delete From [tbl_carreer]
	Where
		id=@id
		
END
GO
/****** Object:  StoredProcedure [dbo].[usp_carreer_Add]    Script Date: 02/22/2013 17:40:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_carreer_Add] 
	@carreerTypeId int,
	@carreerTypeName nvarchar(100),
	@title nvarchar(100),
	@description nvarchar(500),
	@content ntext,
	@image nvarchar(200),
	@altImage nvarchar(200),
	@tag nvarchar(200),
	@CreateDate datetime,
	@action bit,
	@link varchar(200),
	@desseo nvarchar(500)
	
AS
BEGIN	

	SET NOCOUNT OFF;
	Insert Into [tbl_carreer]
	(
		[carreerTypeId],
		[carreerTypeName],
		[title],
		[description],
		[content],
		[image],
		[altImage],
		[tag],
		[CreateDate],
		[action],
		[link],
		[desseo]
		
	)
	values
	(
		@carreerTypeId,
		@carreerTypeName,
		@title,
		@description,
		@content,
		@image,
		@altImage,
		@tag,
		@CreateDate,
		@action,
		@link,
		@desseo
		
	)
END
    select @@IDENTITY
GO
/****** Object:  StoredProcedure [dbo].[usp_Album_Update]    Script Date: 02/22/2013 17:40:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Album_Update] 
	@id int,
	@title nvarchar(100),
	@description nvarchar(500),
	@image nvarchar(200),
	@altImage nvarchar(200),
	@tag nvarchar(200),
	@sort int,
	@action bit,
	@link varchar(200)
	
AS
BEGIN	

	SET NOCOUNT OFF;
	
	Update [tbl_Album]
	Set	
		[title]=@title,
		[description]=@description,
		[image]=@image,
		[altImage]=@altImage,
		[tag]=@tag,
		[sort]=@sort,
		[action]=@action,
		[link]=@link
		
	Where
		id=@id
		
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Album_GetList]    Script Date: 02/22/2013 17:40:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Album_GetList]
	@PageIndex int,
	@PageSize int,
	@totalrow int output
AS
BEGIN
	DECLARE @from int
	DECLARE @to int

    SET @from = @PageIndex * @PageSize + 1;
	SET @to = @from + @PageSize - 1;

	SELECT 
		id
		,[title],
		[description],
		[image],
		[altImage],
		[tag],
		[CreateDate],
		[sort],
		[action],
		[link]
		
	FROM (
			SELECT 
				id
		,[title],
		[description],
		[image],
		[altImage],
		[tag],
		[CreateDate],
		[sort],
		[action],
		[link]
		,
				ROW_NUMBER() OVER(ORDER BY id
		 ASC) as ROWNUMBER
			FROM [tbl_Album]
		  ) as p  where ROWNUMBER between @from and @to

	SET @totalrow = (SELECT count(*) FROM [tbl_Album])
	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Album_GetById]    Script Date: 02/22/2013 17:40:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Album_GetById] 
	@id int
	
AS
BEGIN	

	SET NOCOUNT ON;
	
	Select 
		id
		,[title],
		[description],
		[image],
		[altImage],
		[tag],
		[CreateDate],
		[sort],
		[action],
		[link]
		
	From [tbl_Album]
	Where
		id=@id
		
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Album_GetAll]    Script Date: 02/22/2013 17:40:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Album_GetAll]
	@totalrow int output
AS
BEGIN
	
			SELECT *	
			FROM [tbl_Album]
	SET @totalrow = (SELECT count(*) FROM [tbl_Album])
	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Album_Delete]    Script Date: 02/22/2013 17:40:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Album_Delete] 
	@id int
	
AS
BEGIN	

	SET NOCOUNT OFF;
	
	Delete From [tbl_Album]
	Where
		id=@id
		
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Album_Add]    Script Date: 02/22/2013 17:40:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Album_Add] 
	@title nvarchar(100),
	@description nvarchar(500),
	@image nvarchar(200),
	@altImage nvarchar(200),
	@tag nvarchar(200),
	@sort int,
	@action bit,
	@link varchar(200)
	
AS
BEGIN	

	SET NOCOUNT OFF;
	Insert Into [tbl_Album]
	(
		[title],
		[description],
		[image],
		[altImage],
		[tag],
		[CreateDate],
		[sort],
		[action],
		[link]
		
	)
	values
	(
		@title,
		@description,
		@image,
		@altImage,
		@tag,
		GETDATE(),
		@sort,
		@action,
		@link
		
	)
END
    select @@IDENTITY
GO
/****** Object:  StoredProcedure [dbo].[usp_adviceType_GetList]    Script Date: 02/22/2013 17:40:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_adviceType_GetList]
	@PageIndex int,
	@PageSize int,
	@totalrow int output
AS
BEGIN
	DECLARE @from int
	DECLARE @to int

    SET @from = @PageIndex * @PageSize + 1;
	SET @to = @from + @PageSize - 1;

	SELECT 
		id
		,[name],
		[link]
		
	FROM (
			SELECT 
				id
		,[name],
		[link]
		,
				ROW_NUMBER() OVER(ORDER BY id
		 ASC) as ROWNUMBER
			FROM [tbl_adviceType]
		  ) as p  where ROWNUMBER between @from and @to

	SET @totalrow = (SELECT count(*) FROM [tbl_adviceType])
	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_adviceType_GetById]    Script Date: 02/22/2013 17:40:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_adviceType_GetById] 
	@id int
	
AS
BEGIN	

	SET NOCOUNT ON;
	
	Select 
		id
		,[name],
		[link]
		
	From [tbl_adviceType]
	Where
		id=@id
		
END
GO
/****** Object:  StoredProcedure [dbo].[usp_adviceType_Delete]    Script Date: 02/22/2013 17:40:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_adviceType_Delete] 
	@id int
	
AS
BEGIN	

	SET NOCOUNT OFF;
	
	Delete From [tbl_adviceType]
	Where
		id=@id
		
END
GO
/****** Object:  StoredProcedure [dbo].[usp_nextId]    Script Date: 02/22/2013 17:40:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_nextId]
@tableName varchar(200)
AS
	SELECT ident_current(@tableName)+IDENT_INCR(@tableName) AS nextId
GO
/****** Object:  StoredProcedure [dbo].[usp_newsType_Update]    Script Date: 02/22/2013 17:40:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_newsType_Update] 
	@id int,
	@name nvarchar(100),
	@link varchar(200),
	@sort smallint,
	@description nvarchar(350),
	@keyword nvarchar(250)	
AS
BEGIN	

	SET NOCOUNT OFF;
	Update [tbl_newsType]

	Set	
		[name]=@name,
		[link]=@link,
		[sort]=@sort,
		[description]=@description,
		[keyword]=@keyword
		
	Where
		id=@id

		
END
GO
/****** Object:  StoredProcedure [dbo].[usp_newsType_GetList]    Script Date: 02/22/2013 17:40:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_newsType_GetList]
	@PageIndex int,
	@PageSize int,
	@totalrow int output
AS
BEGIN
	DECLARE @from int
	DECLARE @to int

    SET @from = @PageIndex * @PageSize + 1;
	SET @to = @from + @PageSize - 1;

	SELECT 
		id
		,[name],
		[link],
		sort
		
	FROM (
			SELECT 
				id
		,[name],
		[link],sort
		,
				ROW_NUMBER() OVER(ORDER BY id
		 ASC) as ROWNUMBER
			FROM [tbl_newsType]
		  ) as p  where ROWNUMBER between @from and @to

	SET @totalrow = (SELECT count(*) FROM [tbl_newsType])
	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_newsType_GetById]    Script Date: 02/22/2013 17:40:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_newsType_GetById] 
	@id int
	
AS
BEGIN	

	SET NOCOUNT ON;
	
	Select 
		*
		
	From [tbl_newsType]
	Where
		id=@id
		
END
GO
/****** Object:  StoredProcedure [dbo].[usp_newsType_GetAll]    Script Date: 02/22/2013 17:40:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_newsType_GetAll]
	@totalrow int output
AS
BEGIN
	
			SELECT *
			FROM [tbl_newsType]

	SET @totalrow = (SELECT count(*) FROM [tbl_newsType])
	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_newsType_Delete]    Script Date: 02/22/2013 17:40:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_newsType_Delete] 
	@id int
	
AS
BEGIN	

	SET NOCOUNT OFF;
	
	Delete From [tbl_newsType]
	Where
		id=@id
		
END
GO
/****** Object:  StoredProcedure [dbo].[usp_newsType_Add]    Script Date: 02/22/2013 17:40:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_newsType_Add] 
	@name nvarchar(100),
	@link varchar(200),
	@sort smallint,
	@description nvarchar(350),
	@keyword nvarchar(250)
	
AS
BEGIN	

	SET NOCOUNT OFF;
	Insert Into [tbl_newsType]
	(
		[name],
		[link],
		[sort],
		[description],
		[keyword]
	)
	values
	(
		@name,
		@link,
		@sort,
		@description,
		@keyword

	)
END
    select @@IDENTITY
GO
/****** Object:  StoredProcedure [dbo].[usp_newsPromotion_Update]    Script Date: 02/22/2013 17:40:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_newsPromotion_Update] 
	@id int,
	@title nvarchar(100),
	@description nvarchar(500),
	@content ntext,
	@tag nvarchar(200),
	@link varchar(200),
	@image nvarchar(200),
	@sort int,
	@action bit
	
AS
BEGIN	

	SET NOCOUNT OFF;
	
	Update [tbl_newsPromotion]
	Set	
		[title]=@title,
		[description]=@description,
		[content]=@content,
		[tag]=@tag,
		[link]=@link,
		[image]=@image,
		[sort]=@sort,
		[action]=@action
		
	Where
		id=@id
		
END
GO
/****** Object:  StoredProcedure [dbo].[usp_newsPromotion_GetList]    Script Date: 02/22/2013 17:40:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_newsPromotion_GetList]
	@PageIndex int,
	@PageSize int,
	@totalrow int output
AS
BEGIN
	DECLARE @from int
	DECLARE @to int

    SET @from = @PageIndex * @PageSize + 1;
	SET @to = @from + @PageSize - 1;

	SELECT 
		id
		,[title],
		[description],
		[content],
		[tag],
		[link],
		[image],
		[CreateDate],
		[sort],
		[action]
		
	FROM (
			SELECT 
				id
		,[title],
		[description],
		[content],
		[tag],
		[link],
		[image],
		[CreateDate],
		[sort],
		[action]
		,
				ROW_NUMBER() OVER(ORDER BY id
		 ASC) as ROWNUMBER
			FROM [tbl_newsPromotion]
		  ) as p  where ROWNUMBER between @from and @to

	SET @totalrow = (SELECT count(*) FROM [tbl_newsPromotion])
	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_newsPromotion_GetById]    Script Date: 02/22/2013 17:40:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_newsPromotion_GetById] 
	@id int
	
AS
BEGIN	

	SET NOCOUNT ON;
	
	Select 
		id
		,[title],
		[description],
		[content],
		[tag],
		[link],
		[image],
		[CreateDate],
		[sort],
		[action]
		
	From [tbl_newsPromotion]
	Where
		id=@id
		
END
GO
/****** Object:  StoredProcedure [dbo].[usp_newsPromotion_GetAll]    Script Date: 02/22/2013 17:40:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_newsPromotion_GetAll]
	@totalrow int output
AS
BEGIN
	
			SELECT *
			FROM [tbl_newsPromotion]
	SET @totalrow = (SELECT count(*) FROM [tbl_newsPromotion])
	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_newsPromotion_Delete]    Script Date: 02/22/2013 17:40:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_newsPromotion_Delete] 
	@id int
	
AS
BEGIN	

	SET NOCOUNT OFF;
	
	Delete From [tbl_newsPromotion]
	Where
		id=@id
		
END
GO
/****** Object:  StoredProcedure [dbo].[usp_newsPromotion_Add]    Script Date: 02/22/2013 17:40:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_newsPromotion_Add] 
	@title nvarchar(100),
	@description nvarchar(500),
	@content ntext,
	@tag nvarchar(200),
	@link varchar(200),
	@image nvarchar(200),
	@sort int,
	@action bit
	
AS
BEGIN	

	SET NOCOUNT OFF;
	Insert Into [tbl_newsPromotion]
	(
		[title],
		[description],
		[content],
		[tag],
		[link],
		[image],
		[CreateDate],
		[sort],
		[action]
		
	)
	values
	(
		@title,
		@description,
		@content,
		@tag,
		@link,
		@image,
		GETDATE(),
		@sort,
		@action
		
	)
END
    select @@IDENTITY
GO
/****** Object:  StoredProcedure [dbo].[usp_Price_Update]    Script Date: 02/22/2013 17:40:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Price_Update] 
	@id int,
	@priceTypeId int,
	@priceTypeName nvarchar(100),
	@title nvarchar(100),
	@description nvarchar(500),
	@content ntext,
	@image nvarchar(200),
	@altImage nvarchar(200),
	@tag nvarchar(200),
	@CreateDate datetime,
	@action bit,
	@link varchar(200),
	@desseo nvarchar(500)
	
AS
BEGIN	

	SET NOCOUNT OFF;
	
	Update [tbl_Price]
	Set	
		[priceTypeId]=@priceTypeId,
		[priceTypeName]=@priceTypeName,
		[title]=@title,
		[description]=@description,
		[content]=@content,
		[image]=@image,
		[altImage]=@altImage,
		[tag]=@tag,
		[CreateDate]=@CreateDate,
		[action]=@action,
		[link]=@link,
		[desseo]=@desseo
		
	Where
		id=@id
		
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Price_Type_updateSort]    Script Date: 02/22/2013 17:40:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[usp_Price_Type_updateSort]
@id int,
@sort int
as
begin
	update tbl_Price_Type set sort=@sort where id=@id
end
GO
/****** Object:  StoredProcedure [dbo].[usp_Price_Type_Update]    Script Date: 02/22/2013 17:40:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Price_Type_Update] 
	@id int,
	@name nvarchar(100),
	@link varchar(200),
	@sort smallint,
	@description nvarchar(350),
	@keyword nvarchar(250)
	
AS
BEGIN	

	SET NOCOUNT OFF;
	
	Update [tbl_Price_Type]
	Set	
		[name]=@name,
		[link]=@link,
		[sort]=@sort,
		[description]=@description,
		[keyword]=@keyword
		
	Where
		id=@id
		
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Price_Type_GetList]    Script Date: 02/22/2013 17:40:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Price_Type_GetList]
	@PageIndex int,
	@PageSize int,
	@totalrow int output
AS
BEGIN
	DECLARE @from int
	DECLARE @to int

    SET @from = @PageIndex * @PageSize + 1;
	SET @to = @from + @PageSize - 1;

	SELECT 
		id
		,[name],
		[link],
		[sort],
		[description],
		[keyword]
		
	FROM (
			SELECT 
				id
		,[name],
		[link],
		[sort],
		[description],
		[keyword]
		,
				ROW_NUMBER() OVER(ORDER BY id
		 ASC) as ROWNUMBER
			FROM [tbl_Price_Type]
		  ) as p  where ROWNUMBER between @from and @to

	SET @totalrow = (SELECT count(*) FROM [tbl_Price_Type])
	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Price_Type_GetById]    Script Date: 02/22/2013 17:40:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Price_Type_GetById] 
	@id int
	
AS
BEGIN	

	SET NOCOUNT ON;
	
	Select 
		id
		,[name],
		[link],
		[sort],
		[description],
		[keyword]
		
	From [tbl_Price_Type]
	Where
		id=@id
		
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Price_Type_GetAll]    Script Date: 02/22/2013 17:40:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Price_Type_GetAll]
AS
BEGIN
	
			SELECT *
			FROM [tbl_Price_Type]
			order by sort

	--SET @totalrow = (SELECT count(*) FROM [tbl_Price_Type])
	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Price_Type_Delete]    Script Date: 02/22/2013 17:40:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Price_Type_Delete] 
	@id int
	
AS
BEGIN	

	SET NOCOUNT OFF;
	
	Delete From [tbl_Price_Type]
	Where
		id=@id
		
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Price_Type_Add]    Script Date: 02/22/2013 17:40:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Price_Type_Add] 
	@name nvarchar(100),
	@link varchar(200),
	@sort smallint,
	@description nvarchar(350),
	@keyword nvarchar(250)
	
AS
BEGIN	

	SET NOCOUNT OFF;
	Insert Into [tbl_Price_Type]
	(
		[name],
		[link],
		[sort],
		[description],
		[keyword]
		
	)
	values
	(
		@name,
		@link,
		@sort,
		@description,
		@keyword
		
	)
END
    select @@IDENTITY
GO
/****** Object:  StoredProcedure [dbo].[usp_Price_GetList]    Script Date: 02/22/2013 17:40:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Price_GetList]
	@PageIndex int,
	@PageSize int,
	@totalrow int output,
	@priceTypeId int
AS
BEGIN
	DECLARE @from int
	DECLARE @to int

    SET @from = @PageIndex * @PageSize + 1;
	SET @to = @from + @PageSize - 1;
IF(@priceTypeId>0)
BEGIN
	SELECT 
		id
		,[priceTypeId],
		[priceTypeName],
		[title],
		[description],
		[content],
		[image],
		[altImage],
		[tag],
		[CreateDate],
		[action],
		[link],
		[desseo]
		
	FROM (
			SELECT 
				id
		,[priceTypeId],
		[priceTypeName],
		[title],
		[description],
		[content],
		[image],
		[altImage],
		[tag],
		[CreateDate],
		[action],
		[link],
		[desseo]
		,
				ROW_NUMBER() OVER(ORDER BY id
		 ASC) as ROWNUMBER
			FROM [tbl_Price]
			Where priceTypeId=@priceTypeId
		  ) as p  where ROWNUMBER between @from and @to

	SET @totalrow = (SELECT count(*) FROM [tbl_Price] Where priceTypeId=@priceTypeId)
END
ELSE
BEGIN
	SELECT 
		id
		,[priceTypeId],
		[priceTypeName],
		[title],
		[description],
		[content],
		[image],
		[altImage],
		[tag],
		[CreateDate],
		[action],
		[link],
		[desseo]
		
	FROM (
			SELECT 
				id
		,[priceTypeId],
		[priceTypeName],
		[title],
		[description],
		[content],
		[image],
		[altImage],
		[tag],
		[CreateDate],
		[action],
		[link],
		[desseo]
		,
				ROW_NUMBER() OVER(ORDER BY id
		 ASC) as ROWNUMBER
			FROM [tbl_Price]
		  ) as p  where ROWNUMBER between @from and @to

	SET @totalrow = (SELECT count(*) FROM [tbl_Price])
END
	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Price_GetByLatestId]    Script Date: 02/22/2013 17:40:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[usp_Price_GetByLatestId]
as
begin
 select top 1 title,[description],[content],[image],[altImage],tag,[CreateDate],[desseo] from tbl_Price
end
GO
/****** Object:  StoredProcedure [dbo].[usp_Price_GetById]    Script Date: 02/22/2013 17:40:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Price_GetById] 
	@id int
	
AS
BEGIN	

	SET NOCOUNT ON;
	
	Select 
		id
		,[priceTypeId],
		[priceTypeName],
		[title],
		[description],
		[content],
		[image],
		[altImage],
		[tag],
		[CreateDate],
		[action],
		[link],
		[desseo]
		
	From [tbl_Price]
	Where
		id=@id
		
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Price_Delete]    Script Date: 02/22/2013 17:40:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Price_Delete] 
	@id int
	
AS
BEGIN	

	SET NOCOUNT OFF;
	
	Delete From [tbl_Price]
	Where
		id=@id
		
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Price_Add]    Script Date: 02/22/2013 17:40:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Price_Add] 
	@priceTypeId int,
	@priceTypeName nvarchar(100),
	@title nvarchar(100),
	@description nvarchar(500),
	@content ntext,
	@image nvarchar(200),
	@altImage nvarchar(200),
	@tag nvarchar(200),
	@CreateDate datetime,
	@action bit,
	@link varchar(200),
	@desseo nvarchar(500)
	
AS
BEGIN	

	SET NOCOUNT OFF;
	Insert Into [tbl_Price]
	(
		[priceTypeId],
		[priceTypeName],
		[title],
		[description],
		[content],
		[image],
		[altImage],
		[tag],
		[CreateDate],
		[action],
		[link],
		[desseo]
		
	)
	values
	(
		@priceTypeId,
		@priceTypeName,
		@title,
		@description,
		@content,
		@image,
		@altImage,
		@tag,
		@CreateDate,
		@action,
		@link,
		@desseo
		
	)
END
    select @@IDENTITY
GO
/****** Object:  StoredProcedure [dbo].[usp_producType_Update]    Script Date: 02/22/2013 17:40:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_producType_Update] 
	@id int,
	@name nvarchar(100),
	@link varchar(200),
	@sort smallint,
	@description nvarchar(350),
	@keyword nvarchar(250)
	
AS
BEGIN	

	SET NOCOUNT OFF;
	
	Update [tbl_producType]
	Set	
		[name]=@name,
		[link]=@link,
		[sort]=@sort,
		[description]=@description,
		[keyword]=@keyword
		
	Where
		id=@id
		
END
GO
/****** Object:  StoredProcedure [dbo].[usp_producType_GetList]    Script Date: 02/22/2013 17:40:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_producType_GetList]
	@PageIndex int,
	@PageSize int,
	@totalrow int output
AS
BEGIN
	DECLARE @from int
	DECLARE @to int

    SET @from = @PageIndex * @PageSize + 1;
	SET @to = @from + @PageSize - 1;

	SELECT 
		id
		,[name],
		[link],
		[sort],
		[description],
		[keyword]
		
	FROM (
			SELECT 
				id
		,[name],
		[link],
		[sort],
		[description],
		[keyword]
		,
				ROW_NUMBER() OVER(ORDER BY id
		 ASC) as ROWNUMBER
			FROM [tbl_producType]
		  ) as p  where ROWNUMBER between @from and @to

	SET @totalrow = (SELECT count(*) FROM [tbl_producType])
	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_producType_GetById]    Script Date: 02/22/2013 17:40:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_producType_GetById] 
	@id int
	
AS
BEGIN	

	SET NOCOUNT ON;
	
	Select 
		id
		,[name],
		[link],
		[sort],
		[description],
		[keyword]
		
	From [tbl_producType]
	Where
		id=@id
		
END
GO
/****** Object:  StoredProcedure [dbo].[usp_producType_GetAll]    Script Date: 02/22/2013 17:40:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_producType_GetAll]
	@totalrow int output
AS
BEGIN
	SELECT *
		FROM [tbl_producType]
	SET @totalrow = (SELECT count(*) FROM [tbl_producType])	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_producType_Delete]    Script Date: 02/22/2013 17:40:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_producType_Delete] 
	@id int
	
AS
BEGIN	

	SET NOCOUNT OFF;
	
	Delete From [tbl_producType]
	Where
		id=@id
		
END
GO
/****** Object:  StoredProcedure [dbo].[usp_producType_Add]    Script Date: 02/22/2013 17:40:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_producType_Add] 
	@name nvarchar(100),
	@link varchar(200),
	@sort smallint,
	@description nvarchar(350),
	@keyword nvarchar(250)
	
AS
BEGIN	

	SET NOCOUNT OFF;
	Insert Into [tbl_producType]
	(
		[name],
		[link],
		[sort],
		[description],
		[keyword]
		
	)
	values
	(
		@name,
		@link,
		@sort,
		@description,
		@keyword
		
	)
END
    select @@IDENTITY
GO
/****** Object:  StoredProcedure [dbo].[usp_productColor_Update]    Script Date: 02/22/2013 17:40:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_productColor_Update] 
	@id int,
	@colorId int,
	@colorValue varchar(50),
	@ProductId int,
	@productName nvarchar(200),
	@image varchar(200),
	@altImage nvarchar(200)
	
AS
BEGIN	

	SET NOCOUNT OFF;
	
	Update [tbl_productColor]
	Set	
		[colorId]=@colorId,
		[colorValue]=@colorValue,
		[ProductId]=@ProductId,
		[productName]=@productName,
		[image]=@image,
		[altImage]=@altImage
		
	Where
		id=@id
		
END
GO
/****** Object:  StoredProcedure [dbo].[usp_productColor_GetList]    Script Date: 02/22/2013 17:40:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_productColor_GetList]
	@PageIndex int,
	@PageSize int,
	@totalrow int output
AS
BEGIN
	DECLARE @from int
	DECLARE @to int

    SET @from = @PageIndex * @PageSize + 1;
	SET @to = @from + @PageSize - 1;

	SELECT 
		id
		,[colorId],
		[colorValue],
		[ProductId],
		[productName],
		[image],
		[altImage]
		
	FROM (
			SELECT 
				id
		,[colorId],
		[colorValue],
		[ProductId],
		[productName],
		[image],
		[altImage]
		,
				ROW_NUMBER() OVER(ORDER BY id
		 ASC) as ROWNUMBER
			FROM [tbl_productColor]
		  ) as p  where ROWNUMBER between @from and @to

	SET @totalrow = (SELECT count(*) FROM [tbl_productColor])
	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_productColor_GetAllByProduct]    Script Date: 02/22/2013 17:40:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[usp_productColor_GetAllByProduct]
	@ProductId int,
	@totalrow int output
AS
BEGIN	
	SELECT *
	FROM [tbl_productColor]
	Where ProductId=@ProductId
	SET @totalrow = (SELECT count(*) FROM [tbl_productColor] Where ProductId=@ProductId)
	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_productColor_Add]    Script Date: 02/22/2013 17:40:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_productColor_Add] 
	@colorId int,
	@colorValue varchar(50),
	@ProductId int,
	@productName nvarchar(200),
	@image varchar(200),
	@altImage nvarchar(200)
	
AS
BEGIN	

	SET NOCOUNT OFF;
	Insert Into [tbl_productColor]
	(
		[colorId],
		[colorValue],
		[ProductId],
		[productName],
		[image],
		[altImage]
		
	)
	values
	(
		@colorId,
		@colorValue,
		@ProductId,
		@productName,
		@image,
		@altImage
		
	)
END
    select @@IDENTITY
GO
/****** Object:  StoredProcedure [dbo].[usp_tbl_product_Update]    Script Date: 02/22/2013 17:40:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_tbl_product_Update] 
	@id int,
	@ProductTypeId int,
	@ProductName nvarchar(100),
	@name nvarchar(100),
	@description nvarchar(500),
	@tag nvarchar(200),
	@image varchar(200),
	@altImage nvarchar(200),
	@isHot bit,
	@price bigint,
	@link nvarchar(200)
	
AS
BEGIN	

	SET NOCOUNT OFF;
	
	Update [tbl_product]
	Set	
		[ProductTypeId]=@ProductTypeId,
		[ProductName]=@ProductName,
		[name]=@name,
		[description]=@description,
		[tag]=@tag,
		[image]=@image,
		[altImage]=@altImage,
		[isHot]=@isHot,
		[price]=@price,
		[link]=@link
		
	Where
		id=@id
		
END
GO
/****** Object:  StoredProcedure [dbo].[usp_tbl_product_GetList]    Script Date: 02/22/2013 17:40:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_tbl_product_GetList]
	@PageIndex int,
	@PageSize int,
	@totalrow int output
AS
BEGIN
	DECLARE @from int
	DECLARE @to int

    SET @from = @PageIndex * @PageSize + 1;
	SET @to = @from + @PageSize - 1;

	SELECT 
		id
		,[ProductTypeId],
		[ProductName],
		[name],
		[description],
		[tag],
		[image],
		[altImage],
		[isHot],
		[price],
		[link]
		
	FROM (
			SELECT 
				id
		,[ProductTypeId],
		[ProductName],
		[name],
		[description],
		[tag],
		[image],
		[altImage],
		[isHot],
		[price],
		[link]
		,
				ROW_NUMBER() OVER(ORDER BY id
		 ASC) as ROWNUMBER
			FROM [tbl_product]
		  ) as p  where ROWNUMBER between @from and @to

	SET @totalrow = (SELECT count(*) FROM [tbl_product])
	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_tbl_product_GetById]    Script Date: 02/22/2013 17:40:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_tbl_product_GetById] 
	@id int
	
AS
BEGIN	

	SET NOCOUNT ON;
	
	Select 
		id
		,[ProductTypeId],
		[ProductName],
		[name],
		[description],
		[tag],
		[image],
		[altImage],
		[isHot],
		[price],
		[link]
		
	From [tbl_product]
	Where
		id=@id
		
END
GO
/****** Object:  StoredProcedure [dbo].[usp_tbl_product_Delete]    Script Date: 02/22/2013 17:40:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_tbl_product_Delete] 
	@id int
	
AS
BEGIN	

	SET NOCOUNT OFF;
	
	Delete From [tbl_product]
	Where
		id=@id
		
END
GO
/****** Object:  StoredProcedure [dbo].[usp_tbl_product_Add]    Script Date: 02/22/2013 17:40:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_tbl_product_Add] 
	@ProductTypeId int,
	@ProductName nvarchar(100),
	@name nvarchar(100),
	@description nvarchar(500),
	@tag nvarchar(200),
	@image varchar(200),
	@altImage nvarchar(200),
	@isHot bit,
	@price bigint,
	@link nvarchar(200)
	
AS
BEGIN	

	SET NOCOUNT OFF;
	Insert Into [tbl_product]
	(
		[ProductTypeId],
		[ProductName],
		[name],
		[description],
		[tag],
		[image],
		[altImage],
		[isHot],
		[price],
		[link]
		
	)
	values
	(
		@ProductTypeId,
		@ProductName,
		@name,
		@description,
		@tag,
		@image,
		@altImage,
		@isHot,
		@price,
		@link
		
	)
END
    select @@IDENTITY
GO
/****** Object:  StoredProcedure [dbo].[usp_tbl_newsPromotion_Update]    Script Date: 02/22/2013 17:40:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_tbl_newsPromotion_Update] 
	@id int,
	@PromoteName nvarchar(100)
	
AS
BEGIN	

	SET NOCOUNT OFF;
	
	Update [tbl_newsPromotion]
	Set	
		[PromoteName]=@PromoteName
		
	Where
		id=@id
		
END
GO
/****** Object:  StoredProcedure [dbo].[usp_tbl_newsPromotion_GetList_All]    Script Date: 02/22/2013 17:40:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[usp_tbl_newsPromotion_GetList_All]
as
begin
	select * from tbl_newsPromotion
end
GO
/****** Object:  StoredProcedure [dbo].[usp_tbl_newsPromotion_GetList]    Script Date: 02/22/2013 17:40:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_tbl_newsPromotion_GetList]
	@PageIndex int,
	@PageSize int,
	@totalrow int output
AS
BEGIN
	DECLARE @from int
	DECLARE @to int

    SET @from = @PageIndex * @PageSize + 1;
	SET @to = @from + @PageSize - 1;

	SELECT 
		id
		,[PromoteName]
		
	FROM (
			SELECT 
				id
		,[PromoteName]
		,
				ROW_NUMBER() OVER(ORDER BY id
		 ASC) as ROWNUMBER
			FROM [tbl_newsPromotion]
		  ) as p  where ROWNUMBER between @from and @to

	SET @totalrow = (SELECT count(*) FROM [tbl_newsPromotion])
	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_tbl_newsPromotion_GetById]    Script Date: 02/22/2013 17:40:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_tbl_newsPromotion_GetById] 
	@id int
	
AS
BEGIN	

	SET NOCOUNT ON;
	
	Select 
		*
	From [tbl_newsPromotion]
	Where
		id=@id
		
END
GO
/****** Object:  StoredProcedure [dbo].[usp_tbl_newsPromotion_Delete]    Script Date: 02/22/2013 17:40:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[usp_tbl_newsPromotion_Delete]
@id int
as
begin
delete from tbl_newsPromotion where id=@id
end
GO
/****** Object:  StoredProcedure [dbo].[usp_tbl_newsPromotion_Add]    Script Date: 02/22/2013 17:40:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_tbl_newsPromotion_Add] 
	@PromoteName nvarchar(100)
	
AS
BEGIN	

	SET NOCOUNT OFF;
	Insert Into [tbl_newsPromotion]
	(
		[PromoteName]
		
	)
	values
	(
		@PromoteName
		
	)
    select @@IDENTITY
END
GO
/****** Object:  StoredProcedure [dbo].[usp_tbl_news_GetById]    Script Date: 02/22/2013 17:40:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_tbl_news_GetById] 
	@id int
	
AS
BEGIN	

	SET NOCOUNT ON;
	
	Select 
		*
	From [tbl_news]
	Where
		id=@id
		
END
GO
/****** Object:  StoredProcedure [dbo].[usp_slideshow_Update]    Script Date: 02/22/2013 17:40:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_slideshow_Update] 
	@id int,
	@name nvarchar(200),
	@image varchar(200),
	@alt nvarchar(200),
	@link varchar(200)
	
AS
BEGIN	

	SET NOCOUNT OFF;
	
	Update [tbl_slideshow]
	Set	
		[name]=@name,
		[image]=@image,
		[alt]=@alt,
		[link]=@link
		
	Where
		id=@id
		
END
GO
/****** Object:  StoredProcedure [dbo].[usp_slideshow_GetById]    Script Date: 02/22/2013 17:40:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_slideshow_GetById] 
	@id int
	
AS
BEGIN	

	SET NOCOUNT ON;
	
	Select 
		id
		,[name],
		[image],
		[alt],
		[link]
		
	From [tbl_slideshow]
	Where
		id=@id
		
END
GO
/****** Object:  StoredProcedure [dbo].[usp_slideshow_GetAll]    Script Date: 02/22/2013 17:40:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_slideshow_GetAll]
AS
BEGIN
	
			SELECT *
			FROM tbl_slideshow	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_slideshow_Delete]    Script Date: 02/22/2013 17:40:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_slideshow_Delete] 
	@id int
	
AS
BEGIN	

	SET NOCOUNT OFF;
	
	Delete From [tbl_slideshow]
	Where
		id=@id
		
END
GO
/****** Object:  StoredProcedure [dbo].[usp_slideshow_Add]    Script Date: 02/22/2013 17:40:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_slideshow_Add] 
	@name nvarchar(200),
	@image varchar(200),
	@alt nvarchar(200),
	@link varchar(200)
	
AS
BEGIN	

	SET NOCOUNT OFF;
	Insert Into [tbl_slideshow]
	(
		[name],
		[image],
		[alt],
		[link]
		
	)
	values
	(
		@name,
		@image,
		@alt,
		@link
		
	)
END
    select @@IDENTITY
GO
/****** Object:  StoredProcedure [dbo].[usp_product_UpdateHot]    Script Date: 02/22/2013 17:40:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[usp_product_UpdateHot] 
	@id int,
	@isHot bit
	
AS
BEGIN	

	SET NOCOUNT OFF;
	
	Update [tbl_product]
	Set	
		 isHot =@isHot
	Where
		id=@id		
END
GO
/****** Object:  StoredProcedure [dbo].[usp_product_CountAll]    Script Date: 02/22/2013 17:40:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_product_CountAll]
AS
BEGIN
	SELECT COUNT(*) iRow
	FROM [tbl_product]	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Product_Add]    Script Date: 02/22/2013 17:40:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Product_Add] 
	@CateName nvarchar(150),
	@CateId int,
	@ProductName nvarchar(100),
	@name nvarchar(100),
	@description nvarchar(500),
	@contents nvarchar(1000),
	@tag nvarchar(200),
	@Keyword nvarchar(200),
	@image varchar(200),
	@altImage nvarchar(200),
	@isHot bit,
	@price bigint,
	@Link nvarchar(200),
	@size nvarchar(500)
	
AS
BEGIN	

	SET NOCOUNT OFF;
	Insert Into [Product]
	(
		[CateName],
		[CateId],
		[ProductName],
		[name],
		[description],
		contents,
		[tag],
		Keyword,
		[image],
		[altImage],
		[isHot],
		[price],
		[Link],
		[DateCreate],
		size
		
	)
	values
	(
		@CateName,
		@CateId,
		@ProductName,
		@name,
		@description,
		@contents,
		@tag,
		@Keyword,
		@image,
		@altImage,
		@isHot,
		@price,
		@Link,
		GETDATE(),
		@size		
	)
END
    select @@IDENTITY
GO
/****** Object:  StoredProcedure [dbo].[usp_Product_Update]    Script Date: 02/22/2013 17:40:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Product_Update] 
	@id int,
	@CateName nvarchar(150),
	@CateId int,
	@ProductName nvarchar(100),
	@name nvarchar(100),
	@description nvarchar(500),
	@contents nvarchar(1000),
	@tag nvarchar(200),
	@Keyword nvarchar(200),
	@image varchar(200),
	@altImage nvarchar(200),
	@isHot bit,
	@price bigint,
	@Link nvarchar(200),
	@size nvarchar(500)
	
AS
BEGIN	

	SET NOCOUNT OFF;
	
	Update [Product]
	Set	
		[CateName]=@CateName,
		[CateId]=@CateId,
		[ProductName]=@ProductName,
		[name]=@name,
		[description]=@description,
		contents =@contents,
		[tag]=@tag,
		Keyword=@Keyword,
		[image]=@image,
		[altImage]=@altImage,
		[isHot]=@isHot,
		[price]=@price,
		[Link]=@Link,
		size=@size
		
	Where
		id=@id
		
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Product_GetList]    Script Date: 02/22/2013 17:40:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Product_GetList]
	@PageIndex int,
	@PageSize int,
	@totalrow int output
AS
BEGIN
	DECLARE @from int
	DECLARE @to int

    SET @from = @PageIndex * @PageSize + 1;
	SET @to = @from + @PageSize - 1;

	SELECT 
		id
		,[CateName],
		[CateId],
		[ProductName],
		[name],
		[description],
		contents,
		[tag],
		Keyword,
		[image],
		[altImage],
		[isHot],
		[price],
		[Link],
		size,
		[DateCreate]
		
	FROM (
			SELECT 
				id
		,[CateName],
		[CateId],
		[ProductName],
		[name],
		[description],
		contents,
		[tag],
		Keyword,
		[image],
		[altImage],
		[isHot],
		[price],
		[Link],
		size,
		[DateCreate]
		,
				ROW_NUMBER() OVER(ORDER BY id
		 ASC) as ROWNUMBER
			FROM [Product]
		  ) as p  where ROWNUMBER between @from and @to

	SET @totalrow = (SELECT count(*) FROM [Product])
	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Product_GetById]    Script Date: 02/22/2013 17:40:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Product_GetById] 
	@id int
	
AS
BEGIN	

	SET NOCOUNT ON;
	
	Select 
		id
		,[CateName],
		[CateId],
		[ProductName],
		[name],
		[description],
		contents,
		[tag],
		Keyword,
		[image],
		[altImage],
		[isHot],
		[price],
		[Link],
		[DateCreate],
		size
		
	From [Product]
	Where
		id=@id
		
END
GO
/****** Object:  StoredProcedure [dbo].[usp_product_GetAllByType]    Script Date: 02/22/2013 17:40:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_product_GetAllByType]
	@CateId int,
	@totalrow int output
AS
BEGIN
if(@CateId=0)
begin
	SELECT * FROM Product
	SET @totalrow = (SELECT count(*) FROM Product)		
end
else
begin
	SELECT *
	FROM Product
	where CateId=@CateId
	SET @totalrow = (SELECT count(*) FROM Product where CateId=@CateId)		
end	
	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Product_Delete]    Script Date: 02/22/2013 17:40:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Product_Delete] 
	@id int
	
AS
BEGIN	

	SET NOCOUNT OFF;
	
	Delete From [Product]
	Where
		id=@id
		
END
GO
/****** Object:  StoredProcedure [dbo].[usp_tblUser_Update]    Script Date: 02/22/2013 17:40:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_tblUser_Update] 
	@Id int,
	@Username nvarchar(30),
	@Password nvarchar(100),
	@Fullname nvarchar(50),
	@Status smallint
	
AS
BEGIN	

	SET NOCOUNT OFF;
	
	Update [tblUser]
	Set	
		[Username]=@Username,
		[Password]=@Password,
		[Fullname]=@Fullname,
		[Status]=@Status
		
	Where
		Id=@Id
END
GO
/****** Object:  StoredProcedure [dbo].[usp_tblUser_GetList_All]    Script Date: 02/22/2013 17:40:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_tblUser_GetList_All]	
AS
BEGIN
	Select * 
			FROM [tblUser]		  
END
GO
/****** Object:  StoredProcedure [dbo].[usp_tblUser_GetList]    Script Date: 02/22/2013 17:40:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_tblUser_GetList]
	@PageIndex int,
	@PageSize int,
	@totalrow int output
AS
BEGIN
	DECLARE @from int
	DECLARE @to int

    SET @from = @PageIndex * @PageSize + 1;
	SET @to = @from + @PageSize - 1;

	SELECT 
		Id
		,[Username],
		[Password],
		[Fullname],
		[Status]
		
	FROM (
			SELECT 
				Id
		,[Username],
		[Password],
		[Fullname],
		[Status]
		,
				ROW_NUMBER() OVER(ORDER BY Id
		 ASC) as ROWNUMBER
			FROM [tblUser]
		  ) as p  where ROWNUMBER between @from and @to

	SET @totalrow = (SELECT count(*) FROM [tblUser])
	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_tblUser_Delete]    Script Date: 02/22/2013 17:40:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_tblUser_Delete] 
	@Id int
	
AS
BEGIN	

	SET NOCOUNT OFF;
	
	Delete From [tblUser]
	Where
		Id=@Id
		
END
GO
/****** Object:  StoredProcedure [dbo].[usp_tblUser_Add]    Script Date: 02/22/2013 17:40:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_tblUser_Add] 
	@Id int,
	@Username nvarchar(30),
	@Password nvarchar(100),
	@Fullname nvarchar(50),
	@Status smallint
	
AS
BEGIN	

	SET NOCOUNT OFF;
	Insert Into [tblUser]
	(
		[Id],
		[Username],
		[Password],
		[Fullname],
		[Status]
		
	)
	values
	(
		@Id,
		@Username,
		@Password,
		@Fullname,
		@Status
		
	)
    select @@IDENTITY
END
GO
/****** Object:  StoredProcedure [dbo].[usp_tblCustormer_UpdatePassword]    Script Date: 02/22/2013 17:40:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_tblCustormer_UpdatePassword] 
	@id int,
	@Password varchar(30)	
AS
BEGIN	

	SET NOCOUNT OFF;
	
	Update [tblCustormer]
	Set	
		[Password]=@Password	
	Where
		id=@id		
END
GO
/****** Object:  StoredProcedure [dbo].[usp_tblCustormer_UpdateActive]    Script Date: 02/22/2013 17:40:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_tblCustormer_UpdateActive] 
	@id int,
	@Active bit	
AS
BEGIN	

	SET NOCOUNT OFF;
	
	Update [tblCustormer]
	Set	
		[Active]=@Active		
	Where
		id=@id		
END
GO
/****** Object:  StoredProcedure [dbo].[usp_tblCustormer_Update]    Script Date: 02/22/2013 17:40:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_tblCustormer_Update] 
	@id int,
	--@Email varchar(50),
	@FirstName nvarchar(20),
	@Lastname nvarchar(20),
	--@Password varchar(30),
	@Phone varchar(15),
	@Address nvarchar(500),
	@Active bit	
AS
BEGIN	

	SET NOCOUNT OFF;
	
	Update [tblCustormer]
	Set	
		--[Email]=@Email,
		[FirstName]=@FirstName,
		[Lastname]=@Lastname,
		--[Password]=@Password,
		[Phone]=@Phone,
		[Address]=@Address,
		[Active]=@Active
		
	Where
		id=@id
		
END
GO
/****** Object:  StoredProcedure [dbo].[usp_tblCustormer_Login]    Script Date: 02/22/2013 17:40:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_tblCustormer_Login] 
	@email varchar(50),
	@Password varchar(30)	
AS
BEGIN	

	SET NOCOUNT OFF;	
	select * from [tblCustormer]	
	Where email=@email
	AND [Password]=@Password	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_tblCustormer_GetList]    Script Date: 02/22/2013 17:40:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_tblCustormer_GetList]
	@PageIndex int,
	@PageSize int,
	@totalrow int output
AS
BEGIN
	DECLARE @from int
	DECLARE @to int

    SET @from = @PageIndex * @PageSize + 1;
	SET @to = @from + @PageSize - 1;

	SELECT 
		id
		,[Email],
		[FirstName],
		[Lastname],
		[Password],
		[Phone],
		[Address],
		[Active],
		[CreateDate]
		
	FROM (
			SELECT 
				id
		,[Email],
		[FirstName],
		[Lastname],
		[Password],
		[Phone],
		[Address],
		[Active],
		[CreateDate]
		,
				ROW_NUMBER() OVER(ORDER BY id
		 ASC) as ROWNUMBER
			FROM [tblCustormer]
		  ) as p  where ROWNUMBER between @from and @to

	SET @totalrow = (SELECT count(*) FROM [tblCustormer])
	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_tblCustormer_GetById]    Script Date: 02/22/2013 17:40:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_tblCustormer_GetById] 
	@id int
	
AS
BEGIN	

	SET NOCOUNT ON;
	
	Select 
		id
		,[Email],
		[FirstName],
		[Lastname],
		[Password],
		[Phone],
		[Address],
		[Active],
		[CreateDate]
		
	From [tblCustormer]
	Where
		id=@id
		
END
GO
/****** Object:  StoredProcedure [dbo].[usp_tblCustormer_Delete]    Script Date: 02/22/2013 17:40:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_tblCustormer_Delete] 
	@id int
	
AS
BEGIN	

	SET NOCOUNT OFF;
	
	Delete From [tblCustormer]
	Where
		id=@id
		
END
GO
/****** Object:  StoredProcedure [dbo].[usp_tblCustormer_CheckExist]    Script Date: 02/22/2013 17:40:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_tblCustormer_CheckExist] 
	@email varchar(50)	
AS
BEGIN	

	SET NOCOUNT OFF;	
	select id from [tblCustormer]	
	Where email=@email	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_tblCustormer_Add]    Script Date: 02/22/2013 17:40:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_tblCustormer_Add] 
	@Email varchar(50),
	@FirstName nvarchar(20),
	@Lastname nvarchar(20),
	@Password varchar(30),
	@Phone varchar(15),
	@Address nvarchar(500),
	@Active bit	
AS
BEGIN	

	SET NOCOUNT OFF;
	Insert Into [tblCustormer]
	(
		[Email],
		[FirstName],
		[Lastname],
		[Password],
		[Phone],
		[Address],
		[Active],
		[CreateDate]
		
	)
	values
	(
		@Email,
		@FirstName,
		@Lastname,
		@Password,
		@Phone,
		@Address,
		@Active,
		GETDATE()
		
	)
END
    select @@IDENTITY
GO
/****** Object:  StoredProcedure [dbo].[usp_Slider_Update]    Script Date: 02/22/2013 17:40:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Slider_Update] 
	@id int,
	@name nvarchar(200),
	@image varchar(200),
	@alt nvarchar(200),
	@link varchar(200)
	
AS
BEGIN	

	SET NOCOUNT OFF;
	
	Update [Slider]
	Set	
		[name]=@name,
		[image]=@image,
		[alt]=@alt,
		[link]=@link
		
	Where
		id=@id
		
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Slider_GetList]    Script Date: 02/22/2013 17:40:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Slider_GetList]
	@PageIndex int,
	@PageSize int,
	@totalrow int output
AS
BEGIN
	DECLARE @from int
	DECLARE @to int

    SET @from = @PageIndex * @PageSize + 1;
	SET @to = @from + @PageSize - 1;

	SELECT 
		id
		,[name],
		[image],
		[alt],
		[link]
		
	FROM (
			SELECT 
				id
		,[name],
		[image],
		[alt],
		[link]
		,
				ROW_NUMBER() OVER(ORDER BY id
		 ASC) as ROWNUMBER
			FROM [Slider]
		  ) as p  where ROWNUMBER between @from and @to

	SET @totalrow = (SELECT count(*) FROM [Slider])
	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Slider_GetById]    Script Date: 02/22/2013 17:40:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Slider_GetById] 
	@id int
	
AS
BEGIN	

	SET NOCOUNT ON;
	
	Select 
		id
		,[name],
		[image],
		[alt],
		[link]
		
	From [Slider]
	Where
		id=@id
		
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Slider_GetAll]    Script Date: 02/22/2013 17:40:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Slider_GetAll]
AS
BEGIN	
	SELECT *				
	FROM [Slider]
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Slider_Delete]    Script Date: 02/22/2013 17:40:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Slider_Delete] 
	@id int
	
AS
BEGIN	

	SET NOCOUNT OFF;
	
	Delete From [Slider]
	Where
		id=@id
		
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Slider_Add]    Script Date: 02/22/2013 17:40:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Slider_Add] 
	@name nvarchar(200),
	@image varchar(200),
	@alt nvarchar(200),
	@link varchar(200)
	
AS
BEGIN	

	SET NOCOUNT OFF;
	Insert Into [Slider]
	(
		[name],
		[image],
		[alt],
		[link]
		
	)
	values
	(
		@name,
		@image,
		@alt,
		@link
		
	)
END
    select @@IDENTITY
GO
/****** Object:  StoredProcedure [dbo].[usp_ProductCategory_Update]    Script Date: 02/22/2013 17:40:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_ProductCategory_Update] 
	@Id int,
	@Name nvarchar(100),
	@Link varchar(200),
	@Sort int,
	@Description nvarchar(350),
	@MetaDescription nvarchar(250),
	@MetaKeyword nvarchar(250),
	@MetaHeading nvarchar(150),
	@ParentId int,
	@Summary nvarchar(500),
	@Image nvarchar(150),
	@Zone varchar(10),
	@RewriteTitle varchar(150),
	@imgbanner nvarchar(150),
	@linkbanner varchar(200),
	@titbanner nvarchar(150)
AS
BEGIN	

	SET NOCOUNT OFF;
	
	Update [ProductCategory]
	Set	
		[Name]=@Name,
		[Link]=@Link,
		[Sort]=@Sort,
		[Description]=@Description,
		[MetaDescription]=@MetaDescription,
		[MetaKeyword]=@MetaKeyword,
		[MetaHeading]=@MetaHeading,
		[ParentId]=@ParentId,
		[Summary]=@Summary,
		[Image]=@Image,
		[Zone]=@Zone,
		[RewriteTitle]=@RewriteTitle,
		imgbanner=@imgbanner,
		linkbanner=@linkbanner,
		titbanner=@titbanner
	Where
		Id=@Id
		
END
GO
/****** Object:  StoredProcedure [dbo].[usp_ProductCategory_GetListByParent]    Script Date: 02/22/2013 17:40:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_ProductCategory_GetListByParent]
	@ParentId int
AS
BEGIN
	SELECT * FROM ProductCategory
	WHERE ISNULL(ParentId,0)=@ParentId
END
GO
/****** Object:  StoredProcedure [dbo].[usp_ProductCategory_GetList]    Script Date: 02/22/2013 17:40:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_ProductCategory_GetList]
	@PageIndex int,
	@PageSize int,
	@totalrow int output
AS
BEGIN
	DECLARE @from int
	DECLARE @to int

    SET @from = @PageIndex * @PageSize + 1;
	SET @to = @from + @PageSize - 1;

	SELECT 
		Id
		,[Name],
		[Link],
		[Sort],
		[Description],
		[MetaDescription],
		[MetaKeyword],
		[MetaHeading],
		[ParentId],
		[Summary],
		[Image],
		[Zone],
		[RewriteTitle],
		imgbanner,
		linkbanner,
		titbanner
		
	FROM (
			SELECT 
				Id
		,[Name],
		[Link],
		[Sort],
		[Description],
		[MetaDescription],
		[MetaKeyword],
		[MetaHeading],
		[ParentId],
		[Summary],
		[Image],
		[Zone],
		[RewriteTitle],
		imgbanner,
		linkbanner,
		titbanner
		,
				ROW_NUMBER() OVER(ORDER BY Id
		 ASC) as ROWNUMBER
			FROM [ProductCategory]
		  ) as p  where ROWNUMBER between @from and @to

	SET @totalrow = (SELECT count(*) FROM [ProductCategory])
	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_ProductCategory_GetById]    Script Date: 02/22/2013 17:40:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_ProductCategory_GetById] 
	@Id int
	
AS
BEGIN	

	SET NOCOUNT ON;
	
	Select 
		Id
		,[Name],
		[Link],
		[Sort],
		[Description],
		[MetaDescription],
		[MetaKeyword],
		[MetaHeading],
		[ParentId],
		[Summary],
		[Image],
		[Zone],
		[RewriteTitle],
		imgbanner,
		linkbanner,
		titbanner
		
	From [ProductCategory]
	Where
		Id=@Id
		
END
GO
/****** Object:  StoredProcedure [dbo].[usp_ProductCategory_GetAll]    Script Date: 02/22/2013 17:40:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_ProductCategory_GetAll]
	@totalrow int output
AS
BEGIN
	SELECT *
	FROM [ProductCategory]
	SET @totalrow = (SELECT count(*) FROM [ProductCategory])	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_ProductCategory_Delete]    Script Date: 02/22/2013 17:40:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_ProductCategory_Delete] 
	@Id int
	
AS
BEGIN	

	SET NOCOUNT OFF;
	
	Delete From [ProductCategory]
	Where
		Id=@Id
		
END
GO
/****** Object:  StoredProcedure [dbo].[usp_ProductCategory_Add]    Script Date: 02/22/2013 17:40:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_ProductCategory_Add] 
	@Name nvarchar(100),
	@Link varchar(200),
	@Sort int,
	@Description nvarchar(350),
	@MetaDescription nvarchar(250),
	@MetaKeyword nvarchar(250),
	@MetaHeading nvarchar(150),
	@ParentId int,
	@Summary nvarchar(500),
	@Image nvarchar(150),
	@Zone varchar(10),
	@RewriteTitle varchar(150),
	@imgbanner nvarchar(150),
	@linkbanner varchar(200),
	@titbanner nvarchar(150)
	
AS
BEGIN	

	SET NOCOUNT OFF;
	Insert Into [ProductCategory]
	(
		[Name],
		[Link],
		[Sort],
		[Description],
		[MetaDescription],
		[MetaKeyword],
		[MetaHeading],
		[ParentId],
		[Summary],
		[Image],
		[Zone],
		[RewriteTitle],
		imgbanner,
		linkbanner,
		titbanner
	)
	values
	(
		@Name,
		@Link,
		@Sort,
		@Description,
		@MetaDescription,
		@MetaKeyword,
		@MetaHeading,
		@ParentId,
		@Summary,
		@Image,
		@Zone,
		@RewriteTitle,
		@imgbanner,
		@linkbanner,
		@titbanner
		
	)
END
    select @@IDENTITY
GO
/****** Object:  StoredProcedure [dbo].[usp_Partner_GetList]    Script Date: 02/22/2013 17:40:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Partner_GetList]
	@PageIndex int,
	@PageSize int,
	@totalrow int output
AS
BEGIN
	DECLARE @from int
	DECLARE @to int

    SET @from = @PageIndex * @PageSize + 1;
	SET @to = @from + @PageSize - 1;

	SELECT 
		Id
		,[Name],
		[Link],
		[Description],
		[Image],
		[Alt]
		
	FROM (
			SELECT 
				Id
		,[Name],
		[Link],
		[Description],
		[Image],
		[Alt]
		,
				ROW_NUMBER() OVER(ORDER BY Id
		 ASC) as ROWNUMBER
			FROM [Partner]
		  ) as p  where ROWNUMBER between @from and @to

	SET @totalrow = (SELECT count(*) FROM [Partner])
	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_OrderDetail_Update]    Script Date: 02/22/2013 17:40:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_OrderDetail_Update] 
	@id int,
	@OrderId int,
	@ProductId int,
	@ProductName nvarchar(100),
	@price int,
	@Number int,
	@size varchar(100)
	
AS
BEGIN	

	SET NOCOUNT OFF;
	
	Update [OrderDetail]
	Set	
		[OrderId]=@OrderId,
		[ProductId]=@ProductId,
		[ProductName]=@ProductName,
		[price]=@price,
		[Number]=@Number,
		size =@size
	Where
		id=@id
		
END
GO
/****** Object:  StoredProcedure [dbo].[usp_OrderDetail_GetList]    Script Date: 02/22/2013 17:40:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_OrderDetail_GetList]
	@OrderId int,
	@PageIndex int,
	@PageSize int,
	@totalrow int output
AS
BEGIN
	DECLARE @from int
	DECLARE @to int

    SET @from = @PageIndex * @PageSize + 1;
	SET @to = @from + @PageSize - 1;

	SELECT 
		id
		,[OrderId],
		[ProductId],
		[ProductName],
		[price],
		[Number],
		size
		
	FROM (
			SELECT 
				id
		,[OrderId],
		[ProductId],
		[ProductName],
		[price],
		[Number],
		size
		,
				ROW_NUMBER() OVER(ORDER BY id
		 ASC) as ROWNUMBER
			FROM [OrderDetail]
			where OrderId=@OrderId
		  ) as p  where ROWNUMBER between @from and @to

	SET @totalrow = (SELECT count(*) FROM [OrderDetail] where OrderId=@OrderId)
	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_OrderDetail_GetById]    Script Date: 02/22/2013 17:40:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_OrderDetail_GetById] 
	@id int
	
AS
BEGIN	

	SET NOCOUNT ON;
	
	Select 
		id
		,[OrderId],
		[ProductId],
		[ProductName],
		[price],
		[Number],
		size
		
	From [OrderDetail]
	Where
		id=@id
		
END
GO
/****** Object:  StoredProcedure [dbo].[usp_OrderDetail_GetAll]    Script Date: 02/22/2013 17:40:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_OrderDetail_GetAll]
	@OrderId int,
	@totalrow int output
AS
BEGIN
	SELECT * FROM [OrderDetail]
	WHERE OrderId=@OrderId
	SET @totalrow = (SELECT count(*) FROM [OrderDetail] WHERE OrderId=@OrderId)	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_OrderDetail_Delete]    Script Date: 02/22/2013 17:40:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_OrderDetail_Delete] 
	@id int
	
AS
BEGIN	

	SET NOCOUNT OFF;
	
	Delete From [OrderDetail]
	Where
		id=@id
		
END
GO
/****** Object:  StoredProcedure [dbo].[usp_OrderDetail_Add]    Script Date: 02/22/2013 17:40:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_OrderDetail_Add] 
	@OrderId int,
	@ProductId int,
	@ProductName nvarchar(100),
	@price int,
	@Number int,
	@size varchar(100)
AS
BEGIN	

	SET NOCOUNT OFF;
	Insert Into [OrderDetail]
	(
		[OrderId],
		[ProductId],
		[ProductName],
		[price],
		[Number],
		size	
	)
	values
	(
		@OrderId,
		@ProductId,
		@ProductName,
		@price,
		@Number,
		@size
		
	)
END
    select @@IDENTITY
GO
/****** Object:  StoredProcedure [dbo].[usp_Order_UpdateStatus]    Script Date: 02/22/2013 17:40:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Order_UpdateStatus] 
	@OrderID int,	
	@StatusOrder int	
AS
BEGIN
	SET NOCOUNT OFF;	
	Update [Order]
	Set	
		[StatusOrder]=@StatusOrder		
	Where
		OrderID=@OrderID		
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Order_Update]    Script Date: 02/22/2013 17:40:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Order_Update] 
	@OrderID int,
	@CustomerID int,
	@FullnameOrder nvarchar(200),
	@SexOrder int,
	@AddressOrder nvarchar(500),
	@EmailOrder nvarchar(50),
	@PhoneOrder nvarchar(50),
	@MobileOrder nvarchar(50),
	@FaxOrder nvarchar(50),
	@OtherInfoOrder nvarchar(500),
	@FullnameReceived nvarchar(200),
	@SexReceived int,
	@AddressReceived nvarchar(500),
	@EmailReceived nvarchar(50),
	@PhoneReceived nvarchar(50),
	@MobileReceived nvarchar(50),
	@FaxReceived nvarchar(50),
	@OtherInfoReceived nvarchar(500),
	@Shipping int,
	@TransitTime nvarchar(50),
	@Payment int,
	@TotalPayment float,
	@ProductNumber int,
	@StatusOrder int,
	@OnOrder datetime
	
AS
BEGIN	

	SET NOCOUNT OFF;
	
	Update [Order]
	Set	
		[CustomerID]=@CustomerID,
		[FullnameOrder]=@FullnameOrder,
		[SexOrder]=@SexOrder,
		[AddressOrder]=@AddressOrder,
		[EmailOrder]=@EmailOrder,
		[PhoneOrder]=@PhoneOrder,
		[MobileOrder]=@MobileOrder,
		[FaxOrder]=@FaxOrder,
		[OtherInfoOrder]=@OtherInfoOrder,
		[FullnameReceived]=@FullnameReceived,
		[SexReceived]=@SexReceived,
		[AddressReceived]=@AddressReceived,
		[EmailReceived]=@EmailReceived,
		[PhoneReceived]=@PhoneReceived,
		[MobileReceived]=@MobileReceived,
		[FaxReceived]=@FaxReceived,
		[OtherInfoReceived]=@OtherInfoReceived,
		[Shipping]=@Shipping,
		[TransitTime]=@TransitTime,
		[Payment]=@Payment,
		[TotalPayment]=@TotalPayment,
		[ProductNumber]=@ProductNumber,
		[StatusOrder]=@StatusOrder,
		[OnOrder]=@OnOrder
		
	Where
		OrderID=@OrderID
		
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Order_GetList]    Script Date: 02/22/2013 17:40:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Order_GetList]
	@PageIndex int,
	@PageSize int,
	@totalrow int output
AS
BEGIN
	DECLARE @from int
	DECLARE @to int

    SET @from = @PageIndex * @PageSize + 1;
	SET @to = @from + @PageSize - 1;

	SELECT 
		OrderID
		,[CustomerID],
		[FullnameOrder],
		[SexOrder],
		[AddressOrder],
		[EmailOrder],
		[PhoneOrder],
		[MobileOrder],
		[FaxOrder],
		[OtherInfoOrder],
		[FullnameReceived],
		[SexReceived],
		[AddressReceived],
		[EmailReceived],
		[PhoneReceived],
		[MobileReceived],
		[FaxReceived],
		[OtherInfoReceived],
		[Shipping],
		[TransitTime],
		[Payment],
		[TotalPayment],
		[ProductNumber],
		[StatusOrder],
		[OnOrder]
		
	FROM (
			SELECT 
				OrderID
		,[CustomerID],
		[FullnameOrder],
		[SexOrder],
		[AddressOrder],
		[EmailOrder],
		[PhoneOrder],
		[MobileOrder],
		[FaxOrder],
		[OtherInfoOrder],
		[FullnameReceived],
		[SexReceived],
		[AddressReceived],
		[EmailReceived],
		[PhoneReceived],
		[MobileReceived],
		[FaxReceived],
		[OtherInfoReceived],
		[Shipping],
		[TransitTime],
		[Payment],
		[TotalPayment],
		[ProductNumber],
		[StatusOrder],
		[OnOrder]
		,
				ROW_NUMBER() OVER(ORDER BY OrderID
		 ASC) as ROWNUMBER
			FROM [Order]
		  ) as p  where ROWNUMBER between @from and @to

	SET @totalrow = (SELECT count(*) FROM [Order])
	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Order_GetById]    Script Date: 02/22/2013 17:40:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Order_GetById] 
	@OrderID int
	
AS
BEGIN	

	SET NOCOUNT ON;
	
	Select 
		OrderID
		,[CustomerID],
		[FullnameOrder],
		[SexOrder],
		[AddressOrder],
		[EmailOrder],
		[PhoneOrder],
		[MobileOrder],
		[FaxOrder],
		[OtherInfoOrder],
		[FullnameReceived],
		[SexReceived],
		[AddressReceived],
		[EmailReceived],
		[PhoneReceived],
		[MobileReceived],
		[FaxReceived],
		[OtherInfoReceived],
		[Shipping],
		[TransitTime],
		[Payment],
		[TotalPayment],
		[ProductNumber],
		[StatusOrder],
		[OnOrder]
		
	From [Order]
	Where
		OrderID=@OrderID
		
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Order_GetAll]    Script Date: 02/22/2013 17:40:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Order_GetAll]
	@StatusOrder int,
	@totalrow int output
AS
BEGIN
	SELECT 
		*
	FROM [Order]	
	WHERE StatusOrder=@StatusOrder
	SET @totalrow = (SELECT count(*) FROM [Order] WHERE StatusOrder=@StatusOrder)	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Order_Delete]    Script Date: 02/22/2013 17:40:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Order_Delete] 
	@OrderID int
	
AS
BEGIN	

	SET NOCOUNT OFF;
	
	Delete From [Order]
	Where
		OrderID=@OrderID
		
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Order_Add]    Script Date: 02/22/2013 17:40:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Order_Add] 
	@CustomerID int,
	@FullnameOrder nvarchar(200),
	@SexOrder int,
	@AddressOrder nvarchar(500),
	@EmailOrder nvarchar(50),
	@PhoneOrder nvarchar(50),
	@MobileOrder nvarchar(50),
	@FaxOrder nvarchar(50),
	@OtherInfoOrder nvarchar(500),
	@FullnameReceived nvarchar(200),
	@SexReceived int,
	@AddressReceived nvarchar(500),
	@EmailReceived nvarchar(50),
	@PhoneReceived nvarchar(50),
	@MobileReceived nvarchar(50),
	@FaxReceived nvarchar(50),
	@OtherInfoReceived nvarchar(500),
	@Shipping int,
	@TransitTime nvarchar(50),
	@Payment int,
	@TotalPayment float,
	@ProductNumber int,
	@StatusOrder int,
	@OnOrder datetime
	
AS
BEGIN	

	SET NOCOUNT OFF;
	Insert Into [Order]
	(
		[CustomerID],
		[FullnameOrder],
		[SexOrder],
		[AddressOrder],
		[EmailOrder],
		[PhoneOrder],
		[MobileOrder],
		[FaxOrder],
		[OtherInfoOrder],
		[FullnameReceived],
		[SexReceived],
		[AddressReceived],
		[EmailReceived],
		[PhoneReceived],
		[MobileReceived],
		[FaxReceived],
		[OtherInfoReceived],
		[Shipping],
		[TransitTime],
		[Payment],
		[TotalPayment],
		[ProductNumber],
		[StatusOrder],
		[OnOrder]
		
	)
	values
	(
		@CustomerID,
		@FullnameOrder,
		@SexOrder,
		@AddressOrder,
		@EmailOrder,
		@PhoneOrder,
		@MobileOrder,
		@FaxOrder,
		@OtherInfoOrder,
		@FullnameReceived,
		@SexReceived,
		@AddressReceived,
		@EmailReceived,
		@PhoneReceived,
		@MobileReceived,
		@FaxReceived,
		@OtherInfoReceived,
		@Shipping,
		@TransitTime,
		@Payment,
		@TotalPayment,
		@ProductNumber,
		@StatusOrder,
		@OnOrder
		
	)
END
    select @@IDENTITY
GO
/****** Object:  StoredProcedure [dbo].[usp_NewsCategory_Update]    Script Date: 02/22/2013 17:40:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_NewsCategory_Update] 
	@Id int,
	@Name nvarchar(100),
	@Link varchar(200),
	@Sort int,
	@Description nvarchar(350),
	@MetaDescription nvarchar(250),
	@MetaKeyword nvarchar(250),
	@MetaHeading nvarchar(50),
	@Image nvarchar(250),
	@TitleRewrite varchar(150),
	@ParentId int
	
AS
BEGIN	

	SET NOCOUNT OFF;
	
	Update [NewsCategory]
	Set	
		[Name]=@Name,
		[Link]=@Link,
		[Sort]=@Sort,
		[Description]=@Description,
		[MetaDescription]=@MetaDescription,
		[MetaKeyword]=@MetaKeyword,
		[MetaHeading]=@MetaHeading,
		[Image]=@Image,
		[TitleRewrite]=@TitleRewrite,
		[ParentId]=@ParentId
		
	Where
		Id=@Id
		
END
GO
/****** Object:  StoredProcedure [dbo].[usp_NewsCategory_GetList]    Script Date: 02/22/2013 17:40:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_NewsCategory_GetList]
	@PageIndex int,
	@PageSize int,
	@totalrow int output
AS
BEGIN
	DECLARE @from int
	DECLARE @to int

    SET @from = @PageIndex * @PageSize + 1;
	SET @to = @from + @PageSize - 1;

	SELECT 
		Id
		,[Name],
		[Link],
		[Sort],
		[Description],
		[MetaDescription],
		[MetaKeyword],
		[MetaHeading],
		[Image],
		[TitleRewrite],
		[ParentId]
		
	FROM (
			SELECT 
				Id
		,[Name],
		[Link],
		[Sort],
		[Description],
		[MetaDescription],
		[MetaKeyword],
		[MetaHeading],
		[Image],
		[TitleRewrite],
		[ParentId]
		,
				ROW_NUMBER() OVER(ORDER BY Id
		 ASC) as ROWNUMBER
			FROM [NewsCategory]
		  ) as p  where ROWNUMBER between @from and @to

	SET @totalrow = (SELECT count(*) FROM [NewsCategory])
	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_NewsCategory_GetById]    Script Date: 02/22/2013 17:40:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_NewsCategory_GetById] 
	@Id int
	
AS
BEGIN	

	SET NOCOUNT ON;
	
	Select 
		Id
		,[Name],
		[Link],
		[Sort],
		[Description],
		[MetaDescription],
		[MetaKeyword],
		[MetaHeading],
		[Image],
		[TitleRewrite],
		[ParentId]
		
	From [NewsCategory]
	Where
		Id=@Id
		
END
GO
/****** Object:  StoredProcedure [dbo].[usp_NewsCategory_GetAll]    Script Date: 02/22/2013 17:40:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_NewsCategory_GetAll]
	@totalrow int output
AS
BEGIN
	SELECT *
	FROM [NewsCategory]
	SET @totalrow = (SELECT count(*) FROM [NewsCategory])	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_NewsCategory_Delete]    Script Date: 02/22/2013 17:40:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_NewsCategory_Delete] 
	@Id int
	
AS
BEGIN	

	SET NOCOUNT OFF;
	
	Delete From [NewsCategory]
	Where
		Id=@Id
		
END
GO
/****** Object:  StoredProcedure [dbo].[usp_NewsCategory_Add]    Script Date: 02/22/2013 17:40:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_NewsCategory_Add] 
	@Name nvarchar(100),
	@Link varchar(200),
	@Sort int,
	@Description nvarchar(350),
	@MetaDescription nvarchar(250),
	@MetaKeyword nvarchar(250),
	@MetaHeading nvarchar(50),
	@Image nvarchar(250),
	@TitleRewrite varchar(150),
	@ParentId int
	
AS
BEGIN	

	SET NOCOUNT OFF;
	Insert Into [NewsCategory]
	(
		[Name],
		[Link],
		[Sort],
		[Description],
		[MetaDescription],
		[MetaKeyword],
		[MetaHeading],
		[Image],
		[TitleRewrite],
		[ParentId]
		
	)
	values
	(
		@Name,
		@Link,
		@Sort,
		@Description,
		@MetaDescription,
		@MetaKeyword,
		@MetaHeading,
		@Image,
		@TitleRewrite,
		@ParentId
		
	)
END
    select @@IDENTITY
GO
/****** Object:  StoredProcedure [dbo].[usp_News_Update]    Script Date: 02/22/2013 17:40:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_News_Update] 
	@Id int,
	@CateId int,
	@CateName nvarchar(100),
	@Title nvarchar(100),
	@Description nvarchar(500),
	@Content ntext,
	@Image nvarchar(200),
	@AltImage nvarchar(200),
	@CreateDate datetime,
	@Action bit,
	@Link varchar(200),
	@MetaKeyword nvarchar(200),
	@MetaDescription nvarchar(500),
	@MetaHeading nvarchar(250),
	@IsAttach bit,
	@TitleRewrite nvarchar(150),
	@LanguageId varchar(5)
	
AS
BEGIN	

	SET NOCOUNT OFF;
	
	Update [News]
	Set	
		[CateId]=@CateId,
		[CateName]=@CateName,
		[Title]=@Title,
		[Description]=@Description,
		[Content]=@Content,
		[Image]=@Image,
		[AltImage]=@AltImage,
		[CreateDate]=@CreateDate,
		[Action]=@Action,
		[Link]=@Link,
		[MetaKeyword]=@MetaKeyword,
		[MetaDescription]=@MetaDescription,
		[MetaHeading]=@MetaHeading,
		[IsAttach]=@IsAttach,
		[TitleRewrite]=@TitleRewrite,
		[LanguageId]=@LanguageId
		
	Where
		Id=@Id
		
END
GO
/****** Object:  StoredProcedure [dbo].[usp_News_GetList]    Script Date: 02/22/2013 17:40:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_News_GetList]
	@PageIndex int,
	@PageSize int,
	@totalrow int output,
	@CateId int
AS
BEGIN
	DECLARE @from int
	DECLARE @to int

    SET @from = @PageIndex * @PageSize + 1;
	SET @to = @from + @PageSize - 1;

	SELECT 
		Id
		,[CateId],
		[CateName],
		[Title],
		[Description],
		[Content],
		[Image],
		[AltImage],
		[CreateDate],
		[Action],
		[Link],
		[MetaKeyword],
		[MetaDescription],
		[MetaHeading],
		[IsAttach],
		[TitleRewrite],
		[LanguageId]
		
	FROM (
			SELECT 
				Id
		,[CateId],
		[CateName],
		[Title],
		[Description],
		[Content],
		[Image],
		[AltImage],
		[CreateDate],
		[Action],
		[Link],
		[MetaKeyword],
		[MetaDescription],
		[MetaHeading],
		[IsAttach],
		[TitleRewrite],
		[LanguageId]
		,
				ROW_NUMBER() OVER(ORDER BY Id
		 ASC) as ROWNUMBER
			FROM [News]
			where CateId=@CateId
		  ) as p  where ROWNUMBER between @from and @to

	SET @totalrow = (SELECT count(*) FROM [News] where CateId=@CateId)
	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_News_GetById]    Script Date: 02/22/2013 17:40:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_News_GetById] 
	@Id int
	
AS
BEGIN	

	SET NOCOUNT ON;
	
	Select 
		Id
		,[CateId],
		[CateName],
		[Title],
		[Description],
		[Content],
		[Image],
		[AltImage],
		[CreateDate],
		[Action],
		[Link],
		[MetaKeyword],
		[MetaDescription],
		[MetaHeading],
		[IsAttach],
		[TitleRewrite],
		[LanguageId]
		
	From [News]
	Where
		Id=@Id
		
END
GO
/****** Object:  StoredProcedure [dbo].[usp_News_Delete]    Script Date: 02/22/2013 17:40:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_News_Delete] 
	@Id int
	
AS
BEGIN	

	SET NOCOUNT OFF;
	
	Delete From [News]
	Where
		Id=@Id
		
END
GO
/****** Object:  StoredProcedure [dbo].[usp_News_Add]    Script Date: 02/22/2013 17:40:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_News_Add] 
	@CateId int,
	@CateName nvarchar(100),
	@Title nvarchar(100),
	@Description nvarchar(500),
	@Content ntext,
	@Image nvarchar(200),
	@AltImage nvarchar(200),
	@CreateDate datetime,
	@Action bit,
	@Link varchar(200),
	@MetaKeyword nvarchar(200),
	@MetaDescription nvarchar(500),
	@MetaHeading nvarchar(250),
	@IsAttach bit,
	@TitleRewrite nvarchar(150),
	@LanguageId varchar(5)
	
AS
BEGIN	

	SET NOCOUNT OFF;
	Insert Into [News]
	(
		[CateId],
		[CateName],
		[Title],
		[Description],
		[Content],
		[Image],
		[AltImage],
		[CreateDate],
		[Action],
		[Link],
		[MetaKeyword],
		[MetaDescription],
		[MetaHeading],
		[IsAttach],
		[TitleRewrite],
		[LanguageId]
		
	)
	values
	(
		@CateId,
		@CateName,
		@Title,
		@Description,
		@Content,
		@Image,
		@AltImage,
		@CreateDate,
		@Action,
		@Link,
		@MetaKeyword,
		@MetaDescription,
		@MetaHeading,
		@IsAttach,
		@TitleRewrite,
		@LanguageId
		
	)
END
    select @@IDENTITY
GO
/****** Object:  StoredProcedure [dbo].[tuan_user_UpdateProfile]    Script Date: 02/22/2013 17:40:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[tuan_user_UpdateProfile]
@id int,
@username nvarchar(30),
@password nvarchar(100),
@fullname nvarchar(50)
as
begin
	if(@password is null)
	begin
		update tblUser set Username=@username, Fullname=@fullname where Id=@id
	end
	else
	begin
		update tblUser set Username=@username, Fullname=@fullname, [Password]=@password where Id=@id
	end
	select * from tblUser where Id=@id
end
GO
/****** Object:  StoredProcedure [dbo].[tuan_user_login]    Script Date: 02/22/2013 17:40:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[tuan_user_login]
@username nvarchar(30),
@password nvarchar(100)
as
begin
	select * from tblUser
	where [Username]=@username and [Password]=@password
end
GO
/****** Object:  StoredProcedure [dbo].[tuan_User_GetById]    Script Date: 02/22/2013 17:40:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[tuan_User_GetById] 
@id int
AS
BEGIN	

	SET NOCOUNT ON;
	
	Select 
		*
	From [tblUser]
	Where
		id= @id
END
GO
/****** Object:  StoredProcedure [dbo].[tuan_User_Add]    Script Date: 02/22/2013 17:40:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[tuan_User_Add] 
	@Username nvarchar(30),
	@Password nvarchar(100),
	@Fullname nvarchar(50),
	@Status smallint
	
AS
BEGIN	

	SET NOCOUNT OFF;
	Insert Into [tblUser]
	(
		[Username],
		[Password],
		[Fullname],
		[Status]		
	)
	values
	(
		@Username,
		@Password,
		@Fullname,
		@Status
		
	)
    select @@IDENTITY
END
GO
/****** Object:  StoredProcedure [dbo].[tuan_tblUser_Update]    Script Date: 02/22/2013 17:40:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[tuan_tblUser_Update] 
	@Id int,
	@Username nvarchar(30),
	@Password nvarchar(100),
	@Fullname nvarchar(50),
	@Status smallint
	
AS
BEGIN	

	SET NOCOUNT OFF;
	
	Update [tblUser]
	Set	
		[Username]=@Username,
		[Password]=@Password,
		[Fullname]=@Fullname,
		[Status]=@Status
		
	Where
		Id=@Id
END
GO
/****** Object:  StoredProcedure [dbo].[tuan_tblUser_GetList_All]    Script Date: 02/22/2013 17:40:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[tuan_tblUser_GetList_All]	
AS
BEGIN
	Select * 
			FROM [tblUser]		  
END
GO
/****** Object:  StoredProcedure [dbo].[new_Partner_Update]    Script Date: 02/22/2013 17:40:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[new_Partner_Update] 
	@Id int,
	@Name nvarchar(50),
	@Link nvarchar(150),
	@Description nvarchar(250),
	@Image nvarchar(250),
	@Alt nvarchar(50)
	
AS
BEGIN	

	SET NOCOUNT OFF;
	
	Update [Partner]
	Set	
		[Name]=@Name,
		[Link]=@Link,
		[Description]=@Description,
		[Image]=@Image,
		[Alt]=@Alt
		
	Where
		Id=@Id
		
END
GO
/****** Object:  StoredProcedure [dbo].[new_Partner_GetList_All]    Script Date: 02/22/2013 17:40:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[new_Partner_GetList_All]	
AS
BEGIN
	Select *
			FROM [Partner]		  
END
GO
/****** Object:  StoredProcedure [dbo].[new_Partner_GetById]    Script Date: 02/22/2013 17:40:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[new_Partner_GetById] 
	@Id int
	
AS
BEGIN	

	SET NOCOUNT ON;
	
	Select 
		*
	From [Partner]
	Where
		Id=@Id
		
END
GO
/****** Object:  StoredProcedure [dbo].[new_Partner_Delete]    Script Date: 02/22/2013 17:40:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[new_Partner_Delete] 
	@Id int
	
AS
BEGIN	

	SET NOCOUNT OFF;
	
	Delete From [Partner]
	Where
		Id=@Id
		
END
GO
/****** Object:  StoredProcedure [dbo].[new_Partner_Add]    Script Date: 02/22/2013 17:40:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[new_Partner_Add] 
	@Name nvarchar(50),
	@Link nvarchar(150),
	@Description nvarchar(250),
	@Image nvarchar(250),
	@Alt nvarchar(50)
	
AS
BEGIN	

	SET NOCOUNT OFF;
	Insert Into [Partner]
	(
		[Name],
		[Link],
		[Description],
		[Image],
		[Alt]
		
	)
	values
	(
		@Name,
		@Link,
		@Description,
		@Image,
		@Alt
		
	)
    select @@IDENTITY
END
GO
/****** Object:  Default [DF_DK_Order_OnOrder]    Script Date: 02/22/2013 17:40:26 ******/
ALTER TABLE [dbo].[Order] ADD  CONSTRAINT [DF_DK_Order_OnOrder]  DEFAULT (getdate()) FOR [OnOrder]
GO
/****** Object:  Default [DF_tbl_product_isHot]    Script Date: 02/22/2013 17:40:26 ******/
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_tbl_product_isHot]  DEFAULT ((0)) FOR [isHot]
GO
