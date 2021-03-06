USE [QLNS]
GO
/****** Object:  Table [dbo].[TblBangCongThuViec]    Script Date: 05/10/2021 8:54:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblBangCongThuViec](
	[TenBoPhan] [nvarchar](10) NULL,
	[TenPhong] [nvarchar](50) NULL,
	[MaNV] [char](10) NOT NULL,
	[LuongTViec] [int] NULL,
	[Thang] [char](10) NULL,
	[Nam] [char](10) NULL,
	[SoNgayCong] [int] NULL,
	[SoNgayNghi] [int] NULL,
	[SoGioLamThem] [int] NULL,
	[GhiChu] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblBangLuongCTy]    Script Date: 05/10/2021 8:54:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblBangLuongCTy](
	[MaLuong] [char](10) NOT NULL,
	[ChucVu] [nvarchar](50) NULL,
	[ChucDanh] [nvarchar](50) NULL,
	[LCB] [int] NULL,
	[PCChucVu] [int] NULL,
	[NgayNhap] [datetime] NULL,
	[LCBMoi] [int] NULL,
	[NgaySua] [datetime] NULL,
	[LyDo] [nvarchar](50) NULL,
	[PCCVuMoi] [int] NULL,
	[NgaySuaPC] [datetime] NULL,
	[GhiChu] [nvarchar](50) NULL,
 CONSTRAINT [PK_TblBangLuongCTy] PRIMARY KEY CLUSTERED 
(
	[MaLuong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblBoPhan]    Script Date: 05/10/2021 8:54:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblBoPhan](
	[MaBophan] [char](10) NOT NULL,
	[TenBoPhan] [nvarchar](50) NULL,
	[GhiChu] [nvarchar](50) NULL,
 CONSTRAINT [PK_TblBoPhan] PRIMARY KEY CLUSTERED 
(
	[MaBophan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblCongKhoiDieuHanh]    Script Date: 05/10/2021 8:54:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblCongKhoiDieuHanh](
	[MaNV] [char](10) NOT NULL,
	[LCB] [int] NULL,
	[PhuCapCVu] [char](4) NULL,
	[PHuCapKhac] [int] NULL,
	[Thang] [char](10) NULL,
	[Nam] [char](19) NULL,
	[SoNgayCongThang] [int] NULL,
	[SoNgayNghi] [int] NULL,
	[SoGioLamThem] [int] NULL,
	[GhiChu] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblCongKhoiSanXuat]    Script Date: 05/10/2021 8:54:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblCongKhoiSanXuat](
	[MaNV] [char](10) NOT NULL,
	[LCB] [int] NULL,
	[PHuCapCVu] [char](4) NULL,
	[Thang] [char](10) NULL,
	[Nam] [char](19) NULL,
	[SoNgayCongThang] [int] NULL,
	[SoNgayNghi] [int] NULL,
	[SoGioLamThem] [int] NULL,
	[GhiChu] [nvarchar](50) NULL,
	[MaPhong] [char](10) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblCongKhoiVanChuyen]    Script Date: 05/10/2021 8:54:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblCongKhoiVanChuyen](
	[MaNV] [char](10) NULL,
	[LCB] [int] NULL,
	[PhuCapCVu] [int] NULL,
	[PCapKhac] [int] NULL,
	[Thang] [char](10) NULL,
	[Nam] [char](19) NULL,
	[SoNgayCongThang] [int] NULL,
	[SoNgayNghi] [int] NULL,
	[SOGioLamThem] [int] NULL,
	[GhiChu] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblCongKhoiVanPHong]    Script Date: 05/10/2021 8:54:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblCongKhoiVanPHong](
	[MaNV] [char](10) NOT NULL,
	[LCB] [int] NULL,
	[PhuCapCVu] [char](4) NULL,
	[PhuCapKhac] [int] NULL,
	[Thang] [char](10) NULL,
	[Nam] [char](19) NULL,
	[SoNgayCongThang] [int] NULL,
	[SoNgayNghi] [int] NULL,
	[SoGioLamThem] [int] NULL,
	[GhiChu] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblHoSoThuViec]    Script Date: 05/10/2021 8:54:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblHoSoThuViec](
	[MaPhong] [char](10) NOT NULL,
	[MaNV] [char](10) NOT NULL,
	[HoTen] [nvarchar](50) NULL,
	[NgaySinh] [datetime] NULL,
	[GioiTinh] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[TDHocVan] [nvarchar](50) NULL,
	[HocHam] [nvarchar](50) NULL,
	[ViTriThuViec] [nvarchar](50) NULL,
	[NgayTV] [datetime] NULL,
	[ThangTV] [nvarchar](50) NULL,
	[GhiChu] [nvarchar](50) NULL,
 CONSTRAINT [PK_TblHeSoThuViec] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblPhongBan]    Script Date: 05/10/2021 8:54:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblPhongBan](
	[MaBoPhan] [char](10) NOT NULL,
	[MaPhong] [char](10) NOT NULL,
	[TenPhong] [nvarchar](50) NULL,
	[NgayTLap] [datetime] NULL,
	[GhiChu] [nvarchar](50) NULL,
 CONSTRAINT [PK_TblPhongBan] PRIMARY KEY CLUSTERED 
(
	[MaPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblSoBH]    Script Date: 05/10/2021 8:54:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblSoBH](
	[MaNV] [char](10) NOT NULL,
	[MaLuong] [char](10) NOT NULL,
	[MaSoBH] [char](10) NOT NULL,
	[NgayCapSo] [datetime] NULL,
	[NoiCapSo] [nvarchar](50) NULL,
	[GhiChu] [nvarchar](50) NULL,
 CONSTRAINT [PK_TblSoBH] PRIMARY KEY CLUSTERED 
(
	[MaSoBH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblTangLuong]    Script Date: 05/10/2021 8:54:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblTangLuong](
	[MaNV] [char](10) NULL,
	[HoTen] [nvarchar](30) NULL,
	[GioiTinh] [nvarchar](3) NULL,
	[ChucVu] [nvarchar](50) NULL,
	[ChucDanh] [nvarchar](50) NULL,
	[LCBCu] [int] NULL,
	[LCBMoi] [int] NULL,
	[PCapCu] [int] NULL,
	[PcapMoi] [int] NULL,
	[NgayTang] [datetime] NULL,
	[LyDo] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblTTCaNhan]    Script Date: 05/10/2021 8:54:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblTTCaNhan](
	[MaNV] [char](10) NULL,
	[NoiSinh] [nvarchar](50) NULL,
	[NguyenQuan] [nvarchar](50) NULL,
	[DCThuongChu] [nvarchar](100) NULL,
	[DCTamChu] [nvarchar](100) NULL,
	[SDT] [char](12) NULL,
	[DanToc] [nvarchar](30) NULL,
	[TonGiao] [nvarchar](20) NULL,
	[QuocTich] [nvarchar](20) NULL,
	[TiengNN] [nvarchar](50) NULL,
	[TrinhDoNN] [nvarchar](50) NULL,
	[HocVan] [nvarchar](30) NULL,
	[HocHam] [nvarchar](30) NULL,
	[NgayVaoDoan] [datetime] NULL,
	[TenDoanThe] [nvarchar](50) NULL,
	[ChucVuDoan] [nvarchar](50) NULL,
	[GhiChu] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblTTNVCoBan]    Script Date: 05/10/2021 8:54:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblTTNVCoBan](
	[MaBoPhan] [char](10) NOT NULL,
	[MaPhong] [char](10) NOT NULL,
	[MaNV] [char](10) NOT NULL,
	[HoTen] [nvarchar](30) NULL,
	[BiDanh] [nvarchar](30) NULL,
	[NgaySinh] [datetime] NULL,
	[GioiTinh] [nvarchar](3) NULL,
	[TTHonNhan] [nvarchar](50) NULL,
	[CMTND] [char](12) NULL,
	[NgayCap] [datetime] NULL,
	[NoiCap] [nvarchar](50) NULL,
	[ChucVu] [nvarchar](50) NULL,
	[ChucDanh] [nvarchar](50) NULL,
	[LoaiHD] [nvarchar](50) NULL,
	[ThoiGian] [nvarchar](10) NULL,
	[NgayKy] [datetime] NULL,
	[NgayHetHan] [datetime] NULL,
	[Anh] [char](100) NULL,
	[GhiChu] [nvarchar](100) NULL,
 CONSTRAINT [PK_TblTTNVCoBan] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblThaiSan]    Script Date: 05/10/2021 8:54:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblThaiSan](
	[MaBoPhan] [char](10) NOT NULL,
	[MaPhong] [char](10) NOT NULL,
	[MaNV] [char](10) NOT NULL,
	[HoTen] [nvarchar](50) NULL,
	[NgaySinh] [datetime] NULL,
	[NgayVeSom] [datetime] NULL,
	[NgayNghiSinh] [datetime] NULL,
	[NgayLamTroLai] [datetime] NULL,
	[TroCapCTY] [int] NULL,
	[GhiChu] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbuser]    Script Date: 05/10/2021 8:54:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbuser](
	[Username] [nvarchar](50) NOT NULL,
	[Pass] [nvarchar](50) NULL,
	[Ten] [nvarchar](50) NULL,
	[Ngaysinh] [datetime] NULL,
 CONSTRAINT [PK_tbuser] PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[TblBangCongThuViec] ([TenBoPhan], [TenPhong], [MaNV], [LuongTViec], [Thang], [Nam], [SoNgayCong], [SoNgayNghi], [SoGioLamThem], [GhiChu]) VALUES (N'taichinh', N'tai chinh', N'001       ', 2000000, N'12        ', N'2008      ', 28, 3, 8, N'keke')
INSERT [dbo].[TblBangCongThuViec] ([TenBoPhan], [TenPhong], [MaNV], [LuongTViec], [Thang], [Nam], [SoNgayCong], [SoNgayNghi], [SoGioLamThem], [GhiChu]) VALUES (N'taichinh', N'tai chinh', N'002       ', 2000000, N'12        ', N'2008      ', 28, 3, 8, N'keke')
INSERT [dbo].[TblBangCongThuViec] ([TenBoPhan], [TenPhong], [MaNV], [LuongTViec], [Thang], [Nam], [SoNgayCong], [SoNgayNghi], [SoGioLamThem], [GhiChu]) VALUES (N'ke toan', N'ke toan', N'003       ', 2000000, N'12        ', N'2008      ', 29, 2, 6, N'thanh cong')
INSERT [dbo].[TblBangCongThuViec] ([TenBoPhan], [TenPhong], [MaNV], [LuongTViec], [Thang], [Nam], [SoNgayCong], [SoNgayNghi], [SoGioLamThem], [GhiChu]) VALUES (N'vat tu', N'vat tu', N'004       ', 2000000, N'12        ', N'2008      ', 29, 2, 5, N'keke')
INSERT [dbo].[TblBangCongThuViec] ([TenBoPhan], [TenPhong], [MaNV], [LuongTViec], [Thang], [Nam], [SoNgayCong], [SoNgayNghi], [SoGioLamThem], [GhiChu]) VALUES (N'vat tu', N'vat tu', N'012       ', 2000000, N'12        ', N'2008      ', 29, 2, 5, N'keke')
INSERT [dbo].[TblBangCongThuViec] ([TenBoPhan], [TenPhong], [MaNV], [LuongTViec], [Thang], [Nam], [SoNgayCong], [SoNgayNghi], [SoGioLamThem], [GhiChu]) VALUES (N'vat tu', N'vat tu', N'07        ', 2000000, N'12        ', N'2008      ', 29, 2, 5, N'keke')
INSERT [dbo].[TblBangCongThuViec] ([TenBoPhan], [TenPhong], [MaNV], [LuongTViec], [Thang], [Nam], [SoNgayCong], [SoNgayNghi], [SoGioLamThem], [GhiChu]) VALUES (N'vat tu', N'vat tu', N'011       ', 2000000, N'12        ', N'2008      ', 29, 2, 5, N'PHONG VAT TU HIEN NAY LA DANG  THIEU ')
INSERT [dbo].[TblBangCongThuViec] ([TenBoPhan], [TenPhong], [MaNV], [LuongTViec], [Thang], [Nam], [SoNgayCong], [SoNgayNghi], [SoGioLamThem], [GhiChu]) VALUES (N'taichinh', N'tai chinh', N'015       ', 2000000, N'12        ', N'2008      ', 28, 3, 8, N'keke')
INSERT [dbo].[TblBangCongThuViec] ([TenBoPhan], [TenPhong], [MaNV], [LuongTViec], [Thang], [Nam], [SoNgayCong], [SoNgayNghi], [SoGioLamThem], [GhiChu]) VALUES (N'vat tu', N'vat tu', N'010       ', 2000000, N'12        ', N'2008      ', 29, 2, 5, N'keke')
INSERT [dbo].[TblBangCongThuViec] ([TenBoPhan], [TenPhong], [MaNV], [LuongTViec], [Thang], [Nam], [SoNgayCong], [SoNgayNghi], [SoGioLamThem], [GhiChu]) VALUES (N'vat tu', N'vat tu', N'05        ', 2000000, N'12        ', N'2008      ', 29, 2, 5, N'PHONG VAT TU HIEN NAY LA DANG  THIEU ')
INSERT [dbo].[TblBangCongThuViec] ([TenBoPhan], [TenPhong], [MaNV], [LuongTViec], [Thang], [Nam], [SoNgayCong], [SoNgayNghi], [SoGioLamThem], [GhiChu]) VALUES (N'vat tu', N'vat tu', N'0030      ', 2000000, N'12        ', N'2008      ', 29, 2, 5, N'PHONG VAT TU HIEN NAY LA DANG  THIEU ')
INSERT [dbo].[TblBangCongThuViec] ([TenBoPhan], [TenPhong], [MaNV], [LuongTViec], [Thang], [Nam], [SoNgayCong], [SoNgayNghi], [SoGioLamThem], [GhiChu]) VALUES (N'vat tu', N'vat tu', N'014       ', 2000000, N'12        ', N'2008      ', 29, 2, 5, N'keke')
INSERT [dbo].[TblBangCongThuViec] ([TenBoPhan], [TenPhong], [MaNV], [LuongTViec], [Thang], [Nam], [SoNgayCong], [SoNgayNghi], [SoGioLamThem], [GhiChu]) VALUES (N'taichinh', N'tai chinh', N'009       ', 2000000, N'12        ', N'2008      ', 28, 3, 8, N'keke')
GO
INSERT [dbo].[TblBangLuongCTy] ([MaLuong], [ChucVu], [ChucDanh], [LCB], [PCChucVu], [NgayNhap], [LCBMoi], [NgaySua], [LyDo], [PCCVuMoi], [NgaySuaPC], [GhiChu]) VALUES (N'ml01      ', N'CB ke hoach', N'Cb ke hoach', 1500000, 200, CAST(N'2009-05-06T00:00:00.000' AS DateTime), 2000000, CAST(N'2009-07-08T00:00:00.000' AS DateTime), N'hoan thanh nvu', 250, CAST(N'2009-07-09T00:00:00.000' AS DateTime), N'hay ra phet')
INSERT [dbo].[TblBangLuongCTy] ([MaLuong], [ChucVu], [ChucDanh], [LCB], [PCChucVu], [NgayNhap], [LCBMoi], [NgaySua], [LyDo], [PCCVuMoi], [NgaySuaPC], [GhiChu]) VALUES (N'ml010     ', N'Cb dien toan', N'Cb dien toan', 1500000, 200, CAST(N'2009-05-06T00:00:00.000' AS DateTime), 2000000, CAST(N'2009-07-08T00:00:00.000' AS DateTime), N'hoan thanh nvu', 250, CAST(N'2009-07-09T00:00:00.000' AS DateTime), N'herjukj')
INSERT [dbo].[TblBangLuongCTy] ([MaLuong], [ChucVu], [ChucDanh], [LCB], [PCChucVu], [NgayNhap], [LCBMoi], [NgaySua], [LyDo], [PCCVuMoi], [NgaySuaPC], [GhiChu]) VALUES (N'ml0100    ', N'CB ke hoach', N'Cb ke hoach', 1500000, 200, CAST(N'2009-06-05T00:00:00.000' AS DateTime), 2000000, CAST(N'2009-08-07T00:00:00.000' AS DateTime), N'hoan thanh nvu', 250, CAST(N'2009-09-07T00:00:00.000' AS DateTime), N'hay ra phet')
INSERT [dbo].[TblBangLuongCTy] ([MaLuong], [ChucVu], [ChucDanh], [LCB], [PCChucVu], [NgayNhap], [LCBMoi], [NgaySua], [LyDo], [PCCVuMoi], [NgaySuaPC], [GhiChu]) VALUES (N'ml011     ', N'CB ke hoach', N'Cb ke hoach', 1500000, 200, CAST(N'2009-06-05T00:00:00.000' AS DateTime), 2000000, CAST(N'2009-08-07T00:00:00.000' AS DateTime), N'hoan thanh nvu', 250, CAST(N'2009-12-23T00:00:00.000' AS DateTime), N'hay ra phet')
INSERT [dbo].[TblBangLuongCTy] ([MaLuong], [ChucVu], [ChucDanh], [LCB], [PCChucVu], [NgayNhap], [LCBMoi], [NgaySua], [LyDo], [PCCVuMoi], [NgaySuaPC], [GhiChu]) VALUES (N'ml012     ', N'Nhan vien', N'nhan vien', 1500000, 200, CAST(N'2009-05-06T00:00:00.000' AS DateTime), 2000000, CAST(N'2009-07-08T00:00:00.000' AS DateTime), N'hoan thanh nvu', 250, CAST(N'2009-07-09T00:00:00.000' AS DateTime), N'ghjhff')
INSERT [dbo].[TblBangLuongCTy] ([MaLuong], [ChucVu], [ChucDanh], [LCB], [PCChucVu], [NgayNhap], [LCBMoi], [NgaySua], [LyDo], [PCCVuMoi], [NgaySuaPC], [GhiChu]) VALUES (N'ml013     ', N'lai xe', N'lai xe', 1500000, 200, CAST(N'2009-05-06T00:00:00.000' AS DateTime), 1800000, CAST(N'2009-07-08T00:00:00.000' AS DateTime), N'hoan thanh nvu', 250, CAST(N'2009-07-09T00:00:00.000' AS DateTime), N'hfdsgh')
INSERT [dbo].[TblBangLuongCTy] ([MaLuong], [ChucVu], [ChucDanh], [LCB], [PCChucVu], [NgayNhap], [LCBMoi], [NgaySua], [LyDo], [PCCVuMoi], [NgaySuaPC], [GhiChu]) VALUES (N'ml014     ', N'nhan vien', N'nhan vien', 1800000, 200, CAST(N'2009-05-06T00:00:00.000' AS DateTime), 2000000, CAST(N'2009-07-08T00:00:00.000' AS DateTime), N'hoan thanh nvu', 260, CAST(N'2009-07-09T00:00:00.000' AS DateTime), N'hfgfdsd')
INSERT [dbo].[TblBangLuongCTy] ([MaLuong], [ChucVu], [ChucDanh], [LCB], [PCChucVu], [NgayNhap], [LCBMoi], [NgaySua], [LyDo], [PCCVuMoi], [NgaySuaPC], [GhiChu]) VALUES (N'ml015     ', N'nhan vien', N'nhan vien', 2000000, 250, CAST(N'2009-05-06T00:00:00.000' AS DateTime), 2500000, CAST(N'2009-07-08T00:00:00.000' AS DateTime), N'hoan thanh nvu', 300, CAST(N'2009-07-09T00:00:00.000' AS DateTime), N'dfssdfsd')
INSERT [dbo].[TblBangLuongCTy] ([MaLuong], [ChucVu], [ChucDanh], [LCB], [PCChucVu], [NgayNhap], [LCBMoi], [NgaySua], [LyDo], [PCCVuMoi], [NgaySuaPC], [GhiChu]) VALUES (N'ml02      ', N'can bo', N'can bo', 2000000, 300, CAST(N'2009-05-06T00:00:00.000' AS DateTime), 2500000, CAST(N'2009-07-08T00:00:00.000' AS DateTime), N'hoan thanhke hoach', 500, CAST(N'2009-07-09T00:00:00.000' AS DateTime), N'tang luong')
INSERT [dbo].[TblBangLuongCTy] ([MaLuong], [ChucVu], [ChucDanh], [LCB], [PCChucVu], [NgayNhap], [LCBMoi], [NgaySua], [LyDo], [PCCVuMoi], [NgaySuaPC], [GhiChu]) VALUES (N'ml03      ', N'thu ky', N'thu ki giamdoc', 1800000, 200, CAST(N'2009-05-06T00:00:00.000' AS DateTime), 2000000, CAST(N'2009-07-08T00:00:00.000' AS DateTime), N'hoan thanh nvu', 200, CAST(N'2009-07-09T00:00:00.000' AS DateTime), N'tang uong')
INSERT [dbo].[TblBangLuongCTy] ([MaLuong], [ChucVu], [ChucDanh], [LCB], [PCChucVu], [NgayNhap], [LCBMoi], [NgaySua], [LyDo], [PCCVuMoi], [NgaySuaPC], [GhiChu]) VALUES (N'ml04      ', N'nhan vien', N'nhan vien', 1500000, 200, CAST(N'2009-05-06T00:00:00.000' AS DateTime), 2000000, CAST(N'2009-07-08T00:00:00.000' AS DateTime), N'hoanh thanh nvu', 250, CAST(N'2009-07-09T00:00:00.000' AS DateTime), N'tang luong')
INSERT [dbo].[TblBangLuongCTy] ([MaLuong], [ChucVu], [ChucDanh], [LCB], [PCChucVu], [NgayNhap], [LCBMoi], [NgaySua], [LyDo], [PCCVuMoi], [NgaySuaPC], [GhiChu]) VALUES (N'ml05      ', N'CB ke toan', N'Cb ke toan', 1500000, 200, CAST(N'2009-05-06T00:00:00.000' AS DateTime), 2000000, CAST(N'2009-07-08T00:00:00.000' AS DateTime), N'hoan thanh nvu', 250, CAST(N'2009-07-09T00:00:00.000' AS DateTime), N'ytyrttr')
INSERT [dbo].[TblBangLuongCTy] ([MaLuong], [ChucVu], [ChucDanh], [LCB], [PCChucVu], [NgayNhap], [LCBMoi], [NgaySua], [LyDo], [PCCVuMoi], [NgaySuaPC], [GhiChu]) VALUES (N'ml06      ', N'pho G.doc', N'pho g.doc', 2500000, 300, CAST(N'2009-05-06T00:00:00.000' AS DateTime), 3000000, CAST(N'2009-07-08T00:00:00.000' AS DateTime), N'hoan thanh nvu', 350, CAST(N'2009-07-09T00:00:00.000' AS DateTime), N'hbggdd')
INSERT [dbo].[TblBangLuongCTy] ([MaLuong], [ChucVu], [ChucDanh], [LCB], [PCChucVu], [NgayNhap], [LCBMoi], [NgaySua], [LyDo], [PCCVuMoi], [NgaySuaPC], [GhiChu]) VALUES (N'ml07      ', N'giam doc', N'giam doc', 3000000, 350, CAST(N'2009-05-06T00:00:00.000' AS DateTime), 3500000, CAST(N'2009-07-08T00:00:00.000' AS DateTime), N'hoan thanh nhiem vu', 400, CAST(N'2009-07-09T00:00:00.000' AS DateTime), N'heere')
INSERT [dbo].[TblBangLuongCTy] ([MaLuong], [ChucVu], [ChucDanh], [LCB], [PCChucVu], [NgayNhap], [LCBMoi], [NgaySua], [LyDo], [PCCVuMoi], [NgaySuaPC], [GhiChu]) VALUES (N'ml08      ', N'nhan vien', N'nhan vien', 1800000, 200, CAST(N'2009-05-06T00:00:00.000' AS DateTime), 2000000, CAST(N'2009-07-08T00:00:00.000' AS DateTime), N'hoan thanh nvu', 250, CAST(N'2009-07-09T00:00:00.000' AS DateTime), N'nfsergh')
INSERT [dbo].[TblBangLuongCTy] ([MaLuong], [ChucVu], [ChucDanh], [LCB], [PCChucVu], [NgayNhap], [LCBMoi], [NgaySua], [LyDo], [PCCVuMoi], [NgaySuaPC], [GhiChu]) VALUES (N'ml09      ', N'nhan vien', N'nhan vien', 1500000, 200, CAST(N'2009-05-06T00:00:00.000' AS DateTime), 2000000, CAST(N'2009-07-08T00:00:00.000' AS DateTime), N'hoan thanh nvu', 250, CAST(N'2009-07-09T00:00:00.000' AS DateTime), N'jrttghh')
GO
INSERT [dbo].[TblBoPhan] ([MaBophan], [TenBoPhan], [GhiChu]) VALUES (N'm010      ', N'kinh doanh ', N'krorjkrl')
INSERT [dbo].[TblBoPhan] ([MaBophan], [TenBoPhan], [GhiChu]) VALUES (N'm011      ', N'kinh doanh', N'iwejewe')
INSERT [dbo].[TblBoPhan] ([MaBophan], [TenBoPhan], [GhiChu]) VALUES (N'm012      ', N'ke toan ', N'rgrgdf')
INSERT [dbo].[TblBoPhan] ([MaBophan], [TenBoPhan], [GhiChu]) VALUES (N'm013      ', N'kinh doanh', N'fwfewew')
INSERT [dbo].[TblBoPhan] ([MaBophan], [TenBoPhan], [GhiChu]) VALUES (N'm014      ', N'ke toan', N'ggdfvds')
INSERT [dbo].[TblBoPhan] ([MaBophan], [TenBoPhan], [GhiChu]) VALUES (N'm015      ', N'ke toan', N'phòng kế toán')
INSERT [dbo].[TblBoPhan] ([MaBophan], [TenBoPhan], [GhiChu]) VALUES (N'm020      ', N'ke toan ', N'ke toan ')
INSERT [dbo].[TblBoPhan] ([MaBophan], [TenBoPhan], [GhiChu]) VALUES (N'mb01      ', N'kinh doanh', N'hoạt động kinh doanh')
INSERT [dbo].[TblBoPhan] ([MaBophan], [TenBoPhan], [GhiChu]) VALUES (N'mb010     ', N'kinh doanh', N'kinh doanh')
INSERT [dbo].[TblBoPhan] ([MaBophan], [TenBoPhan], [GhiChu]) VALUES (N'mb02      ', N'tài chính', N'hoạt độn tài chính')
INSERT [dbo].[TblBoPhan] ([MaBophan], [TenBoPhan], [GhiChu]) VALUES (N'mb03      ', N'kế toán', N'hoạt động kế toán')
INSERT [dbo].[TblBoPhan] ([MaBophan], [TenBoPhan], [GhiChu]) VALUES (N'mb04      ', N'vật tư', N'hoạt động vật tư')
INSERT [dbo].[TblBoPhan] ([MaBophan], [TenBoPhan], [GhiChu]) VALUES (N'mb05      ', N'ke toan', N'hoat dong ke toan')
INSERT [dbo].[TblBoPhan] ([MaBophan], [TenBoPhan], [GhiChu]) VALUES (N'mb06      ', N'kinh doanh', N'hoat dong kinh dong')
INSERT [dbo].[TblBoPhan] ([MaBophan], [TenBoPhan], [GhiChu]) VALUES (N'mb07      ', N'kinh doanh', N'hoat dong kinh doang')
INSERT [dbo].[TblBoPhan] ([MaBophan], [TenBoPhan], [GhiChu]) VALUES (N'mb08      ', N'tai chinh', N'quan ly tien luong')
GO
INSERT [dbo].[TblCongKhoiDieuHanh] ([MaNV], [LCB], [PhuCapCVu], [PHuCapKhac], [Thang], [Nam], [SoNgayCongThang], [SoNgayNghi], [SoGioLamThem], [GhiChu]) VALUES (N'001       ', 1500000, N'200 ', 150, N'12        ', N'2008               ', 4, 2, 5, N'ghddfd')
INSERT [dbo].[TblCongKhoiDieuHanh] ([MaNV], [LCB], [PhuCapCVu], [PHuCapKhac], [Thang], [Nam], [SoNgayCongThang], [SoNgayNghi], [SoGioLamThem], [GhiChu]) VALUES (N'002       ', 2000000, N'300 ', 200, N'12        ', N'2008               ', 5, 1, 7, N'hjjggj')
INSERT [dbo].[TblCongKhoiDieuHanh] ([MaNV], [LCB], [PhuCapCVu], [PHuCapKhac], [Thang], [Nam], [SoNgayCongThang], [SoNgayNghi], [SoGioLamThem], [GhiChu]) VALUES (N'003       ', 1800000, N'250 ', 200, N'12        ', N'2008               ', 5, 1, 6, N'ghgghhg')
INSERT [dbo].[TblCongKhoiDieuHanh] ([MaNV], [LCB], [PhuCapCVu], [PHuCapKhac], [Thang], [Nam], [SoNgayCongThang], [SoNgayNghi], [SoGioLamThem], [GhiChu]) VALUES (N'004       ', 2000000, N'200 ', 100, N'12        ', N'2008               ', 4, 2, 4, N'keke')
INSERT [dbo].[TblCongKhoiDieuHanh] ([MaNV], [LCB], [PhuCapCVu], [PHuCapKhac], [Thang], [Nam], [SoNgayCongThang], [SoNgayNghi], [SoGioLamThem], [GhiChu]) VALUES (N'005       ', 1500000, N'200 ', 100, N'12        ', N'2008               ', 4, 2, 3, N'fgnhhm')
INSERT [dbo].[TblCongKhoiDieuHanh] ([MaNV], [LCB], [PhuCapCVu], [PHuCapKhac], [Thang], [Nam], [SoNgayCongThang], [SoNgayNghi], [SoGioLamThem], [GhiChu]) VALUES (N'006       ', 1500000, N'200 ', 100, N'12        ', N'2008               ', 4, 1, 6, N'yjjjty')
INSERT [dbo].[TblCongKhoiDieuHanh] ([MaNV], [LCB], [PhuCapCVu], [PHuCapKhac], [Thang], [Nam], [SoNgayCongThang], [SoNgayNghi], [SoGioLamThem], [GhiChu]) VALUES (N'007       ', 1500000, N'300 ', 200, N'5         ', N'2009               ', 8, 1, 8, N'grerrt')
INSERT [dbo].[TblCongKhoiDieuHanh] ([MaNV], [LCB], [PhuCapCVu], [PHuCapKhac], [Thang], [Nam], [SoNgayCongThang], [SoNgayNghi], [SoGioLamThem], [GhiChu]) VALUES (N'008       ', 1800000, N'250 ', 200, N'5         ', N'2009               ', 6, 3, 7, N'hrtre')
INSERT [dbo].[TblCongKhoiDieuHanh] ([MaNV], [LCB], [PhuCapCVu], [PHuCapKhac], [Thang], [Nam], [SoNgayCongThang], [SoNgayNghi], [SoGioLamThem], [GhiChu]) VALUES (N'009       ', 1800000, N'200 ', 100, N'5         ', N'2009               ', 4, 2, 7, N'ttutrtre')
INSERT [dbo].[TblCongKhoiDieuHanh] ([MaNV], [LCB], [PhuCapCVu], [PHuCapKhac], [Thang], [Nam], [SoNgayCongThang], [SoNgayNghi], [SoGioLamThem], [GhiChu]) VALUES (N'0010      ', 2500000, N'300 ', 300, N'5         ', N'2009               ', 6, 2, 8, N'htt')
INSERT [dbo].[TblCongKhoiDieuHanh] ([MaNV], [LCB], [PhuCapCVu], [PHuCapKhac], [Thang], [Nam], [SoNgayCongThang], [SoNgayNghi], [SoGioLamThem], [GhiChu]) VALUES (N'0011      ', 2500000, N'300 ', 200, N'5         ', N'2009               ', 5, 2, 6, N'tett')
INSERT [dbo].[TblCongKhoiDieuHanh] ([MaNV], [LCB], [PhuCapCVu], [PHuCapKhac], [Thang], [Nam], [SoNgayCongThang], [SoNgayNghi], [SoGioLamThem], [GhiChu]) VALUES (N'0012      ', 3000000, N'400 ', 100, N'5         ', N'2009               ', 6, 3, 8, N'ytrer')
INSERT [dbo].[TblCongKhoiDieuHanh] ([MaNV], [LCB], [PhuCapCVu], [PHuCapKhac], [Thang], [Nam], [SoNgayCongThang], [SoNgayNghi], [SoGioLamThem], [GhiChu]) VALUES (N'0013      ', 2000000, N'200 ', 100, N'5         ', N'2009               ', 5, 3, 6, N'jtyrt')
INSERT [dbo].[TblCongKhoiDieuHanh] ([MaNV], [LCB], [PhuCapCVu], [PHuCapKhac], [Thang], [Nam], [SoNgayCongThang], [SoNgayNghi], [SoGioLamThem], [GhiChu]) VALUES (N'0014      ', 1800000, N'100 ', 100, N'5         ', N'2009               ', 4, 2, 6, N'rrtrt')
INSERT [dbo].[TblCongKhoiDieuHanh] ([MaNV], [LCB], [PhuCapCVu], [PHuCapKhac], [Thang], [Nam], [SoNgayCongThang], [SoNgayNghi], [SoGioLamThem], [GhiChu]) VALUES (N'0015      ', 1800000, N'200 ', 150, N'5         ', N'2009               ', 5, 3, 5, N'trtre')
INSERT [dbo].[TblCongKhoiDieuHanh] ([MaNV], [LCB], [PhuCapCVu], [PHuCapKhac], [Thang], [Nam], [SoNgayCongThang], [SoNgayNghi], [SoGioLamThem], [GhiChu]) VALUES (N'0016      ', 1800000, N'200 ', 150, N'5         ', N'2009               ', 5, 3, 5, N'trtre')
INSERT [dbo].[TblCongKhoiDieuHanh] ([MaNV], [LCB], [PhuCapCVu], [PHuCapKhac], [Thang], [Nam], [SoNgayCongThang], [SoNgayNghi], [SoGioLamThem], [GhiChu]) VALUES (N'0090      ', 1800000, N'200 ', 150, N'5         ', N'2009               ', 5, 3, 5, N'trtre')
INSERT [dbo].[TblCongKhoiDieuHanh] ([MaNV], [LCB], [PhuCapCVu], [PHuCapKhac], [Thang], [Nam], [SoNgayCongThang], [SoNgayNghi], [SoGioLamThem], [GhiChu]) VALUES (N'0017      ', 2000000, N'200 ', 100, N'5         ', N'2009               ', 5, 3, 6, N'jtyrt')
GO
INSERT [dbo].[TblCongKhoiSanXuat] ([MaNV], [LCB], [PHuCapCVu], [Thang], [Nam], [SoNgayCongThang], [SoNgayNghi], [SoGioLamThem], [GhiChu], [MaPhong]) VALUES (N'001       ', 1500000, N'200 ', N'12        ', N'2008               ', 4, 2, 5, N'gfgtyrt', N'mp01      ')
INSERT [dbo].[TblCongKhoiSanXuat] ([MaNV], [LCB], [PHuCapCVu], [Thang], [Nam], [SoNgayCongThang], [SoNgayNghi], [SoGioLamThem], [GhiChu], [MaPhong]) VALUES (N'002       ', 2000000, N'300 ', N'12        ', N'2008               ', 5, 1, 7, N'keke', N'mp02      ')
INSERT [dbo].[TblCongKhoiSanXuat] ([MaNV], [LCB], [PHuCapCVu], [Thang], [Nam], [SoNgayCongThang], [SoNgayNghi], [SoGioLamThem], [GhiChu], [MaPhong]) VALUES (N'003       ', 1800000, N'250 ', N'12        ', N'2008               ', 5, 1, 6, N'bhgff', N'mp03      ')
INSERT [dbo].[TblCongKhoiSanXuat] ([MaNV], [LCB], [PHuCapCVu], [Thang], [Nam], [SoNgayCongThang], [SoNgayNghi], [SoGioLamThem], [GhiChu], [MaPhong]) VALUES (N'004       ', 1800000, N'250 ', N'12        ', N'2008               ', 4, 2, 6, N'jghgg', N'mp04      ')
INSERT [dbo].[TblCongKhoiSanXuat] ([MaNV], [LCB], [PHuCapCVu], [Thang], [Nam], [SoNgayCongThang], [SoNgayNghi], [SoGioLamThem], [GhiChu], [MaPhong]) VALUES (N'0023      ', 2000000, N'300 ', N'12        ', N'2008               ', 5, 1, 7, N'keke', N'mp02      ')
INSERT [dbo].[TblCongKhoiSanXuat] ([MaNV], [LCB], [PHuCapCVu], [Thang], [Nam], [SoNgayCongThang], [SoNgayNghi], [SoGioLamThem], [GhiChu], [MaPhong]) VALUES (N'005       ', 2000000, N'300 ', N'12        ', N'2008               ', 5, 1, 7, N'keke', N'mp02      ')
INSERT [dbo].[TblCongKhoiSanXuat] ([MaNV], [LCB], [PHuCapCVu], [Thang], [Nam], [SoNgayCongThang], [SoNgayNghi], [SoGioLamThem], [GhiChu], [MaPhong]) VALUES (N'0090      ', 2000000, N'300 ', N'12        ', N'2008               ', 5, 1, 7, N'keke', N'mp02      ')
GO
INSERT [dbo].[TblCongKhoiVanChuyen] ([MaNV], [LCB], [PhuCapCVu], [PCapKhac], [Thang], [Nam], [SoNgayCongThang], [SoNgayNghi], [SOGioLamThem], [GhiChu]) VALUES (N'0016      ', 3000000, 400, 100, N'5         ', N'2009               ', 6, 3, 8, N'hjhjgh')
INSERT [dbo].[TblCongKhoiVanChuyen] ([MaNV], [LCB], [PhuCapCVu], [PCapKhac], [Thang], [Nam], [SoNgayCongThang], [SoNgayNghi], [SOGioLamThem], [GhiChu]) VALUES (N'003       ', 1800000, 250, 200, N'12        ', N'2008               ', 5, 1, 6, N'fdfdd')
INSERT [dbo].[TblCongKhoiVanChuyen] ([MaNV], [LCB], [PhuCapCVu], [PCapKhac], [Thang], [Nam], [SoNgayCongThang], [SoNgayNghi], [SOGioLamThem], [GhiChu]) VALUES (N'004       ', 1500000, 200, 100, N'12        ', N'2008               ', 6, 3, 6, N'thanh cong')
INSERT [dbo].[TblCongKhoiVanChuyen] ([MaNV], [LCB], [PhuCapCVu], [PCapKhac], [Thang], [Nam], [SoNgayCongThang], [SoNgayNghi], [SOGioLamThem], [GhiChu]) VALUES (N'005       ', 1500000, 200, 100, N'12        ', N'2008               ', 4, 2, 5, N'jhjk')
INSERT [dbo].[TblCongKhoiVanChuyen] ([MaNV], [LCB], [PhuCapCVu], [PCapKhac], [Thang], [Nam], [SoNgayCongThang], [SoNgayNghi], [SOGioLamThem], [GhiChu]) VALUES (N'006       ', 1500000, 200, 150, N'12        ', N'2008               ', 4, 1, 6, N'ghhgh')
INSERT [dbo].[TblCongKhoiVanChuyen] ([MaNV], [LCB], [PhuCapCVu], [PCapKhac], [Thang], [Nam], [SoNgayCongThang], [SoNgayNghi], [SOGioLamThem], [GhiChu]) VALUES (N'007       ', 1500000, 300, 200, N'5         ', N'2009               ', 8, 1, 6, N'fgggh')
INSERT [dbo].[TblCongKhoiVanChuyen] ([MaNV], [LCB], [PhuCapCVu], [PCapKhac], [Thang], [Nam], [SoNgayCongThang], [SoNgayNghi], [SOGioLamThem], [GhiChu]) VALUES (N'008       ', 1800000, 250, 200, N'5         ', N'2009               ', 6, 3, 7, N'jjjiuhy')
INSERT [dbo].[TblCongKhoiVanChuyen] ([MaNV], [LCB], [PhuCapCVu], [PCapKhac], [Thang], [Nam], [SoNgayCongThang], [SoNgayNghi], [SOGioLamThem], [GhiChu]) VALUES (N'009       ', 1800000, 200, 100, N'5         ', N'2009               ', 4, 2, 7, N'jjkkhg')
INSERT [dbo].[TblCongKhoiVanChuyen] ([MaNV], [LCB], [PhuCapCVu], [PCapKhac], [Thang], [Nam], [SoNgayCongThang], [SoNgayNghi], [SOGioLamThem], [GhiChu]) VALUES (N'0010      ', 2500000, 300, 300, N'5         ', N'2009               ', 6, 2, 8, N'hjkk')
INSERT [dbo].[TblCongKhoiVanChuyen] ([MaNV], [LCB], [PhuCapCVu], [PCapKhac], [Thang], [Nam], [SoNgayCongThang], [SoNgayNghi], [SOGioLamThem], [GhiChu]) VALUES (N'0011      ', 2500000, 300, 200, N'5         ', N'2009               ', 5, 2, 6, N'trhhj')
INSERT [dbo].[TblCongKhoiVanChuyen] ([MaNV], [LCB], [PhuCapCVu], [PCapKhac], [Thang], [Nam], [SoNgayCongThang], [SoNgayNghi], [SOGioLamThem], [GhiChu]) VALUES (N'0012      ', 3000000, 400, 100, N'5         ', N'2009               ', 6, 3, 8, N'hjhjgh')
INSERT [dbo].[TblCongKhoiVanChuyen] ([MaNV], [LCB], [PhuCapCVu], [PCapKhac], [Thang], [Nam], [SoNgayCongThang], [SoNgayNghi], [SOGioLamThem], [GhiChu]) VALUES (N'0013      ', 2000000, 250, 100, N'5         ', N'2009               ', 5, 3, 6, N'jkkgh')
INSERT [dbo].[TblCongKhoiVanChuyen] ([MaNV], [LCB], [PhuCapCVu], [PCapKhac], [Thang], [Nam], [SoNgayCongThang], [SoNgayNghi], [SOGioLamThem], [GhiChu]) VALUES (N'0014      ', 1800009, 250, 100, N'5         ', N'2009               ', 4, 2, 6, N'hmm')
INSERT [dbo].[TblCongKhoiVanChuyen] ([MaNV], [LCB], [PhuCapCVu], [PCapKhac], [Thang], [Nam], [SoNgayCongThang], [SoNgayNghi], [SOGioLamThem], [GhiChu]) VALUES (N'0015      ', 1800000, 200, 150, N'5         ', N'2009               ', 5, 3, 5, N'hhfb')
GO
INSERT [dbo].[TblCongKhoiVanPHong] ([MaNV], [LCB], [PhuCapCVu], [PhuCapKhac], [Thang], [Nam], [SoNgayCongThang], [SoNgayNghi], [SoGioLamThem], [GhiChu]) VALUES (N'001       ', 1500000, N'200 ', 150, N'12        ', N'2008               ', 4, 2, 5, N'hfdrs')
INSERT [dbo].[TblCongKhoiVanPHong] ([MaNV], [LCB], [PhuCapCVu], [PhuCapKhac], [Thang], [Nam], [SoNgayCongThang], [SoNgayNghi], [SoGioLamThem], [GhiChu]) VALUES (N'002       ', 2000000, N'300 ', 200, N'12        ', N'2008               ', 5, 1, 8, N'keke')
INSERT [dbo].[TblCongKhoiVanPHong] ([MaNV], [LCB], [PhuCapCVu], [PhuCapKhac], [Thang], [Nam], [SoNgayCongThang], [SoNgayNghi], [SoGioLamThem], [GhiChu]) VALUES (N'003       ', 2000000, N'250 ', 200, N'12        ', N'2008               ', 5, 1, 7, N'thanh cong')
INSERT [dbo].[TblCongKhoiVanPHong] ([MaNV], [LCB], [PhuCapCVu], [PhuCapKhac], [Thang], [Nam], [SoNgayCongThang], [SoNgayNghi], [SoGioLamThem], [GhiChu]) VALUES (N'004       ', 1800000, N'200 ', 100, N'12        ', N'2008               ', 4, 2, 6, N'vbcxxc')
INSERT [dbo].[TblCongKhoiVanPHong] ([MaNV], [LCB], [PhuCapCVu], [PhuCapKhac], [Thang], [Nam], [SoNgayCongThang], [SoNgayNghi], [SoGioLamThem], [GhiChu]) VALUES (N'005       ', 1500000, N'200 ', 100, N'12        ', N'2008               ', 6, 4, 4, N'fggfg')
INSERT [dbo].[TblCongKhoiVanPHong] ([MaNV], [LCB], [PhuCapCVu], [PhuCapKhac], [Thang], [Nam], [SoNgayCongThang], [SoNgayNghi], [SoGioLamThem], [GhiChu]) VALUES (N'006       ', 1500000, N'200 ', 150, N'12        ', N'2008               ', 4, 1, 6, N'gfdd')
INSERT [dbo].[TblCongKhoiVanPHong] ([MaNV], [LCB], [PhuCapCVu], [PhuCapKhac], [Thang], [Nam], [SoNgayCongThang], [SoNgayNghi], [SoGioLamThem], [GhiChu]) VALUES (N'007       ', 1500000, N'300 ', 200, N'5         ', N'2009               ', 8, 1, 8, N'gfghh')
INSERT [dbo].[TblCongKhoiVanPHong] ([MaNV], [LCB], [PhuCapCVu], [PhuCapKhac], [Thang], [Nam], [SoNgayCongThang], [SoNgayNghi], [SoGioLamThem], [GhiChu]) VALUES (N'008       ', 1800000, N'250 ', 200, N'5         ', N'2009               ', 6, 3, 7, N'ggfgg')
INSERT [dbo].[TblCongKhoiVanPHong] ([MaNV], [LCB], [PhuCapCVu], [PhuCapKhac], [Thang], [Nam], [SoNgayCongThang], [SoNgayNghi], [SoGioLamThem], [GhiChu]) VALUES (N'009       ', 1800000, N'200 ', 100, N'5         ', N'2009               ', 4, 2, 7, N'hnjgg')
INSERT [dbo].[TblCongKhoiVanPHong] ([MaNV], [LCB], [PhuCapCVu], [PhuCapKhac], [Thang], [Nam], [SoNgayCongThang], [SoNgayNghi], [SoGioLamThem], [GhiChu]) VALUES (N'0010      ', 2500000, N'300 ', 300, N'5         ', N'2009               ', 6, 2, 8, N'fhhgff')
INSERT [dbo].[TblCongKhoiVanPHong] ([MaNV], [LCB], [PhuCapCVu], [PhuCapKhac], [Thang], [Nam], [SoNgayCongThang], [SoNgayNghi], [SoGioLamThem], [GhiChu]) VALUES (N'0011      ', 2500000, N'300 ', 200, N'5         ', N'2009               ', 5, 2, 6, N'ggbb')
INSERT [dbo].[TblCongKhoiVanPHong] ([MaNV], [LCB], [PhuCapCVu], [PhuCapKhac], [Thang], [Nam], [SoNgayCongThang], [SoNgayNghi], [SoGioLamThem], [GhiChu]) VALUES (N'0012      ', 3000000, N'400 ', 100, N'5         ', N'2009               ', 6, 3, 8, N'ggggg')
INSERT [dbo].[TblCongKhoiVanPHong] ([MaNV], [LCB], [PhuCapCVu], [PhuCapKhac], [Thang], [Nam], [SoNgayCongThang], [SoNgayNghi], [SoGioLamThem], [GhiChu]) VALUES (N'0013      ', 2000000, N'200 ', 100, N'5         ', N'2009               ', 5, 3, 6, N'gvbnn')
INSERT [dbo].[TblCongKhoiVanPHong] ([MaNV], [LCB], [PhuCapCVu], [PhuCapKhac], [Thang], [Nam], [SoNgayCongThang], [SoNgayNghi], [SoGioLamThem], [GhiChu]) VALUES (N'0014      ', 1800009, N'250 ', 100, N'5         ', N'2009               ', 4, 2, 6, N'frhgnf')
INSERT [dbo].[TblCongKhoiVanPHong] ([MaNV], [LCB], [PhuCapCVu], [PhuCapKhac], [Thang], [Nam], [SoNgayCongThang], [SoNgayNghi], [SoGioLamThem], [GhiChu]) VALUES (N'0015      ', 1800000, N'200 ', 150, N'5         ', N'2009               ', 5, 3, 5, N'fgg')
GO
INSERT [dbo].[TblHoSoThuViec] ([MaPhong], [MaNV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [TDHocVan], [HocHam], [ViTriThuViec], [NgayTV], [ThangTV], [GhiChu]) VALUES (N'mp03      ', N'001       ', N'nguyen van a', CAST(N'1982-04-01T00:00:00.000' AS DateTime), N'nam', N' hai duong', N'dai hoc', N'dai hoc', N'nhan vien', CAST(N'2008-05-03T00:00:00.000' AS DateTime), N'5/2008', N'ddfdd')
INSERT [dbo].[TblHoSoThuViec] ([MaPhong], [MaNV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [TDHocVan], [HocHam], [ViTriThuViec], [NgayTV], [ThangTV], [GhiChu]) VALUES (N'mp03      ', N'0011      ', N'nguyen van a', CAST(N'1982-04-01T00:00:00.000' AS DateTime), N'nam', N' hai duong', N'dai hoc', N'dai hoc', N'nhan vien', CAST(N'2008-05-03T00:00:00.000' AS DateTime), N'5/2008', N'ddfdd')
INSERT [dbo].[TblHoSoThuViec] ([MaPhong], [MaNV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [TDHocVan], [HocHam], [ViTriThuViec], [NgayTV], [ThangTV], [GhiChu]) VALUES (N'mp02      ', N'002       ', N'nguyen thi b', CAST(N'1987-05-09T00:00:00.000' AS DateTime), N'nu', N'hung yen', N'caodang', N'cao dang', N'nhan vien', CAST(N'2008-05-08T00:00:00.000' AS DateTime), N'8/2008', N'hgserww')
INSERT [dbo].[TblHoSoThuViec] ([MaPhong], [MaNV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [TDHocVan], [HocHam], [ViTriThuViec], [NgayTV], [ThangTV], [GhiChu]) VALUES (N'mp03      ', N'003       ', N'ngyuen thi t', CAST(N'1987-04-06T00:00:00.000' AS DateTime), N'nu', N'ha nam', N'dai hoc', N'dai hoc ', N'nhan vien', CAST(N'2008-05-11T00:00:00.000' AS DateTime), N'11/2008', N'phòng này vui thiệt')
INSERT [dbo].[TblHoSoThuViec] ([MaPhong], [MaNV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [TDHocVan], [HocHam], [ViTriThuViec], [NgayTV], [ThangTV], [GhiChu]) VALUES (N'mp03      ', N'0030      ', N'ngyuen thi t', CAST(N'1987-06-04T00:00:00.000' AS DateTime), N'nu', N'ha nam', N'dai hoc', N'dai hoc ', N'nhan vien', CAST(N'2008-11-05T00:00:00.000' AS DateTime), N'11/2008', N'dkjddw')
INSERT [dbo].[TblHoSoThuViec] ([MaPhong], [MaNV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [TDHocVan], [HocHam], [ViTriThuViec], [NgayTV], [ThangTV], [GhiChu]) VALUES (N'mp04      ', N'004       ', N'tran van b', CAST(N'1985-06-08T00:00:00.000' AS DateTime), N'nam', N'hai duong', N'dai hoc', N'dai hoc', N'CB ketoan', CAST(N'2007-07-08T00:00:00.000' AS DateTime), N'8/2007', N'gtyyy')
INSERT [dbo].[TblHoSoThuViec] ([MaPhong], [MaNV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [TDHocVan], [HocHam], [ViTriThuViec], [NgayTV], [ThangTV], [GhiChu]) VALUES (N'mb08      ', N'008       ', N'nguyen thi quyen', CAST(N'1985-07-02T00:00:00.000' AS DateTime), N'nu', N'ninh binh', N'cao dang', N'caodang', N'To truong', CAST(N'2007-07-08T00:00:00.000' AS DateTime), N'8/2007', N'gsfbfd')
INSERT [dbo].[TblHoSoThuViec] ([MaPhong], [MaNV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [TDHocVan], [HocHam], [ViTriThuViec], [NgayTV], [ThangTV], [GhiChu]) VALUES (N'mb09      ', N'009       ', N'nguyen thi thuy', CAST(N'1986-06-04T00:00:00.000' AS DateTime), N'nu', N'ha noi', N'dai hoc', N'dai hoc', N'CB ke toan', CAST(N'2007-07-08T00:00:00.000' AS DateTime), N'8/2007', N'hjhgffd')
INSERT [dbo].[TblHoSoThuViec] ([MaPhong], [MaNV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [TDHocVan], [HocHam], [ViTriThuViec], [NgayTV], [ThangTV], [GhiChu]) VALUES (N'mb010     ', N'010       ', N'bui thi mai', CAST(N'1986-05-06T00:00:00.000' AS DateTime), N'nu', N'quang ninh', N'cao dang', N'cao dang', N'Cb ke toan', CAST(N'2008-05-08T00:00:00.000' AS DateTime), N'8/2008', N'hffgfd')
INSERT [dbo].[TblHoSoThuViec] ([MaPhong], [MaNV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [TDHocVan], [HocHam], [ViTriThuViec], [NgayTV], [ThangTV], [GhiChu]) VALUES (N'mb011     ', N'011       ', N'do van be', CAST(N'1983-06-09T00:00:00.000' AS DateTime), N'nam', N'thaibinh', N'trung cap', N'trung cap', N'lai xe', CAST(N'2009-09-09T00:00:00.000' AS DateTime), N'9/2009', N'gfnfhfbn')
INSERT [dbo].[TblHoSoThuViec] ([MaPhong], [MaNV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [TDHocVan], [HocHam], [ViTriThuViec], [NgayTV], [ThangTV], [GhiChu]) VALUES (N'mb012     ', N'012       ', N'le thi c', CAST(N'1986-04-07T00:00:00.000' AS DateTime), N'nu', N'hai duong', N'daihoc', N'nhan vien', N'nhan vien', CAST(N'2009-09-08T00:00:00.000' AS DateTime), N'9/2009', N'bdsvvs')
INSERT [dbo].[TblHoSoThuViec] ([MaPhong], [MaNV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [TDHocVan], [HocHam], [ViTriThuViec], [NgayTV], [ThangTV], [GhiChu]) VALUES (N'mb013     ', N'013       ', N'tran ngoc v', CAST(N'1981-06-02T00:00:00.000' AS DateTime), N'nu', N'ha nam', N'cao dang', N'nhan vien', N'nhan vien', CAST(N'2008-08-09T00:00:00.000' AS DateTime), N'8/2008', N'tgge')
INSERT [dbo].[TblHoSoThuViec] ([MaPhong], [MaNV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [TDHocVan], [HocHam], [ViTriThuViec], [NgayTV], [ThangTV], [GhiChu]) VALUES (N'mb014     ', N'014       ', N'nguyen thi d', CAST(N'1984-08-08T00:00:00.000' AS DateTime), N'nu', N'hai duong', N'daihoc', N'quan doc', N'quan doc', CAST(N'2009-08-09T00:00:00.000' AS DateTime), N'8/2009', N'fgbnf')
INSERT [dbo].[TblHoSoThuViec] ([MaPhong], [MaNV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [TDHocVan], [HocHam], [ViTriThuViec], [NgayTV], [ThangTV], [GhiChu]) VALUES (N'mb015     ', N'015       ', N'bui van g', CAST(N'1981-07-07T00:00:00.000' AS DateTime), N'nam', N'hai duong', N'dai hoc', N'nhan vien', N'nhan vien', CAST(N'2009-08-09T00:00:00.000' AS DateTime), N'8/2009', N'ddvssdf')
INSERT [dbo].[TblHoSoThuViec] ([MaPhong], [MaNV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [TDHocVan], [HocHam], [ViTriThuViec], [NgayTV], [ThangTV], [GhiChu]) VALUES (N'mb05      ', N'05        ', N'tran duc quynh', CAST(N'1985-07-08T00:00:00.000' AS DateTime), N'nam', N'thai binh', N'dai hoc ', N'dai hoc', N'PP dientoan', CAST(N'2007-07-08T00:00:00.000' AS DateTime), N'8/2007', N'hhhjjj')
INSERT [dbo].[TblHoSoThuViec] ([MaPhong], [MaNV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [TDHocVan], [HocHam], [ViTriThuViec], [NgayTV], [ThangTV], [GhiChu]) VALUES (N'mb06      ', N'06        ', N'le binh nam', CAST(N'1985-08-09T00:00:00.000' AS DateTime), N'nam', N'hai duong', N'dai hoc', N'dai hoc', N'truong phong', CAST(N'2007-07-08T00:00:00.000' AS DateTime), N'8/2007', N'jhrddd')
INSERT [dbo].[TblHoSoThuViec] ([MaPhong], [MaNV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [TDHocVan], [HocHam], [ViTriThuViec], [NgayTV], [ThangTV], [GhiChu]) VALUES (N'mb07      ', N'07        ', N'duong hoang long', CAST(N'1984-07-01T00:00:00.000' AS DateTime), N'nam', N'hai duong', N'cao dang ', N'cao dang', N'CB kehoach', CAST(N'2007-07-08T00:00:00.000' AS DateTime), N'8/2007', N'tyteee')
GO
INSERT [dbo].[TblPhongBan] ([MaBoPhan], [MaPhong], [TenPhong], [NgayTLap], [GhiChu]) VALUES (N'mb01      ', N'mp01      ', N'marketing', CAST(N'1990-03-02T00:00:00.000' AS DateTime), N'hoạt động marketing')
INSERT [dbo].[TblPhongBan] ([MaBoPhan], [MaPhong], [TenPhong], [NgayTLap], [GhiChu]) VALUES (N'mb02      ', N'mp02      ', N'kế toán', CAST(N'1990-05-04T00:00:00.000' AS DateTime), N'hoạt động kế toán')
INSERT [dbo].[TblPhongBan] ([MaBoPhan], [MaPhong], [TenPhong], [NgayTLap], [GhiChu]) VALUES (N'mb03      ', N'mp03      ', N'kinh doanh', CAST(N'1990-04-03T00:00:00.000' AS DateTime), N'hoạt động kinh doanh')
INSERT [dbo].[TblPhongBan] ([MaBoPhan], [MaPhong], [TenPhong], [NgayTLap], [GhiChu]) VALUES (N'mb04      ', N'mp04      ', N'vật tư', CAST(N'1990-04-03T00:00:00.000' AS DateTime), N'hoạt động vật tư')
INSERT [dbo].[TblPhongBan] ([MaBoPhan], [MaPhong], [TenPhong], [NgayTLap], [GhiChu]) VALUES (N'mb05      ', N'mp05      ', N'kinh doanh', CAST(N'1990-04-03T00:00:00.000' AS DateTime), N'kkjhjhji')
INSERT [dbo].[TblPhongBan] ([MaBoPhan], [MaPhong], [TenPhong], [NgayTLap], [GhiChu]) VALUES (N'mb06      ', N'mp06      ', N'kinh doanh', CAST(N'1999-04-05T00:00:00.000' AS DateTime), N'ffggr')
INSERT [dbo].[TblPhongBan] ([MaBoPhan], [MaPhong], [TenPhong], [NgayTLap], [GhiChu]) VALUES (N'mb07      ', N'mp07      ', N'ke toan', CAST(N'1999-04-05T00:00:00.000' AS DateTime), N'fddff')
INSERT [dbo].[TblPhongBan] ([MaBoPhan], [MaPhong], [TenPhong], [NgayTLap], [GhiChu]) VALUES (N'mb08      ', N'mp08      ', N'vat tu', CAST(N'1999-04-05T00:00:00.000' AS DateTime), N'ggfg')
GO
INSERT [dbo].[TblSoBH] ([MaNV], [MaLuong], [MaSoBH], [NgayCapSo], [NoiCapSo], [GhiChu]) VALUES (N'0010      ', N'ml010     ', N'ms010     ', CAST(N'2009-04-06T00:00:00.000' AS DateTime), N'haiduong', N'kkkhh')
INSERT [dbo].[TblSoBH] ([MaNV], [MaLuong], [MaSoBH], [NgayCapSo], [NoiCapSo], [GhiChu]) VALUES (N'0011      ', N'ml011     ', N'ms011     ', CAST(N'2009-04-06T00:00:00.000' AS DateTime), N'haiduong', N'hgj')
INSERT [dbo].[TblSoBH] ([MaNV], [MaLuong], [MaSoBH], [NgayCapSo], [NoiCapSo], [GhiChu]) VALUES (N'0012      ', N'ml012     ', N'ms012     ', CAST(N'2009-04-06T00:00:00.000' AS DateTime), N'hai duong', N'hgf')
INSERT [dbo].[TblSoBH] ([MaNV], [MaLuong], [MaSoBH], [NgayCapSo], [NoiCapSo], [GhiChu]) VALUES (N'0013      ', N'ml013     ', N'ms013     ', CAST(N'2009-04-06T00:00:00.000' AS DateTime), N'hai duong', N'kjh')
INSERT [dbo].[TblSoBH] ([MaNV], [MaLuong], [MaSoBH], [NgayCapSo], [NoiCapSo], [GhiChu]) VALUES (N'0014      ', N'ml014     ', N'ms014     ', CAST(N'2009-04-06T00:00:00.000' AS DateTime), N'hai duong', N'kkkll')
INSERT [dbo].[TblSoBH] ([MaNV], [MaLuong], [MaSoBH], [NgayCapSo], [NoiCapSo], [GhiChu]) VALUES (N'0015      ', N'ml015     ', N'ms015     ', CAST(N'2009-04-06T00:00:00.000' AS DateTime), N'hai duong', N'klkjg')
INSERT [dbo].[TblSoBH] ([MaNV], [MaLuong], [MaSoBH], [NgayCapSo], [NoiCapSo], [GhiChu]) VALUES (N'002       ', N'ml02      ', N'ms02      ', CAST(N'2009-04-06T00:00:00.000' AS DateTime), N'hai duong', N'gfgfgf')
INSERT [dbo].[TblSoBH] ([MaNV], [MaLuong], [MaSoBH], [NgayCapSo], [NoiCapSo], [GhiChu]) VALUES (N'003       ', N'ml03      ', N'ms03      ', CAST(N'2009-04-06T00:00:00.000' AS DateTime), N'hai duong', N'ggfgg')
INSERT [dbo].[TblSoBH] ([MaNV], [MaLuong], [MaSoBH], [NgayCapSo], [NoiCapSo], [GhiChu]) VALUES (N'004       ', N'ml04      ', N'ms04      ', CAST(N'2009-04-06T00:00:00.000' AS DateTime), N'hai duong', N'dfdfd')
INSERT [dbo].[TblSoBH] ([MaNV], [MaLuong], [MaSoBH], [NgayCapSo], [NoiCapSo], [GhiChu]) VALUES (N'005       ', N'ml05      ', N'ms05      ', CAST(N'2009-04-06T00:00:00.000' AS DateTime), N'hai duong', N'gfgfgf')
INSERT [dbo].[TblSoBH] ([MaNV], [MaLuong], [MaSoBH], [NgayCapSo], [NoiCapSo], [GhiChu]) VALUES (N'006       ', N'ml06      ', N'ms06      ', CAST(N'2009-04-06T00:00:00.000' AS DateTime), N'hai duong', N'kgddf')
INSERT [dbo].[TblSoBH] ([MaNV], [MaLuong], [MaSoBH], [NgayCapSo], [NoiCapSo], [GhiChu]) VALUES (N'007       ', N'ml07      ', N'ms07      ', CAST(N'2009-04-06T00:00:00.000' AS DateTime), N'hai duong', N'lreyt')
INSERT [dbo].[TblSoBH] ([MaNV], [MaLuong], [MaSoBH], [NgayCapSo], [NoiCapSo], [GhiChu]) VALUES (N'008       ', N'ml08      ', N'ms08      ', CAST(N'2009-04-06T00:00:00.000' AS DateTime), N'hai duong', N'jjhhh')
INSERT [dbo].[TblSoBH] ([MaNV], [MaLuong], [MaSoBH], [NgayCapSo], [NoiCapSo], [GhiChu]) VALUES (N'009       ', N'ml09      ', N'ms09      ', CAST(N'2009-04-06T00:00:00.000' AS DateTime), N'hai duong', N'ggg')
GO
INSERT [dbo].[TblTangLuong] ([MaNV], [HoTen], [GioiTinh], [ChucVu], [ChucDanh], [LCBCu], [LCBMoi], [PCapCu], [PcapMoi], [NgayTang], [LyDo]) VALUES (N'001       ', N'nguyen van a', N'nam', N'truong phong', N'can bo dieu hanh', 2000000, 250000, 200, 250, CAST(N'2002-05-24T00:00:00.000' AS DateTime), N'hoan thanh du an')
INSERT [dbo].[TblTangLuong] ([MaNV], [HoTen], [GioiTinh], [ChucVu], [ChucDanh], [LCBCu], [LCBMoi], [PCapCu], [PcapMoi], [NgayTang], [LyDo]) VALUES (N'002       ', N'nguyen thi b', N'nu', N'nhan vien', N'nhan vien', 150000, 180000, 100, 150, CAST(N'2002-05-24T00:00:00.000' AS DateTime), N'hanh thanh du an')
INSERT [dbo].[TblTangLuong] ([MaNV], [HoTen], [GioiTinh], [ChucVu], [ChucDanh], [LCBCu], [LCBMoi], [PCapCu], [PcapMoi], [NgayTang], [LyDo]) VALUES (N'003       ', N'nguyen thi t', N'nu', N'thu ki', N'thu ki giam doc ', 150000, 180000, 100, 150, CAST(N'2002-05-24T00:00:00.000' AS DateTime), N'hanh thanh du an')
INSERT [dbo].[TblTangLuong] ([MaNV], [HoTen], [GioiTinh], [ChucVu], [ChucDanh], [LCBCu], [LCBMoi], [PCapCu], [PcapMoi], [NgayTang], [LyDo]) VALUES (N'004       ', N'nguyen thi d', N'nu', N'nhan vien', N'nhan vien', 180000, 200000, 200, 250, CAST(N'2004-05-05T00:00:00.000' AS DateTime), N'haon thanh du an')
INSERT [dbo].[TblTangLuong] ([MaNV], [HoTen], [GioiTinh], [ChucVu], [ChucDanh], [LCBCu], [LCBMoi], [PCapCu], [PcapMoi], [NgayTang], [LyDo]) VALUES (N'005       ', N'le van s', N'nam', N'nhan vien', N'nhan vien', 150000, 200000, 500, 500, CAST(N'2004-05-05T00:00:00.000' AS DateTime), N'hoan thanhdu an')
INSERT [dbo].[TblTangLuong] ([MaNV], [HoTen], [GioiTinh], [ChucVu], [ChucDanh], [LCBCu], [LCBMoi], [PCapCu], [PcapMoi], [NgayTang], [LyDo]) VALUES (N'006       ', N'nguyen van e', N'nam', N'nhan vien', N'nhan vien', 150000, 200000, 200, 250, CAST(N'2004-05-05T00:00:00.000' AS DateTime), N'hoang thanh')
INSERT [dbo].[TblTangLuong] ([MaNV], [HoTen], [GioiTinh], [ChucVu], [ChucDanh], [LCBCu], [LCBMoi], [PCapCu], [PcapMoi], [NgayTang], [LyDo]) VALUES (N'007       ', N'tran thi f', N'nu', N'to truong', N'totruong', 200000, 250000, 300, 300, CAST(N'2004-05-05T00:00:00.000' AS DateTime), N'hoan thanh du an')
INSERT [dbo].[TblTangLuong] ([MaNV], [HoTen], [GioiTinh], [ChucVu], [ChucDanh], [LCBCu], [LCBMoi], [PCapCu], [PcapMoi], [NgayTang], [LyDo]) VALUES (N'008       ', N'ho thi g', N'nu', N'nhan vien', N'nhan vien', 120000, 150000, 200, 200, CAST(N'2004-05-05T00:00:00.000' AS DateTime), N'hoan thanh du an')
INSERT [dbo].[TblTangLuong] ([MaNV], [HoTen], [GioiTinh], [ChucVu], [ChucDanh], [LCBCu], [LCBMoi], [PCapCu], [PcapMoi], [NgayTang], [LyDo]) VALUES (N'009       ', N'bui thi mai', N'nu', N'thu ki', N'thu ki', 120000, 150000, 150, 200, CAST(N'2004-05-05T00:00:00.000' AS DateTime), N'hoan thanh tot nVu')
INSERT [dbo].[TblTangLuong] ([MaNV], [HoTen], [GioiTinh], [ChucVu], [ChucDanh], [LCBCu], [LCBMoi], [PCapCu], [PcapMoi], [NgayTang], [LyDo]) VALUES (N'0010      ', N'dovan be', N'nam', N'lai xe', N'laixe', 100000, 120000, 100, 150, CAST(N'2004-05-05T00:00:00.000' AS DateTime), N'hoan thanh')
INSERT [dbo].[TblTangLuong] ([MaNV], [HoTen], [GioiTinh], [ChucVu], [ChucDanh], [LCBCu], [LCBMoi], [PCapCu], [PcapMoi], [NgayTang], [LyDo]) VALUES (N'0011      ', N'nguyen van dat', N'nam', N'phoG.doc', N'pho G.doc', 300000, 350000, 300, 300, CAST(N'2004-05-05T00:00:00.000' AS DateTime), N'hoan thanh du an')
INSERT [dbo].[TblTangLuong] ([MaNV], [HoTen], [GioiTinh], [ChucVu], [ChucDanh], [LCBCu], [LCBMoi], [PCapCu], [PcapMoi], [NgayTang], [LyDo]) VALUES (N'0012      ', N'le binh nam', N'nam', N'nhan vien', N'nhan vien', 150000, 180000, 200, 200, CAST(N'2004-05-05T00:00:00.000' AS DateTime), N'hoan thanh nhiem vu tot')
INSERT [dbo].[TblTangLuong] ([MaNV], [HoTen], [GioiTinh], [ChucVu], [ChucDanh], [LCBCu], [LCBMoi], [PCapCu], [PcapMoi], [NgayTang], [LyDo]) VALUES (N'0013      ', N'le thi c', N'nu', N'nhan vien', N'nhan vien', 150000, 180000, 200, 250, CAST(N'2004-05-05T00:00:00.000' AS DateTime), N'hoan thanh')
INSERT [dbo].[TblTangLuong] ([MaNV], [HoTen], [GioiTinh], [ChucVu], [ChucDanh], [LCBCu], [LCBMoi], [PCapCu], [PcapMoi], [NgayTang], [LyDo]) VALUES (N'0014      ', N'nguyen van d', N'nam', N'nhan vien', N'nhan vien', 180000, 200000, 200, 250, CAST(N'2004-05-05T00:00:00.000' AS DateTime), N'hoan thanh')
INSERT [dbo].[TblTangLuong] ([MaNV], [HoTen], [GioiTinh], [ChucVu], [ChucDanh], [LCBCu], [LCBMoi], [PCapCu], [PcapMoi], [NgayTang], [LyDo]) VALUES (N'0015      ', N'nguyen thi d', N'nu', N'nhan vien', N'nhan vien', 150000, 200000, 300, 350, CAST(N'2004-05-05T00:00:00.000' AS DateTime), N'hoan thanh nhiem vu tot')
INSERT [dbo].[TblTangLuong] ([MaNV], [HoTen], [GioiTinh], [ChucVu], [ChucDanh], [LCBCu], [LCBMoi], [PCapCu], [PcapMoi], [NgayTang], [LyDo]) VALUES (N'0016      ', N'bui van g', N'nam', N'nhan vien', N'nhan vien', 150000, 200000, 200, 250, CAST(N'2004-05-05T00:00:00.000' AS DateTime), N'hoan thanh nhien vu')
INSERT [dbo].[TblTangLuong] ([MaNV], [HoTen], [GioiTinh], [ChucVu], [ChucDanh], [LCBCu], [LCBMoi], [PCapCu], [PcapMoi], [NgayTang], [LyDo]) VALUES (N'0017      ', N'ho thi mo', N'nu', N'quan doc', N'quan doc', 200000, 220000, 250, 300, CAST(N'2009-08-08T00:00:00.000' AS DateTime), N'hoan thanh nvu')
INSERT [dbo].[TblTangLuong] ([MaNV], [HoTen], [GioiTinh], [ChucVu], [ChucDanh], [LCBCu], [LCBMoi], [PCapCu], [PcapMoi], [NgayTang], [LyDo]) VALUES (N'0018      ', N'nguyen van h', N'nam', N'nhan vien', N'nhan vien', 150000, 180000, 200, 250, CAST(N'2009-08-08T00:00:00.000' AS DateTime), N'hoan thanh  nhiem vu tot')
INSERT [dbo].[TblTangLuong] ([MaNV], [HoTen], [GioiTinh], [ChucVu], [ChucDanh], [LCBCu], [LCBMoi], [PCapCu], [PcapMoi], [NgayTang], [LyDo]) VALUES (N'0090      ', N'ho thi g', N'nu', N'nhan vien', N'nhan vien', 120000, 150000, 200, 200, CAST(N'2004-05-05T00:00:00.000' AS DateTime), N'hoan thanh du an')
INSERT [dbo].[TblTangLuong] ([MaNV], [HoTen], [GioiTinh], [ChucVu], [ChucDanh], [LCBCu], [LCBMoi], [PCapCu], [PcapMoi], [NgayTang], [LyDo]) VALUES (N'0026      ', N'nguyen van e', N'nam', N'nhan vien', N'nhan vien', 150000, 200000, 200, 250, CAST(N'2004-05-05T00:00:00.000' AS DateTime), N'hoang thanh')
INSERT [dbo].[TblTangLuong] ([MaNV], [HoTen], [GioiTinh], [ChucVu], [ChucDanh], [LCBCu], [LCBMoi], [PCapCu], [PcapMoi], [NgayTang], [LyDo]) VALUES (N'0021      ', N'nguyen van cuong', N'nam', N'giamdoc', N'giamdoc', 300000, 350000, 300, 350, CAST(N'2009-08-08T00:00:00.000' AS DateTime), N'hoanthanh nvu')
GO
INSERT [dbo].[TblTTCaNhan] ([MaNV], [NoiSinh], [NguyenQuan], [DCThuongChu], [DCTamChu], [SDT], [DanToc], [TonGiao], [QuocTich], [TiengNN], [TrinhDoNN], [HocVan], [HocHam], [NgayVaoDoan], [TenDoanThe], [ChucVuDoan], [GhiChu]) VALUES (N'002       ', N'Hung yen', N'hung yen', N'khoai chau-hung yen', N'khong co', N'0168366877  ', N'kinh', N'khong', N'viet nam', N'phap', N'b', N'dai hoc', N'chinh quy', CAST(N'1988-04-05T00:00:00.000' AS DateTime), N'doan thanh nien VN', N'doan vien', N'khong co gi noi bat')
INSERT [dbo].[TblTTCaNhan] ([MaNV], [NoiSinh], [NguyenQuan], [DCThuongChu], [DCTamChu], [SDT], [DanToc], [TonGiao], [QuocTich], [TiengNN], [TrinhDoNN], [HocVan], [HocHam], [NgayVaoDoan], [TenDoanThe], [ChucVuDoan], [GhiChu]) VALUES (N'003       ', N'Hai duong', N'Hai duong', N'thanh ha-hai duong', N'khu5-p thanh binh-tp hai duong', N'01683669978 ', N'kinh', N'khong', N'viet nam', N'anh', N'b', N'cao dang', N'chinh quy', CAST(N'2002-07-02T00:00:00.000' AS DateTime), N'Doan thanh nien Vn', N'doan vien', N'chua vo')
INSERT [dbo].[TblTTCaNhan] ([MaNV], [NoiSinh], [NguyenQuan], [DCThuongChu], [DCTamChu], [SDT], [DanToc], [TonGiao], [QuocTich], [TiengNN], [TrinhDoNN], [HocVan], [HocHam], [NgayVaoDoan], [TenDoanThe], [ChucVuDoan], [GhiChu]) VALUES (N'004       ', N'ha nam', N'hanam', N'khu5 p thanh binh tp hai duong', N'khu5 p thanh binh', N'0988237211  ', N'kinh', N'khong', N'viet nam', N'anh ', N'b', N'cao dang', N'chinh quy', CAST(N'2001-06-03T00:00:00.000' AS DateTime), N'doan thanh nien viet nam', N'doan vien', N'kho co')
INSERT [dbo].[TblTTCaNhan] ([MaNV], [NoiSinh], [NguyenQuan], [DCThuongChu], [DCTamChu], [SDT], [DanToc], [TonGiao], [QuocTich], [TiengNN], [TrinhDoNN], [HocVan], [HocHam], [NgayVaoDoan], [TenDoanThe], [ChucVuDoan], [GhiChu]) VALUES (N'005       ', N'hung yen', N'hung yen ', N'189 nguyen kuong bang tp hai duong ', N'tp hai duong', N'0986498133  ', N'kinh', N'khong', N'viet nam', N'khong', N'khong', N'caodang', N'chinh quy', CAST(N'2001-05-04T00:00:00.000' AS DateTime), N'doan thanh nien VN', N'DOAN VIEN', N'KHONG CO J ')
INSERT [dbo].[TblTTCaNhan] ([MaNV], [NoiSinh], [NguyenQuan], [DCThuongChu], [DCTamChu], [SDT], [DanToc], [TonGiao], [QuocTich], [TiengNN], [TrinhDoNN], [HocVan], [HocHam], [NgayVaoDoan], [TenDoanThe], [ChucVuDoan], [GhiChu]) VALUES (N'006       ', N'VINH PHUC', N'VINH PHUC', N'TP HAI DUONG', N'TPHAI DUONG', N'01683664757 ', N'KINH', N'KHONG', N'VIET NAM', N'khong', N'khong', N'trung cap', N'chinh quy', CAST(N'1999-08-08T00:00:00.000' AS DateTime), N'doan thanh nien VN', N'doan vien', N'khong co j')
INSERT [dbo].[TblTTCaNhan] ([MaNV], [NoiSinh], [NguyenQuan], [DCThuongChu], [DCTamChu], [SDT], [DanToc], [TonGiao], [QuocTich], [TiengNN], [TrinhDoNN], [HocVan], [HocHam], [NgayVaoDoan], [TenDoanThe], [ChucVuDoan], [GhiChu]) VALUES (N'007       ', N'quang ninh', N'quang ninh', N'tp hai duong', N'tp hai duong', N'01683994758 ', N'kinh', N'khong', N'viet nam', N'anh', N'c', N'dai hoc', N'chinh quy', CAST(N'2000-04-05T00:00:00.000' AS DateTime), N'doan thanh nien VN', N'doan vien', N'jhgg')
INSERT [dbo].[TblTTCaNhan] ([MaNV], [NoiSinh], [NguyenQuan], [DCThuongChu], [DCTamChu], [SDT], [DanToc], [TonGiao], [QuocTich], [TiengNN], [TrinhDoNN], [HocVan], [HocHam], [NgayVaoDoan], [TenDoanThe], [ChucVuDoan], [GhiChu]) VALUES (N'008       ', N'bac giang', N'bac giang', N'khu 5 p thanh binh ', N'ngo 160p thanh binh', N'0986778845  ', N'kinh', N'khong', N'viet nam', N'nga', N'b', N'dai hoc', N'chinh quy', CAST(N'1988-05-08T00:00:00.000' AS DateTime), N'doan thanh nien viet nam', N'doan vien', N'khghfjj')
INSERT [dbo].[TblTTCaNhan] ([MaNV], [NoiSinh], [NguyenQuan], [DCThuongChu], [DCTamChu], [SDT], [DanToc], [TonGiao], [QuocTich], [TiengNN], [TrinhDoNN], [HocVan], [HocHam], [NgayVaoDoan], [TenDoanThe], [ChucVuDoan], [GhiChu]) VALUES (N'009       ', N'haiphong', N'hai phong', N'duong ngo quyen tp hai duong ', N'ngo 2o2 duong ngo quyen tpHD', N'016845398   ', N'kinh', N'khong', N'viet nam', N'han', N'c', N'cao dang', N'chinh quy', CAST(N'2000-06-08T00:00:00.000' AS DateTime), N'doan thanh nien VN', N'doan vien', N'kkkkgg')
INSERT [dbo].[TblTTCaNhan] ([MaNV], [NoiSinh], [NguyenQuan], [DCThuongChu], [DCTamChu], [SDT], [DanToc], [TonGiao], [QuocTich], [TiengNN], [TrinhDoNN], [HocVan], [HocHam], [NgayVaoDoan], [TenDoanThe], [ChucVuDoan], [GhiChu]) VALUES (N'0010      ', N'hai phong', N'hai phong', N'duong ngo quyen tpHD', N'duong ngo quyen tpHD', N'01687499334 ', N'kinh', N'khong ', N'viet nam', N'anh', N'b', N'dai hoc', N'chinh quy', CAST(N'1997-08-03T00:00:00.000' AS DateTime), N'doan thanh nien viet nam', N'oan vien', N'klkj')
INSERT [dbo].[TblTTCaNhan] ([MaNV], [NoiSinh], [NguyenQuan], [DCThuongChu], [DCTamChu], [SDT], [DanToc], [TonGiao], [QuocTich], [TiengNN], [TrinhDoNN], [HocVan], [HocHam], [NgayVaoDoan], [TenDoanThe], [ChucVuDoan], [GhiChu]) VALUES (N'0011      ', N'ninh binh', N'ninh binh', N'khu 5 p thanh binh ', N'khu 5 p thanh binh', N'01674459999 ', N'kinh', N'khong', N'viet nam', N'anh', N'c', N'caodang', N'chinh quy', CAST(N'1998-09-07T00:00:00.000' AS DateTime), N'doan thanh nien VN ', N'doan vien', N'lkljhjh')
INSERT [dbo].[TblTTCaNhan] ([MaNV], [NoiSinh], [NguyenQuan], [DCThuongChu], [DCTamChu], [SDT], [DanToc], [TonGiao], [QuocTich], [TiengNN], [TrinhDoNN], [HocVan], [HocHam], [NgayVaoDoan], [TenDoanThe], [ChucVuDoan], [GhiChu]) VALUES (N'0012      ', N'haiduong', N'hai duong', N'tuky tp hai duong', N'tu ky tpHD', N'0988578232  ', N'kinh', N'khong', N'viet nam', N'khong', N'khong', N'cao dang', N'chinh quy', CAST(N'1998-04-06T00:00:00.000' AS DateTime), N'doan thanh nien VN', N'doan vien', N'kldjhds')
INSERT [dbo].[TblTTCaNhan] ([MaNV], [NoiSinh], [NguyenQuan], [DCThuongChu], [DCTamChu], [SDT], [DanToc], [TonGiao], [QuocTich], [TiengNN], [TrinhDoNN], [HocVan], [HocHam], [NgayVaoDoan], [TenDoanThe], [ChucVuDoan], [GhiChu]) VALUES (N'0013      ', N'hung yen', N'hung yen', N'tp hai duong', N'tp HD', N'098876544   ', N'kinh', N'khong', N'viet nam', N'anh', N'b', N'dai hoc', N'chinh quy', CAST(N'2000-05-07T00:00:00.000' AS DateTime), N'doanthanh nien viet nam', N'doan vien', N'kllhjgf')
INSERT [dbo].[TblTTCaNhan] ([MaNV], [NoiSinh], [NguyenQuan], [DCThuongChu], [DCTamChu], [SDT], [DanToc], [TonGiao], [QuocTich], [TiengNN], [TrinhDoNN], [HocVan], [HocHam], [NgayVaoDoan], [TenDoanThe], [ChucVuDoan], [GhiChu]) VALUES (N'0014      ', N'hai duong', N'hai duong', N'gialoc -tp HD', N'giaLoc-tpHD', N'098674321   ', N'kinh', N'khong', N'viet nam', N'khong', N'khong', N'trung cap', N'chinh quy', CAST(N'2000-04-03T00:00:00.000' AS DateTime), N'doan thanh nien VN', N'doan vien', N'kjhghj')
INSERT [dbo].[TblTTCaNhan] ([MaNV], [NoiSinh], [NguyenQuan], [DCThuongChu], [DCTamChu], [SDT], [DanToc], [TonGiao], [QuocTich], [TiengNN], [TrinhDoNN], [HocVan], [HocHam], [NgayVaoDoan], [TenDoanThe], [ChucVuDoan], [GhiChu]) VALUES (N'0015      ', N'hai duong', N'hai duong', N'tp hai duong', N'tp hai duong', N'0168455692  ', N'kinh', N'khong', N'viet nam', N'khong', N'khong', N'caodang', N'ching quy', CAST(N'1998-05-05T00:00:00.000' AS DateTime), N'doan vien thanh nien Vn', N'doan vien', N'kjhgffg')
INSERT [dbo].[TblTTCaNhan] ([MaNV], [NoiSinh], [NguyenQuan], [DCThuongChu], [DCTamChu], [SDT], [DanToc], [TonGiao], [QuocTich], [TiengNN], [TrinhDoNN], [HocVan], [HocHam], [NgayVaoDoan], [TenDoanThe], [ChucVuDoan], [GhiChu]) VALUES (N'0016      ', N'hai phong', N'hai phong', N'tp haiduong', N'tp hai duong', N'0167234484  ', N'kinh ', N'khong', N'viet nam', N'anh', N'b', N'dai hoc', N'chinh quy', CAST(N'1998-04-05T00:00:00.000' AS DateTime), N'doan vien thanh nien Vn', N'doan vien', N'kkggfd')
INSERT [dbo].[TblTTCaNhan] ([MaNV], [NoiSinh], [NguyenQuan], [DCThuongChu], [DCTamChu], [SDT], [DanToc], [TonGiao], [QuocTich], [TiengNN], [TrinhDoNN], [HocVan], [HocHam], [NgayVaoDoan], [TenDoanThe], [ChucVuDoan], [GhiChu]) VALUES (N'0017      ', N'ha tay', N'ha tay', N'tp hai duong', N'tphai duong', N'098746335   ', N'kinh', N'khong', N'viet nam', N'anh', N'b', N'cao dang', N'chinh quy', CAST(N'1998-12-12T00:00:00.000' AS DateTime), N'doan thanh nien VN', N'doan vien', N'kjhgf')
INSERT [dbo].[TblTTCaNhan] ([MaNV], [NoiSinh], [NguyenQuan], [DCThuongChu], [DCTamChu], [SDT], [DanToc], [TonGiao], [QuocTich], [TiengNN], [TrinhDoNN], [HocVan], [HocHam], [NgayVaoDoan], [TenDoanThe], [ChucVuDoan], [GhiChu]) VALUES (N'0018      ', N'hung yen', N'hung yen', N'tp hai duong', N'tp hai duong', N'098773421   ', N'kinh', N'khong', N'viet nam', N'anh', N'c', N'dai hoc', N'chinh quy', CAST(N'1999-04-05T00:00:00.000' AS DateTime), N'doan vien thanh nien Vn', N'doan vien', N'kkjfgfj')
INSERT [dbo].[TblTTCaNhan] ([MaNV], [NoiSinh], [NguyenQuan], [DCThuongChu], [DCTamChu], [SDT], [DanToc], [TonGiao], [QuocTich], [TiengNN], [TrinhDoNN], [HocVan], [HocHam], [NgayVaoDoan], [TenDoanThe], [ChucVuDoan], [GhiChu]) VALUES (N'005       ', N'hung yen', N'hung yen ', N'189 nguyen kuong bang tp hai duong ', N'tp hai duong', N'0986498133  ', N'kinh', N'khong', N'viet nam', N'khong', N'khong', N'caodang', N'chinh quy', CAST(N'2001-04-05T00:00:00.000' AS DateTime), N'doan thanh nien VN', N'DOAN VIEN', N'KHONG CO J ')
INSERT [dbo].[TblTTCaNhan] ([MaNV], [NoiSinh], [NguyenQuan], [DCThuongChu], [DCTamChu], [SDT], [DanToc], [TonGiao], [QuocTich], [TiengNN], [TrinhDoNN], [HocVan], [HocHam], [NgayVaoDoan], [TenDoanThe], [ChucVuDoan], [GhiChu]) VALUES (N'001       ', N'Hung yen', N'hung yen', N'khoai chau-hung yen', N'khong co', N'0168366877  ', N'kinh', N'khong', N'viet nam', N'phap', N'c', N'dai hoc', N'chinh quy', CAST(N'1988-04-05T00:00:00.000' AS DateTime), N'doan thanh nien VN', N'doan vien', N'khong co gi noi bat')
GO
INSERT [dbo].[TblTTNVCoBan] ([MaBoPhan], [MaPhong], [MaNV], [HoTen], [BiDanh], [NgaySinh], [GioiTinh], [TTHonNhan], [CMTND], [NgayCap], [NoiCap], [ChucVu], [ChucDanh], [LoaiHD], [ThoiGian], [NgayKy], [NgayHetHan], [Anh], [GhiChu]) VALUES (N'mb01      ', N'mp01      ', N'001       ', N'nguyen van a', N'can bo', CAST(N'1982-01-04T00:00:00.000' AS DateTime), N'nam', N'chua', N'145387886   ', CAST(N'1999-05-09T00:00:00.000' AS DateTime), N'Hai Duong', N'Truong phong', N'can bo dieu hanh', N'kinh te', N'24 thang', CAST(N'2008-02-04T00:00:00.000' AS DateTime), CAST(N'2010-02-04T00:00:00.000' AS DateTime), N'khong co                                                                                            ', N'can bo')
INSERT [dbo].[TblTTNVCoBan] ([MaBoPhan], [MaPhong], [MaNV], [HoTen], [BiDanh], [NgaySinh], [GioiTinh], [TTHonNhan], [CMTND], [NgayCap], [NoiCap], [ChucVu], [ChucDanh], [LoaiHD], [ThoiGian], [NgayKy], [NgayHetHan], [Anh], [GhiChu]) VALUES (N'mb010     ', N'mp05      ', N'0010      ', N'nguyen thi thuy', N'CB ke toan', CAST(N'1986-06-04T00:00:00.000' AS DateTime), N'nu', N'chua', N'1233528409  ', CAST(N'1998-09-12T00:00:00.000' AS DateTime), N'ha noi', N'Cb ke toan', N'CB ke toan', N'kinh te', N'36 thang', CAST(N'2009-08-25T00:00:00.000' AS DateTime), CAST(N'2012-08-25T00:00:00.000' AS DateTime), N'co                                                                                                  ', N'Cb ke toan')
INSERT [dbo].[TblTTNVCoBan] ([MaBoPhan], [MaPhong], [MaNV], [HoTen], [BiDanh], [NgaySinh], [GioiTinh], [TTHonNhan], [CMTND], [NgayCap], [NoiCap], [ChucVu], [ChucDanh], [LoaiHD], [ThoiGian], [NgayKy], [NgayHetHan], [Anh], [GhiChu]) VALUES (N'mb010     ', N'mp09      ', N'0011      ', N'bui thi mai ', N'Cb ke toan ', CAST(N'1986-06-05T00:00:00.000' AS DateTime), N'nu ', N'chua', N'1237479458  ', CAST(N'1999-12-05T00:00:00.000' AS DateTime), N'quang ninh', N'Cb ke tioan ', N'Cb ketoan ', N'kinh te ', N'24 thang', CAST(N'2008-02-03T00:00:00.000' AS DateTime), CAST(N'2010-02-03T00:00:00.000' AS DateTime), N'khong                                                                                               ', N'Cb ke toan')
INSERT [dbo].[TblTTNVCoBan] ([MaBoPhan], [MaPhong], [MaNV], [HoTen], [BiDanh], [NgaySinh], [GioiTinh], [TTHonNhan], [CMTND], [NgayCap], [NoiCap], [ChucVu], [ChucDanh], [LoaiHD], [ThoiGian], [NgayKy], [NgayHetHan], [Anh], [GhiChu]) VALUES (N'mb011     ', N'mp011     ', N'0012      ', N'do van be ', N'lai xe', CAST(N'1983-06-09T00:00:00.000' AS DateTime), N'nam', N'roi', N'1278984755  ', CAST(N'1997-06-02T00:00:00.000' AS DateTime), N'thai binh', N'laixe ', N'lai xe', N'kinh te ', N'24 thang ', CAST(N'2009-08-09T00:00:00.000' AS DateTime), CAST(N'3507-08-01T00:00:00.000' AS DateTime), N'khong                                                                                               ', N'lai xe')
INSERT [dbo].[TblTTNVCoBan] ([MaBoPhan], [MaPhong], [MaNV], [HoTen], [BiDanh], [NgaySinh], [GioiTinh], [TTHonNhan], [CMTND], [NgayCap], [NoiCap], [ChucVu], [ChucDanh], [LoaiHD], [ThoiGian], [NgayKy], [NgayHetHan], [Anh], [GhiChu]) VALUES (N'mb012     ', N'mp012     ', N'0013      ', N'le thi c', N'nhanvien ', CAST(N'1986-04-07T00:00:00.000' AS DateTime), N'nu ', N'roi', N'46890765421 ', CAST(N'1999-04-06T00:00:00.000' AS DateTime), N'hai duong ', N'nhan vien ', N'nhanvien ', N'kinh te', N'36 thang ', CAST(N'2008-09-03T00:00:00.000' AS DateTime), CAST(N'2012-09-03T00:00:00.000' AS DateTime), N'co                                                                                                  ', N'nhan vien ')
INSERT [dbo].[TblTTNVCoBan] ([MaBoPhan], [MaPhong], [MaNV], [HoTen], [BiDanh], [NgaySinh], [GioiTinh], [TTHonNhan], [CMTND], [NgayCap], [NoiCap], [ChucVu], [ChucDanh], [LoaiHD], [ThoiGian], [NgayKy], [NgayHetHan], [Anh], [GhiChu]) VALUES (N'mb013     ', N'mp013     ', N'0014      ', N'nguyenvan d', N'nhan vien ', CAST(N'1984-08-08T00:00:00.000' AS DateTime), N'nam', N'roi', N'8490444432  ', CAST(N'1997-02-01T00:00:00.000' AS DateTime), N'hai duong', N'nhan vien', N'nhan vien', N'kinh te', N'24 thang ', CAST(N'2008-04-05T00:00:00.000' AS DateTime), CAST(N'2010-04-05T00:00:00.000' AS DateTime), N'khong                                                                                               ', N'nhan vien')
INSERT [dbo].[TblTTNVCoBan] ([MaBoPhan], [MaPhong], [MaNV], [HoTen], [BiDanh], [NgaySinh], [GioiTinh], [TTHonNhan], [CMTND], [NgayCap], [NoiCap], [ChucVu], [ChucDanh], [LoaiHD], [ThoiGian], [NgayKy], [NgayHetHan], [Anh], [GhiChu]) VALUES (N'mb014     ', N'mp014     ', N'0015      ', N'nguyen thi d', N'nhan vien', CAST(N'1984-06-09T00:00:00.000' AS DateTime), N'nu', N'chua', N'1245099878  ', CAST(N'1999-06-07T00:00:00.000' AS DateTime), N'haiduong', N'nhan vien', N'nhan vien', N'kinh te', N'36thang', CAST(N'2008-05-05T00:00:00.000' AS DateTime), CAST(N'2011-05-05T00:00:00.000' AS DateTime), N'co                                                                                                  ', N'nhan vien')
INSERT [dbo].[TblTTNVCoBan] ([MaBoPhan], [MaPhong], [MaNV], [HoTen], [BiDanh], [NgaySinh], [GioiTinh], [TTHonNhan], [CMTND], [NgayCap], [NoiCap], [ChucVu], [ChucDanh], [LoaiHD], [ThoiGian], [NgayKy], [NgayHetHan], [Anh], [GhiChu]) VALUES (N'mb015     ', N'mp015     ', N'0016      ', N'bui van g', N'nhan vien', CAST(N'1981-07-07T00:00:00.000' AS DateTime), N'nam', N'roi', N'1453977667  ', CAST(N'1997-08-02T00:00:00.000' AS DateTime), N'hai phong', N'nhan vien', N'mhan vien', N'kinh te', N'24 thang', CAST(N'2008-07-09T00:00:00.000' AS DateTime), CAST(N'2010-07-09T00:00:00.000' AS DateTime), N'khong                                                                                               ', N'nhan vien')
INSERT [dbo].[TblTTNVCoBan] ([MaBoPhan], [MaPhong], [MaNV], [HoTen], [BiDanh], [NgaySinh], [GioiTinh], [TTHonNhan], [CMTND], [NgayCap], [NoiCap], [ChucVu], [ChucDanh], [LoaiHD], [ThoiGian], [NgayKy], [NgayHetHan], [Anh], [GhiChu]) VALUES (N'mb016     ', N'mp016     ', N'0017      ', N'ho thi mo', N'quan doc', CAST(N'1985-06-09T00:00:00.000' AS DateTime), N'nu', N'roi', N'1459795044  ', CAST(N'1999-04-03T00:00:00.000' AS DateTime), N'ha tay', N'quan doc', N'quan doc', N'kinh te', N'24 thang', CAST(N'2008-06-08T00:00:00.000' AS DateTime), CAST(N'2010-04-08T00:00:00.000' AS DateTime), N'co                                                                                                  ', N'quan doc')
INSERT [dbo].[TblTTNVCoBan] ([MaBoPhan], [MaPhong], [MaNV], [HoTen], [BiDanh], [NgaySinh], [GioiTinh], [TTHonNhan], [CMTND], [NgayCap], [NoiCap], [ChucVu], [ChucDanh], [LoaiHD], [ThoiGian], [NgayKy], [NgayHetHan], [Anh], [GhiChu]) VALUES (N'mb017     ', N'mp017     ', N'0018      ', N'ngyuen van h', N'nhan vien', CAST(N'1981-09-09T00:00:00.000' AS DateTime), N'nam', N'roi', N'2889548906  ', CAST(N'1997-07-06T00:00:00.000' AS DateTime), N'hung yen', N'nhan vien', N'nhan vien', N'kinh te', N'36 thang', CAST(N'2007-08-04T00:00:00.000' AS DateTime), CAST(N'2011-08-04T00:00:00.000' AS DateTime), N'khong                                                                                               ', N'nhan vien')
INSERT [dbo].[TblTTNVCoBan] ([MaBoPhan], [MaPhong], [MaNV], [HoTen], [BiDanh], [NgaySinh], [GioiTinh], [TTHonNhan], [CMTND], [NgayCap], [NoiCap], [ChucVu], [ChucDanh], [LoaiHD], [ThoiGian], [NgayKy], [NgayHetHan], [Anh], [GhiChu]) VALUES (N'mb018     ', N'mp018     ', N'0019      ', N'ho thi k', N'nhan vien', CAST(N'1982-12-10T00:00:00.000' AS DateTime), N'nu', N'roi', N'1453789089  ', CAST(N'1998-09-03T00:00:00.000' AS DateTime), N'hai duong', N'nhan vien', N'nhan vien', N'kinhte', N'24 thang', CAST(N'2008-05-05T00:00:00.000' AS DateTime), CAST(N'2010-05-05T00:00:00.000' AS DateTime), N'co                                                                                                  ', N'nhan vien')
INSERT [dbo].[TblTTNVCoBan] ([MaBoPhan], [MaPhong], [MaNV], [HoTen], [BiDanh], [NgaySinh], [GioiTinh], [TTHonNhan], [CMTND], [NgayCap], [NoiCap], [ChucVu], [ChucDanh], [LoaiHD], [ThoiGian], [NgayKy], [NgayHetHan], [Anh], [GhiChu]) VALUES (N'mb02      ', N'mp02      ', N'002       ', N'nguyen thi b', N'nhan vien', CAST(N'1987-09-09T00:00:00.000' AS DateTime), N'nu', N'chua', N'123456789   ', CAST(N'2002-03-02T00:00:00.000' AS DateTime), N'Hung yen', N'nhan vien marketing', N'nhan vien marketing', N'kinh te', N'36 thang', CAST(N'2007-03-05T00:00:00.000' AS DateTime), CAST(N'2010-03-05T00:00:00.000' AS DateTime), N'khong co                                                                                            ', N'nhan vien')
INSERT [dbo].[TblTTNVCoBan] ([MaBoPhan], [MaPhong], [MaNV], [HoTen], [BiDanh], [NgaySinh], [GioiTinh], [TTHonNhan], [CMTND], [NgayCap], [NoiCap], [ChucVu], [ChucDanh], [LoaiHD], [ThoiGian], [NgayKy], [NgayHetHan], [Anh], [GhiChu]) VALUES (N'mb019     ', N'mp019     ', N'0020      ', N'pham van l', N'bao ve', CAST(N'1974-04-09T00:00:00.000' AS DateTime), N'nam', N'roi', N'1456899900  ', CAST(N'1995-08-08T00:00:00.000' AS DateTime), N'ha tay', N'bao ve', N'bao ve', N'kinh te', N'2 nam', CAST(N'2008-05-05T00:00:00.000' AS DateTime), CAST(N'2010-05-05T00:00:00.000' AS DateTime), N'khong                                                                                               ', N'bao ve')
INSERT [dbo].[TblTTNVCoBan] ([MaBoPhan], [MaPhong], [MaNV], [HoTen], [BiDanh], [NgaySinh], [GioiTinh], [TTHonNhan], [CMTND], [NgayCap], [NoiCap], [ChucVu], [ChucDanh], [LoaiHD], [ThoiGian], [NgayKy], [NgayHetHan], [Anh], [GhiChu]) VALUES (N'mb020     ', N'mp020     ', N'0021      ', N'nguyen van cuong', N'giam doc', CAST(N'1972-08-08T00:00:00.000' AS DateTime), N'nam', N'roi', N'3546788432  ', CAST(N'1994-05-07T00:00:00.000' AS DateTime), N'hai duong', N'giam doc', N'giamdoc', N'kinh te', N'5 nam', CAST(N'2007-05-05T00:00:00.000' AS DateTime), CAST(N'2012-05-05T00:00:00.000' AS DateTime), N'co                                                                                                  ', N'giamdoc')
INSERT [dbo].[TblTTNVCoBan] ([MaBoPhan], [MaPhong], [MaNV], [HoTen], [BiDanh], [NgaySinh], [GioiTinh], [TTHonNhan], [CMTND], [NgayCap], [NoiCap], [ChucVu], [ChucDanh], [LoaiHD], [ThoiGian], [NgayKy], [NgayHetHan], [Anh], [GhiChu]) VALUES (N'mb021     ', N'mp021     ', N'0022      ', N'tran thi k', N'nhan vien', CAST(N'1986-05-06T00:00:00.000' AS DateTime), N'nu', N'chua', N'2949590134  ', CAST(N'2001-02-05T00:00:00.000' AS DateTime), N'bac ninh', N'nhan vien', N'nhan vien', N'hinh te', N'24 thang', CAST(N'2008-06-12T00:00:00.000' AS DateTime), CAST(N'2010-02-12T00:00:00.000' AS DateTime), N'co                                                                                                  ', N'nhan vin')
INSERT [dbo].[TblTTNVCoBan] ([MaBoPhan], [MaPhong], [MaNV], [HoTen], [BiDanh], [NgaySinh], [GioiTinh], [TTHonNhan], [CMTND], [NgayCap], [NoiCap], [ChucVu], [ChucDanh], [LoaiHD], [ThoiGian], [NgayKy], [NgayHetHan], [Anh], [GhiChu]) VALUES (N'mb022     ', N'mp022     ', N'0023      ', N'le hoai thu', N'Cb bao hiem', CAST(N'1985-07-07T00:00:00.000' AS DateTime), N'nu', N'roi', N'1459077992  ', CAST(N'1998-04-05T00:00:00.000' AS DateTime), N'hung yen', N'Cb bao hiem', N'Cb bao hiem', N'kinh te', N'36 thang', CAST(N'2008-06-12T00:00:00.000' AS DateTime), CAST(N'2011-06-12T00:00:00.000' AS DateTime), N'co                                                                                                  ', N'Cb bao hiem')
INSERT [dbo].[TblTTNVCoBan] ([MaBoPhan], [MaPhong], [MaNV], [HoTen], [BiDanh], [NgaySinh], [GioiTinh], [TTHonNhan], [CMTND], [NgayCap], [NoiCap], [ChucVu], [ChucDanh], [LoaiHD], [ThoiGian], [NgayKy], [NgayHetHan], [Anh], [GhiChu]) VALUES (N'mb023     ', N'mp023     ', N'0024      ', N'ho van s', N'nhan vien', CAST(N'1981-05-06T00:00:00.000' AS DateTime), N'nam', N'roi', N'2980554567  ', CAST(N'1997-05-06T00:00:00.000' AS DateTime), N'hai duong', N'nhan vien', N'nhan vien', N'kinh te ', N'24thang', CAST(N'2008-06-12T00:00:00.000' AS DateTime), CAST(N'2010-06-12T00:00:00.000' AS DateTime), N'co                                                                                                  ', N'nhan vien')
INSERT [dbo].[TblTTNVCoBan] ([MaBoPhan], [MaPhong], [MaNV], [HoTen], [BiDanh], [NgaySinh], [GioiTinh], [TTHonNhan], [CMTND], [NgayCap], [NoiCap], [ChucVu], [ChucDanh], [LoaiHD], [ThoiGian], [NgayKy], [NgayHetHan], [Anh], [GhiChu]) VALUES (N'mb024     ', N'mp024     ', N'0025      ', N'phamvan z', N'can bo', CAST(N'1975-04-07T00:00:00.000' AS DateTime), N'nam', N'roi', N'8947744895  ', CAST(N'1995-08-08T00:00:00.000' AS DateTime), N'bac giang', N'can bo', N'can bo', N'kinh te', N'24thang', CAST(N'2008-06-12T00:00:00.000' AS DateTime), CAST(N'2010-06-12T00:00:00.000' AS DateTime), N'khong                                                                                               ', N'can bo')
INSERT [dbo].[TblTTNVCoBan] ([MaBoPhan], [MaPhong], [MaNV], [HoTen], [BiDanh], [NgaySinh], [GioiTinh], [TTHonNhan], [CMTND], [NgayCap], [NoiCap], [ChucVu], [ChucDanh], [LoaiHD], [ThoiGian], [NgayKy], [NgayHetHan], [Anh], [GhiChu]) VALUES (N'mb025     ', N'mp025     ', N'0026      ', N'bui thi n', N'can bo', CAST(N'1984-05-05T00:00:00.000' AS DateTime), N'nu', N'chua', N'3895277845  ', CAST(N'1999-05-04T00:00:00.000' AS DateTime), N'bac ninh', N'can bo', N'can bo', N'kinh te', N'24 thang', CAST(N'2008-06-12T00:00:00.000' AS DateTime), CAST(N'2010-06-12T00:00:00.000' AS DateTime), N'co                                                                                                  ', N'can bo')
INSERT [dbo].[TblTTNVCoBan] ([MaBoPhan], [MaPhong], [MaNV], [HoTen], [BiDanh], [NgaySinh], [GioiTinh], [TTHonNhan], [CMTND], [NgayCap], [NoiCap], [ChucVu], [ChucDanh], [LoaiHD], [ThoiGian], [NgayKy], [NgayHetHan], [Anh], [GhiChu]) VALUES (N'mb03      ', N'mp03      ', N'003       ', N'nguyen thi t', N'thu ki', CAST(N'1987-04-06T00:00:00.000' AS DateTime), N'nu', N'chua', N'145287556   ', CAST(N'2003-04-01T00:00:00.000' AS DateTime), N'Ha Nam', N'thu ki giam doc', N'thu ki', N'kinh te', N'24 thang', CAST(N'2008-04-09T00:00:00.000' AS DateTime), CAST(N'2010-04-09T00:00:00.000' AS DateTime), N'khong co                                                                                            ', N'thu ki')
INSERT [dbo].[TblTTNVCoBan] ([MaBoPhan], [MaPhong], [MaNV], [HoTen], [BiDanh], [NgaySinh], [GioiTinh], [TTHonNhan], [CMTND], [NgayCap], [NoiCap], [ChucVu], [ChucDanh], [LoaiHD], [ThoiGian], [NgayKy], [NgayHetHan], [Anh], [GhiChu]) VALUES (N'mb04      ', N'mp04      ', N'004       ', N'nguyen van dat', N'phoGdoc', CAST(N'1986-12-11T00:00:00.000' AS DateTime), N'nam', N'co roi', N'166328637   ', CAST(N'1999-06-10T00:00:00.000' AS DateTime), N'bac giang', N'pho Gdoc', N'phoG.doc', N'kinhte', N'48 thang', CAST(N'2007-12-11T00:00:00.000' AS DateTime), CAST(N'2010-12-11T00:00:00.000' AS DateTime), N'co                                                                                                  ', N'phoG.doc')
INSERT [dbo].[TblTTNVCoBan] ([MaBoPhan], [MaPhong], [MaNV], [HoTen], [BiDanh], [NgaySinh], [GioiTinh], [TTHonNhan], [CMTND], [NgayCap], [NoiCap], [ChucVu], [ChucDanh], [LoaiHD], [ThoiGian], [NgayKy], [NgayHetHan], [Anh], [GhiChu]) VALUES (N'mb02      ', N'mp02      ', N'005       ', N'nguyen thi b', N'nhan vien', CAST(N'1986-05-09T00:00:00.000' AS DateTime), N'nu', N'chua', N'123456789   ', CAST(N'2002-03-02T00:00:00.000' AS DateTime), N'Hung yen', N'nhan vien marketing', N'nhan vien marketing', N'kinh te', N'36 thang', CAST(N'2007-03-05T00:00:00.000' AS DateTime), CAST(N'2010-03-05T00:00:00.000' AS DateTime), N'khong co                                                                                            ', N'nhan vien')
INSERT [dbo].[TblTTNVCoBan] ([MaBoPhan], [MaPhong], [MaNV], [HoTen], [BiDanh], [NgaySinh], [GioiTinh], [TTHonNhan], [CMTND], [NgayCap], [NoiCap], [ChucVu], [ChucDanh], [LoaiHD], [ThoiGian], [NgayKy], [NgayHetHan], [Anh], [GhiChu]) VALUES (N'mb05      ', N'mp05      ', N'006       ', N'tran duc quynh', N'PP dientoan', CAST(N'1985-07-08T00:00:00.000' AS DateTime), N'nam', N'co roi', N'145678899   ', CAST(N'1997-05-07T00:00:00.000' AS DateTime), N'thai binh ', N'PP dien toan', N'PP dientoan', N'kinh te', N'24 thang', CAST(N'2008-04-08T00:00:00.000' AS DateTime), CAST(N'2010-04-08T00:00:00.000' AS DateTime), N'co biet                                                                                             ', N'PP dien toan')
INSERT [dbo].[TblTTNVCoBan] ([MaBoPhan], [MaPhong], [MaNV], [HoTen], [BiDanh], [NgaySinh], [GioiTinh], [TTHonNhan], [CMTND], [NgayCap], [NoiCap], [ChucVu], [ChucDanh], [LoaiHD], [ThoiGian], [NgayKy], [NgayHetHan], [Anh], [GhiChu]) VALUES (N'mb06      ', N'mp06      ', N'007       ', N'le binh nam', N'truong phong', CAST(N'1985-08-09T00:00:00.000' AS DateTime), N'nam', N'chua', N'1983477217  ', CAST(N'1999-08-04T00:00:00.000' AS DateTime), N'hai duong', N'truong phong', N'truong phong', N'kinh te', N'36 thang', CAST(N'2007-05-03T00:00:00.000' AS DateTime), CAST(N'2010-05-03T00:00:00.000' AS DateTime), N'co                                                                                                  ', N'truong phong')
INSERT [dbo].[TblTTNVCoBan] ([MaBoPhan], [MaPhong], [MaNV], [HoTen], [BiDanh], [NgaySinh], [GioiTinh], [TTHonNhan], [CMTND], [NgayCap], [NoiCap], [ChucVu], [ChucDanh], [LoaiHD], [ThoiGian], [NgayKy], [NgayHetHan], [Anh], [GhiChu]) VALUES (N'mb07      ', N'mp07      ', N'008       ', N'duong hoang long', N'CB kehoach', CAST(N'1984-07-01T00:00:00.000' AS DateTime), N'nam', N'chua', N'3494388888  ', CAST(N'1998-07-11T00:00:00.000' AS DateTime), N'hai phong', N'CB kehoach', N'Cb kehoach', N'kinh te', N'24thang', CAST(N'2008-08-04T00:00:00.000' AS DateTime), CAST(N'2010-04-25T00:00:00.000' AS DateTime), N'co                                                                                                  ', N'can bo')
INSERT [dbo].[TblTTNVCoBan] ([MaBoPhan], [MaPhong], [MaNV], [HoTen], [BiDanh], [NgaySinh], [GioiTinh], [TTHonNhan], [CMTND], [NgayCap], [NoiCap], [ChucVu], [ChucDanh], [LoaiHD], [ThoiGian], [NgayKy], [NgayHetHan], [Anh], [GhiChu]) VALUES (N'mb08      ', N'mp08      ', N'009       ', N'nguyen thi quyen', N'to truong', CAST(N'1985-07-02T00:00:00.000' AS DateTime), N'nu', N'roi', N'2174743899  ', CAST(N'1999-04-12T00:00:00.000' AS DateTime), N'ninh binh', N'to truong', N'to truong', N'kinh te', N'24 thang', CAST(N'2008-06-12T00:00:00.000' AS DateTime), CAST(N'2010-06-12T00:00:00.000' AS DateTime), N'co biet                                                                                             ', N'to truong')
INSERT [dbo].[TblTTNVCoBan] ([MaBoPhan], [MaPhong], [MaNV], [HoTen], [BiDanh], [NgaySinh], [GioiTinh], [TTHonNhan], [CMTND], [NgayCap], [NoiCap], [ChucVu], [ChucDanh], [LoaiHD], [ThoiGian], [NgayKy], [NgayHetHan], [Anh], [GhiChu]) VALUES (N'mb08      ', N'mp08      ', N'0090      ', N'nguyen thi quyen', N'to truong', CAST(N'1985-02-07T00:00:00.000' AS DateTime), N'nu', N'roi', N'2174743899  ', CAST(N'1999-12-04T00:00:00.000' AS DateTime), N'ninh binh', N'to truong', N'to truong', N'kinh te', N'24 thang', CAST(N'2008-12-06T00:00:00.000' AS DateTime), CAST(N'2010-12-06T00:00:00.000' AS DateTime), N'co biet                                                                                             ', N'to truong')
GO
INSERT [dbo].[TblThaiSan] ([MaBoPhan], [MaPhong], [MaNV], [HoTen], [NgaySinh], [NgayVeSom], [NgayNghiSinh], [NgayLamTroLai], [TroCapCTY], [GhiChu]) VALUES (N'mb01      ', N'mp01      ', N'001       ', N'nguyen thi g', CAST(N'1982-01-24T00:00:00.000' AS DateTime), CAST(N'2015-04-09T00:00:00.000' AS DateTime), CAST(N'2005-06-23T00:00:00.000' AS DateTime), CAST(N'2005-10-23T00:00:00.000' AS DateTime), 500000, N'hghjhg')
INSERT [dbo].[TblThaiSan] ([MaBoPhan], [MaPhong], [MaNV], [HoTen], [NgaySinh], [NgayVeSom], [NgayNghiSinh], [NgayLamTroLai], [TroCapCTY], [GhiChu]) VALUES (N'mb02      ', N'mp02      ', N'002       ', N'nguyen thi b', CAST(N'1987-09-09T00:00:00.000' AS DateTime), CAST(N'2020-10-09T00:00:00.000' AS DateTime), CAST(N'2008-11-25T00:00:00.000' AS DateTime), CAST(N'2009-05-25T00:00:00.000' AS DateTime), 100000, N'kgfgj')
INSERT [dbo].[TblThaiSan] ([MaBoPhan], [MaPhong], [MaNV], [HoTen], [NgaySinh], [NgayVeSom], [NgayNghiSinh], [NgayLamTroLai], [TroCapCTY], [GhiChu]) VALUES (N'mb03      ', N'mp03      ', N'003       ', N'nguyen thi t', CAST(N'1887-04-20T00:00:00.000' AS DateTime), CAST(N'2012-11-06T00:00:00.000' AS DateTime), CAST(N'2000-04-15T00:00:00.000' AS DateTime), CAST(N'2000-10-15T00:00:00.000' AS DateTime), 100000, N'dedwe')
INSERT [dbo].[TblThaiSan] ([MaBoPhan], [MaPhong], [MaNV], [HoTen], [NgaySinh], [NgayVeSom], [NgayNghiSinh], [NgayLamTroLai], [TroCapCTY], [GhiChu]) VALUES (N'mb04      ', N'mp04      ', N'004       ', N'pham thi l', CAST(N'1986-12-11T00:00:00.000' AS DateTime), CAST(N'2012-05-08T00:00:00.000' AS DateTime), CAST(N'2000-06-08T00:00:00.000' AS DateTime), CAST(N'2001-06-08T00:00:00.000' AS DateTime), 100000, N'ererwewe')
INSERT [dbo].[TblThaiSan] ([MaBoPhan], [MaPhong], [MaNV], [HoTen], [NgaySinh], [NgayVeSom], [NgayNghiSinh], [NgayLamTroLai], [TroCapCTY], [GhiChu]) VALUES (N'mb05      ', N'mpo5      ', N'005       ', N'nguyen thi b', CAST(N'1985-05-09T00:00:00.000' AS DateTime), CAST(N'2013-08-07T00:00:00.000' AS DateTime), CAST(N'2007-05-03T00:00:00.000' AS DateTime), CAST(N'2007-05-07T00:00:00.000' AS DateTime), 500000, N'trtr')
INSERT [dbo].[TblThaiSan] ([MaBoPhan], [MaPhong], [MaNV], [HoTen], [NgaySinh], [NgayVeSom], [NgayNghiSinh], [NgayLamTroLai], [TroCapCTY], [GhiChu]) VALUES (N'mb09      ', N'mp09      ', N'009       ', N'nguyen thi quyen', CAST(N'1985-07-02T00:00:00.000' AS DateTime), CAST(N'2012-06-05T00:00:00.000' AS DateTime), CAST(N'2008-06-09T00:00:00.000' AS DateTime), CAST(N'2008-06-02T00:00:00.000' AS DateTime), 100000, N'erfdff')
INSERT [dbo].[TblThaiSan] ([MaBoPhan], [MaPhong], [MaNV], [HoTen], [NgaySinh], [NgayVeSom], [NgayNghiSinh], [NgayLamTroLai], [TroCapCTY], [GhiChu]) VALUES (N'mb011     ', N'mp011     ', N'0011      ', N'bui thi mai', CAST(N'1986-05-06T00:00:00.000' AS DateTime), CAST(N'2013-08-04T00:00:00.000' AS DateTime), CAST(N'2006-05-03T00:00:00.000' AS DateTime), CAST(N'2006-04-09T00:00:00.000' AS DateTime), 200000, N'fbvfdd')
INSERT [dbo].[TblThaiSan] ([MaBoPhan], [MaPhong], [MaNV], [HoTen], [NgaySinh], [NgayVeSom], [NgayNghiSinh], [NgayLamTroLai], [TroCapCTY], [GhiChu]) VALUES (N'mb07      ', N'mp07      ', N'007       ', N'le thi d', CAST(N'1983-02-05T00:00:00.000' AS DateTime), CAST(N'2010-07-03T00:00:00.000' AS DateTime), CAST(N'2008-06-07T00:00:00.000' AS DateTime), CAST(N'2009-06-02T00:00:00.000' AS DateTime), 100000, N'lerlkreler')
GO
INSERT [dbo].[tbuser] ([Username], [Pass], [Ten], [Ngaysinh]) VALUES (N'Duongnx', N'888', N'Duong', CAST(N'2000-03-25T00:00:00.000' AS DateTime))
GO
ALTER TABLE [dbo].[TblBangCongThuViec]  WITH CHECK ADD  CONSTRAINT [FK_TblBangCongThuViec_TblHoSoThuViec] FOREIGN KEY([MaNV])
REFERENCES [dbo].[TblHoSoThuViec] ([MaNV])
GO
ALTER TABLE [dbo].[TblBangCongThuViec] CHECK CONSTRAINT [FK_TblBangCongThuViec_TblHoSoThuViec]
GO
ALTER TABLE [dbo].[TblCongKhoiDieuHanh]  WITH NOCHECK ADD  CONSTRAINT [FK_TblCongKhoiDieuHanh_TblTTNVCoBan] FOREIGN KEY([MaNV])
REFERENCES [dbo].[TblTTNVCoBan] ([MaNV])
GO
ALTER TABLE [dbo].[TblCongKhoiDieuHanh] CHECK CONSTRAINT [FK_TblCongKhoiDieuHanh_TblTTNVCoBan]
GO
ALTER TABLE [dbo].[TblCongKhoiSanXuat]  WITH CHECK ADD  CONSTRAINT [FK_TblCongKhoiSanXuat_TblPhongBan] FOREIGN KEY([MaPhong])
REFERENCES [dbo].[TblPhongBan] ([MaPhong])
GO
ALTER TABLE [dbo].[TblCongKhoiSanXuat] CHECK CONSTRAINT [FK_TblCongKhoiSanXuat_TblPhongBan]
GO
ALTER TABLE [dbo].[TblCongKhoiVanChuyen]  WITH NOCHECK ADD  CONSTRAINT [FK_TblCongKhoiVanChuyen_TblTTNVCoBan] FOREIGN KEY([MaNV])
REFERENCES [dbo].[TblTTNVCoBan] ([MaNV])
GO
ALTER TABLE [dbo].[TblCongKhoiVanChuyen] CHECK CONSTRAINT [FK_TblCongKhoiVanChuyen_TblTTNVCoBan]
GO
ALTER TABLE [dbo].[TblCongKhoiVanPHong]  WITH NOCHECK ADD  CONSTRAINT [FK_TblCongKhoiVanPHong_TblTTNVCoBan] FOREIGN KEY([MaNV])
REFERENCES [dbo].[TblTTNVCoBan] ([MaNV])
GO
ALTER TABLE [dbo].[TblCongKhoiVanPHong] CHECK CONSTRAINT [FK_TblCongKhoiVanPHong_TblTTNVCoBan]
GO
ALTER TABLE [dbo].[TblPhongBan]  WITH CHECK ADD  CONSTRAINT [FK_TblPhongBan_TblBoPhan] FOREIGN KEY([MaBoPhan])
REFERENCES [dbo].[TblBoPhan] ([MaBophan])
GO
ALTER TABLE [dbo].[TblPhongBan] CHECK CONSTRAINT [FK_TblPhongBan_TblBoPhan]
GO
ALTER TABLE [dbo].[TblSoBH]  WITH CHECK ADD  CONSTRAINT [FK_TblSoBH_TblBangLuongCTy] FOREIGN KEY([MaLuong])
REFERENCES [dbo].[TblBangLuongCTy] ([MaLuong])
GO
ALTER TABLE [dbo].[TblSoBH] CHECK CONSTRAINT [FK_TblSoBH_TblBangLuongCTy]
GO
ALTER TABLE [dbo].[TblTangLuong]  WITH NOCHECK ADD  CONSTRAINT [FK_TblTangLuong_TblTTNVCoBan] FOREIGN KEY([MaNV])
REFERENCES [dbo].[TblTTNVCoBan] ([MaNV])
GO
ALTER TABLE [dbo].[TblTangLuong] CHECK CONSTRAINT [FK_TblTangLuong_TblTTNVCoBan]
GO
ALTER TABLE [dbo].[TblTTCaNhan]  WITH NOCHECK ADD  CONSTRAINT [FK_TblTTCaNhan_TblTTNVCoBan] FOREIGN KEY([MaNV])
REFERENCES [dbo].[TblTTNVCoBan] ([MaNV])
GO
ALTER TABLE [dbo].[TblTTCaNhan] CHECK CONSTRAINT [FK_TblTTCaNhan_TblTTNVCoBan]
GO
ALTER TABLE [dbo].[TblThaiSan]  WITH NOCHECK ADD  CONSTRAINT [FK_TblThaiSan_TblTTNVCoBan] FOREIGN KEY([MaNV])
REFERENCES [dbo].[TblTTNVCoBan] ([MaNV])
GO
ALTER TABLE [dbo].[TblThaiSan] CHECK CONSTRAINT [FK_TblThaiSan_TblTTNVCoBan]
GO
