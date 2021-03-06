USE [master]
GO
/****** Object:  Database [ThueSachDB]    Script Date: 23/7/2017 12:52:49 PM ******/
CREATE DATABASE [ThueSachDB]
GO
USE [ThueSachDB]
GO
/****** Object:  Table [dbo].[Sach]    Script Date: 23/7/2017 12:52:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sach](
	[MaSach] [char](5) NOT NULL,
	[TenSach] [nvarchar](50) NOT NULL,
	[GiaThue] [decimal](8, 2) NOT NULL,
	[CoSan] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SachMuon]    Script Date: 23/7/2017 12:52:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SachMuon](
	[MaSo] [int] IDENTITY(1,1) NOT NULL,
	[MaSV] [char](15) NOT NULL,
	[MaSach] [char](5) NOT NULL,
	[NgayMuon] [datetime] NOT NULL,
	[NgayTra] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SinhVien]    Script Date: 23/7/2017 12:52:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SinhVien](
	[MaSV] [char](15) NOT NULL,
	[TenSV] [nvarchar](30) NOT NULL,
	[DiaChi] [nvarchar](50) NOT NULL,
	[DienThoai] [nvarchar](20) NOT NULL,
	[Email] [nvarchar](50) NULL,
	[Anh] [nvarchar](50) NULL,
	[TenDN] [nvarchar](40) NULL,
	[MatKhau] [nvarchar](50) NULL,
	[Khoa] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaThue], [CoSan]) VALUES ('S1', N'Tin đại cương', CAST(5000.00 AS Decimal(8, 2)), 1)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaThue], [CoSan]) VALUES ('S2', N'Hệ quản trị SQLserver', CAST(10000.00 AS Decimal(8, 2)), 1)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaThue], [CoSan]) VALUES ('S3', N'Lập trình Java', CAST(12000.00 AS Decimal(8, 2)), 1)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaThue], [CoSan]) VALUES ('S4', N'Lập trình nhúng', CAST(25000.00 AS Decimal(8, 2)), 1)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaThue], [CoSan]) VALUES ('S5', N'Lập trình Windows', CAST(15000.00 AS Decimal(8, 2)), 1)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaThue], [CoSan]) VALUES ('S6', N'Cơ sở dữ liệu', CAST(7000.00 AS Decimal(8, 2)), 0)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaThue], [CoSan]) VALUES ('S7', N'XML', CAST(6000.00 AS Decimal(8, 2)), 1)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaThue], [CoSan]) VALUES ('S8', N'Toán cao cấp', CAST(2000.00 AS Decimal(8, 2)), 1)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaThue], [CoSan]) VALUES ('S9', N'Phân tích thiết kế hệ thống', CAST(10000.00 AS Decimal(8, 2)), 1)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaThue], [CoSan]) VALUES ('S10', N'Trí tuệ nhân tạo', CAST(9000.00 AS Decimal(8, 2)), 1)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaThue], [CoSan]) VALUES ('S11', N'Giao tiếp với doanh nghiệp', CAST(2000.00 AS Decimal(8, 2)), 1)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaThue], [CoSan]) VALUES ('S12', N'Thiết kế đồ họa', CAST(17000.00 AS Decimal(8, 2)), 0)
SET IDENTITY_INSERT [dbo].[SachMuon] ON 

INSERT [dbo].[SachMuon] ([MaSo], [MaSV], [MaSach], [NgayMuon], [NgayTra]) VALUES (1, N'S01            ','S1', CAST(N'2016-09-01 00:00:00.000' AS DateTime), CAST(N'2016-12-08 00:00:00.000' AS DateTime))
INSERT [dbo].[SachMuon] ([MaSo], [MaSV], [MaSach], [NgayMuon], [NgayTra]) VALUES (2, N'S01            ', 'S2', CAST(N'2016-10-12 00:00:00.000' AS DateTime), CAST(N'2016-12-28 00:00:00.000' AS DateTime))
INSERT [dbo].[SachMuon] ([MaSo], [MaSV], [MaSach], [NgayMuon], [NgayTra]) VALUES (3, N'S01            ', 'S3', CAST(N'2017-05-03 00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[SachMuon] ([MaSo], [MaSV], [MaSach], [NgayMuon], [NgayTra]) VALUES (4, N'S03            ', 'S9', CAST(N'2017-04-09 00:00:00.000' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[SachMuon] OFF
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [DiaChi], [DienThoai], [Email], [Anh], [TenDN], [MatKhau], [Khoa]) VALUES (N'S01            ', N'Trần Thanh Tùng', N'Đông Anh - Hà Nội', N'0912345678', N'tungtt@gmail.com', NULL, N'tungtt', N'123', 0)
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [DiaChi], [DienThoai], [Email], [Anh], [TenDN], [MatKhau], [Khoa]) VALUES (N'S02            ', N'Nguyễn Thu Hà', N'Hòa Bình - Hòa Bình', N'0913345678', N'hant@gmail.com', NULL, N'hant', N'ha123', 0)
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [DiaChi], [DienThoai], [Email], [Anh], [TenDN], [MatKhau], [Khoa]) VALUES (N'S03            ', N'Lê Ngọc Huyền', N'Sơn Tây - Hà Nội', N'0915678678', N'huyenln@yahoo.com', NULL, N'huyenln', N'abc', 0)
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [DiaChi], [DienThoai], [Email], [Anh], [TenDN], [MatKhau], [Khoa]) VALUES (N'S04            ', N'Hoàng Việt Hà', N'Hà Đông - Hà Nội', N'0915678678', N'huyenln@gmail.com', NULL, N'huyenln', N'abc', 1)
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [DiaChi], [DienThoai], [Email], [Anh], [TenDN], [MatKhau], [Khoa]) VALUES (N'S05            ', N'Lê Việt Hải', N'Quận 1 - TP HCM', N'0985655678', N'hailv@yahoo.com', NULL, N'hailv', N'hai', 1)
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [DiaChi], [DienThoai], [Email], [Anh], [TenDN], [MatKhau], [Khoa]) VALUES (N'S06            ', N'abc', N'Lê Chân - Hải phòng', N'0931255678', N'abc@yahoo.com', NULL, N'abc', N'abc', 0)

ALTER TABLE [dbo].[SachMuon]  WITH CHECK ADD FOREIGN KEY([MaSach])
REFERENCES [dbo].[Sach] ([MaSach])
GO
ALTER TABLE [dbo].[SachMuon]  WITH CHECK ADD FOREIGN KEY([MaSV])
REFERENCES [dbo].[SinhVien] ([MaSV])
GO
USE [master]
GO
ALTER DATABASE [ThueSachDB] SET  READ_WRITE 
GO
