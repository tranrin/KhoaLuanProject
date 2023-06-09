USE [Recipe]
GO
/****** Object:  Table [dbo].[Table_BuocNau]    Script Date: 4/12/2023 1:00:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table_BuocNau](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CongThucID] [int] NOT NULL,
	[MoTa] [nvarchar](max) NULL,
	[ThuTu] [int] NULL,
 CONSTRAINT [PK_Table_BuocNau] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Table_CongThuc]    Script Date: 4/12/2023 1:00:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table_CongThuc](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TenCongThuc] [nvarchar](max) NOT NULL,
	[MoTa] [nvarchar](max) NULL,
	[ThoiGianNau] [int] NULL,
	[IDUser] [int] NOT NULL,
	[IDCountry] [int] NOT NULL,
 CONSTRAINT [PK_Table_CongThuc] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Table_Country]    Script Date: 4/12/2023 1:00:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table_Country](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CountryName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Table_Country] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Table_Image]    Script Date: 4/12/2023 1:00:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table_Image](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[URL] [nvarchar](max) NOT NULL,
	[CongThucID] [int] NOT NULL,
 CONSTRAINT [PK_Table_Image] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Table_LuotThich]    Script Date: 4/12/2023 1:00:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table_LuotThich](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CongThucID] [int] NOT NULL,
	[NguoiDungID] [int] NOT NULL,
	[ThoiGian] [datetime] NOT NULL,
 CONSTRAINT [PK_Table_LuotThich] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Table_LuotXem]    Script Date: 4/12/2023 1:00:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table_LuotXem](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CongThucID] [int] NOT NULL,
	[NguoiDungID] [int] NOT NULL,
	[ThoiGian] [datetime] NOT NULL,
 CONSTRAINT [PK_Table_LuotXem] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Table_NguyenLieu]    Script Date: 4/12/2023 1:00:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table_NguyenLieu](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TenNguyenLieu] [nvarchar](max) NOT NULL,
	[SoLuong] [int] NOT NULL,
	[DonVi] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Table_NguyenLieu] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Table_User]    Script Date: 4/12/2023 1:00:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table_User](
	[Email] [nvarchar](max) NOT NULL,
	[Name] [nchar](100) NOT NULL,
	[BirthDate] [datetime] NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_Table_User] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[Table_BuocNau]  WITH CHECK ADD  CONSTRAINT [FK_Table_BuocNau_Table_CongThuc] FOREIGN KEY([CongThucID])
REFERENCES [dbo].[Table_CongThuc] ([ID])
GO
ALTER TABLE [dbo].[Table_BuocNau] CHECK CONSTRAINT [FK_Table_BuocNau_Table_CongThuc]
GO
ALTER TABLE [dbo].[Table_CongThuc]  WITH CHECK ADD  CONSTRAINT [FK_Table_CongThuc_Table_Country] FOREIGN KEY([IDCountry])
REFERENCES [dbo].[Table_Country] ([ID])
GO
ALTER TABLE [dbo].[Table_CongThuc] CHECK CONSTRAINT [FK_Table_CongThuc_Table_Country]
GO
ALTER TABLE [dbo].[Table_CongThuc]  WITH CHECK ADD  CONSTRAINT [FK_Table_CongThuc_Table_LuotThich] FOREIGN KEY([ID])
REFERENCES [dbo].[Table_LuotThich] ([ID])
GO
ALTER TABLE [dbo].[Table_CongThuc] CHECK CONSTRAINT [FK_Table_CongThuc_Table_LuotThich]
GO
ALTER TABLE [dbo].[Table_CongThuc]  WITH CHECK ADD  CONSTRAINT [FK_Table_CongThuc_Table_LuotXem] FOREIGN KEY([ID])
REFERENCES [dbo].[Table_LuotXem] ([ID])
GO
ALTER TABLE [dbo].[Table_CongThuc] CHECK CONSTRAINT [FK_Table_CongThuc_Table_LuotXem]
GO
ALTER TABLE [dbo].[Table_CongThuc]  WITH CHECK ADD  CONSTRAINT [FK_Table_CongThuc_Table_User] FOREIGN KEY([IDUser])
REFERENCES [dbo].[Table_User] ([ID])
GO
ALTER TABLE [dbo].[Table_CongThuc] CHECK CONSTRAINT [FK_Table_CongThuc_Table_User]
GO
ALTER TABLE [dbo].[Table_Image]  WITH CHECK ADD  CONSTRAINT [FK_Table_Image_Table_CongThuc] FOREIGN KEY([CongThucID])
REFERENCES [dbo].[Table_CongThuc] ([ID])
GO
ALTER TABLE [dbo].[Table_Image] CHECK CONSTRAINT [FK_Table_Image_Table_CongThuc]
GO
