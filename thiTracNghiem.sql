USE [Quan_Ly_Thi_Trac_Nghiem]
GO
/****** Object:  Table [dbo].[CAUHOI]    Script Date: 1/13/2022 8:07:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CAUHOI](
	[MaCH] [int] IDENTITY(1,1) NOT NULL,
	[MaMon] [nvarchar](20) NOT NULL,
	[NoiDungCH] [nvarchar](300) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaCH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DAPAN]    Script Date: 1/13/2022 8:07:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DAPAN](
	[MaDA] [int] IDENTITY(1,1) NOT NULL,
	[MaCH] [int] NOT NULL,
	[NoiDungDA] [nvarchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GIANGVIEN]    Script Date: 1/13/2022 8:07:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GIANGVIEN](
	[MaGV] [nvarchar](20) NOT NULL,
	[TenGV] [nvarchar](30) NOT NULL,
	[TKGV] [nvarchar](30) NOT NULL,
	[MKGV] [nvarchar](30) NOT NULL,
	[QuyenGV] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaGV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KETQUA]    Script Date: 1/13/2022 8:07:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KETQUA](
	[MaKQ] [int] IDENTITY(1,1) NOT NULL,
	[MaTS] [nvarchar](20) NOT NULL,
	[MaKT] [nvarchar](20) NOT NULL,
	[NgayThi] [datetime] NOT NULL,
	[Diem] [float] NOT NULL,
	[TongTGThi] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKQ] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KHOA]    Script Date: 1/13/2022 8:07:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHOA](
	[MaKhoa] [nvarchar](20) NOT NULL,
	[TenKhoa] [nvarchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKhoa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KYTHI]    Script Date: 1/13/2022 8:07:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KYTHI](
	[MaKT] [nvarchar](20) NOT NULL,
	[MaMon] [nvarchar](20) NOT NULL,
	[TenKT] [nvarchar](30) NOT NULL,
	[MaGV] [nvarchar](20) NOT NULL,
	[TGLamBai] [int] NOT NULL,
	[TGMoDe] [datetime] NOT NULL,
	[TGDongDe] [datetime] NOT NULL,
	[TongSoCau] [int] NOT NULL,
	[MatKhauKT] [nvarchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOP]    Script Date: 1/13/2022 8:07:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOP](
	[MaLop] [nvarchar](20) NOT NULL,
	[MaKhoa] [nvarchar](20) NOT NULL,
	[TenLop] [nvarchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLop] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MON]    Script Date: 1/13/2022 8:07:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MON](
	[MaMon] [nvarchar](20) NOT NULL,
	[TenMon] [nvarchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaMon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[THISINH]    Script Date: 1/13/2022 8:07:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[THISINH](
	[MaTS] [nvarchar](20) NOT NULL,
	[TenTS] [nvarchar](30) NOT NULL,
	[TKTS] [nvarchar](30) NOT NULL,
	[MKTS] [nvarchar](30) NOT NULL,
	[MaLop] [nvarchar](20) NOT NULL,
	[QuyenTS] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaTS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VIPHAM]    Script Date: 1/13/2022 8:07:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VIPHAM](
	[MaVP] [int] IDENTITY(1,1) NOT NULL,
	[MaKQ] [int] NOT NULL,
	[Loi] [nvarchar](300) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaVP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CAUHOI] ON 

INSERT [dbo].[CAUHOI] ([MaCH], [MaMon], [NoiDungCH]) VALUES (1, N'CSDL', N'Một hệ quản trị CSDL không có chức năng nào trong các chức năng dưới đây?
A. Cung cấp môi trường tạo lập CSDL
B. Cung cấp môi trường cập nhật và khai thác dữ liệu
C. Cung cấp công cụ quản lí bộ nhớ
D. Cung cấp công cụ kiểm soát, điều khiển truy cập vào CSDL.')
INSERT [dbo].[CAUHOI] ([MaCH], [MaMon], [NoiDungCH]) VALUES (2, N'CSDL', N'Ngôn ngữ định nghĩa dữ liệu thật chất là:
A. Ngôn ngữ lập trình Pascal
B. Ngôn ngữ C
C. Các kí hiệu toán học dùng để thực hiện các tính toán
D. Hệ thống các kí hiệu đề mô tả CSDL')
INSERT [dbo].[CAUHOI] ([MaCH], [MaMon], [NoiDungCH]) VALUES (3, N'CSDL', N'Ngôn ngữ định nghĩa dữ liệu bao gồm các lệnh cho phép:
A. Đảm bảo tính độc lập dữ liệu
B. Khai báo kiểu dữ liệu, cấu trúc dữ liệu và các ràng buộc trên dữ liệu của CSDL
C. Mô tả các đối tượng được lưu trữ trong CSDL
D. Khai báo kiểu dữ liệu của CSDL')
INSERT [dbo].[CAUHOI] ([MaCH], [MaMon], [NoiDungCH]) VALUES (4, N'CSDL', N'Ngôn ngữ thao tác dữ liệu thật chất là:
A. Ngôn ngữ đề người dùng diễn tả yêu cầu cập nhật hay khai thác thông tin
B. Ngôn ngữ để người dùng diễn tả yêu cầu cập nhật thông tin
C. Ngôn ngữ SQL
D. Ngôn ngữ bậc cao')
INSERT [dbo].[CAUHOI] ([MaCH], [MaMon], [NoiDungCH]) VALUES (5, N'CSDL', N'Ngôn ngữ CSDL được sử dụng phổ biến hiện nay là:
A. SQL
B. Access
C. Foxpro
D. Java')
INSERT [dbo].[CAUHOI] ([MaCH], [MaMon], [NoiDungCH]) VALUES (6, N'CSDL', N'Người nào đã tạo ra các phần mềm ứng dụng đáp ứng nhu cầu khai thác thông tin từ CSDL?
A. Người dùng
B. Người lập trình ứng dụng
C. Người QT CSDL
D. Cả ba người trên')
INSERT [dbo].[CAUHOI] ([MaCH], [MaMon], [NoiDungCH]) VALUES (7, N'CNPM', N'Ba giai đoạn tổng quát của công nghệ phần mềm?
A. Definition, development, support
B. What, how, where
C. Programming, debugging, maintenance
D. Analysis, design, testing')
INSERT [dbo].[CAUHOI] ([MaCH], [MaMon], [NoiDungCH]) VALUES (8, N'CNPM', N'Mô hình phát triển ứng dụng nhanh:
A. Một cách gọi khác của mô hình phát triển dựa vào thành phần
B. Một cách hữu dụng khi khách hàng không xàc định yêu cầu rõ ràng
C. Sự ráp nối tốc độ cao của mô hình tuần tự tuyến tính
D. Tất cả mục trên')
INSERT [dbo].[CAUHOI] ([MaCH], [MaMon], [NoiDungCH]) VALUES (9, N'CNPM', N'Mô hình phát triển phần mềm xoắn ốc:
A. Kết thúc với việc xuất xưởng sản phẩm phần mềm
B. Nhiều hỗn độn hơn với mô hình gia tăng
C. Bao gồm việc đánh giá những rủi ro phần mềm trong mỗi vòng lặp
D. Tất cả điều trên')
INSERT [dbo].[CAUHOI] ([MaCH], [MaMon], [NoiDungCH]) VALUES (10, N'CNPM', N'Mô hình phát triển dựa vào thành phần:
A. Chỉ phù hợp cho thiết kế phần cứng máy tính
B. Không thể hỗ trợ phát triển những thành phần sử dụng lại
C. Dựa vào những kỹ thuật hỗ trợ đối tượng
D. Không định chi phí hiệu quả bằng những độ đo phần mềm có thể định lượng')
INSERT [dbo].[CAUHOI] ([MaCH], [MaMon], [NoiDungCH]) VALUES (11, N'CNPM', N'Thành phần nào của kỹ thuật tiến trình nghiệp vụ là trách nhiệm của kỹ sư phần mềm:
A. Phân tích phạm vi nghiệp vụ
B. Thiết kế hệ thống nghiệp vụ
C. Kế hoạch sản phẩm
D. Kế hoạch chiến lược thông tin')
SET IDENTITY_INSERT [dbo].[CAUHOI] OFF
GO
SET IDENTITY_INSERT [dbo].[DAPAN] ON 

INSERT [dbo].[DAPAN] ([MaDA], [MaCH], [NoiDungDA]) VALUES (1, 1, N'A')
INSERT [dbo].[DAPAN] ([MaDA], [MaCH], [NoiDungDA]) VALUES (2, 2, N'C')
INSERT [dbo].[DAPAN] ([MaDA], [MaCH], [NoiDungDA]) VALUES (3, 3, N'B')
INSERT [dbo].[DAPAN] ([MaDA], [MaCH], [NoiDungDA]) VALUES (4, 4, N'A')
INSERT [dbo].[DAPAN] ([MaDA], [MaCH], [NoiDungDA]) VALUES (5, 5, N'A')
INSERT [dbo].[DAPAN] ([MaDA], [MaCH], [NoiDungDA]) VALUES (6, 6, N'C')
INSERT [dbo].[DAPAN] ([MaDA], [MaCH], [NoiDungDA]) VALUES (7, 7, N'D')
INSERT [dbo].[DAPAN] ([MaDA], [MaCH], [NoiDungDA]) VALUES (8, 8, N'A')
INSERT [dbo].[DAPAN] ([MaDA], [MaCH], [NoiDungDA]) VALUES (9, 9, N'B')
INSERT [dbo].[DAPAN] ([MaDA], [MaCH], [NoiDungDA]) VALUES (10, 10, N'B')
INSERT [dbo].[DAPAN] ([MaDA], [MaCH], [NoiDungDA]) VALUES (11, 11, N'A')
SET IDENTITY_INSERT [dbo].[DAPAN] OFF
GO
INSERT [dbo].[GIANGVIEN] ([MaGV], [TenGV], [TKGV], [MKGV], [QuyenGV]) VALUES (N'GV1', N'Cù Việt Dũng', N'106gv1', N'106gv12022', 1)
INSERT [dbo].[GIANGVIEN] ([MaGV], [TenGV], [TKGV], [MKGV], [QuyenGV]) VALUES (N'GV2', N'Trương Xuân Nam', N'106gv2', N'106gv22022', 1)
INSERT [dbo].[GIANGVIEN] ([MaGV], [TenGV], [TKGV], [MKGV], [QuyenGV]) VALUES (N'GV3', N'Vũ Mạnh Tới', N'106gv3', N'106gv32022', 0)
INSERT [dbo].[GIANGVIEN] ([MaGV], [TenGV], [TKGV], [MKGV], [QuyenGV]) VALUES (N'GV4', N'Nguyễn Hữu Thọ', N'106gv4', N'106gv42022', 0)
GO
SET IDENTITY_INSERT [dbo].[KETQUA] ON 

INSERT [dbo].[KETQUA] ([MaKQ], [MaTS], [MaKT], [NgayThi], [Diem], [TongTGThi]) VALUES (3, N'2051060000', N'15PCSDL', CAST(N'2021-01-11T09:00:00.000' AS DateTime), 8.3, 5)
INSERT [dbo].[KETQUA] ([MaKQ], [MaTS], [MaKT], [NgayThi], [Diem], [TongTGThi]) VALUES (4, N'2051060001', N'15PCSDL', CAST(N'2021-01-11T09:00:00.000' AS DateTime), 10, 3)
INSERT [dbo].[KETQUA] ([MaKQ], [MaTS], [MaKT], [NgayThi], [Diem], [TongTGThi]) VALUES (5, N'2051060004', N'15PCSDL', CAST(N'2021-01-11T09:00:00.000' AS DateTime), 5, 6)
INSERT [dbo].[KETQUA] ([MaKQ], [MaTS], [MaKT], [NgayThi], [Diem], [TongTGThi]) VALUES (6, N'2051060007', N'15PCSDL', CAST(N'2021-01-11T09:00:00.000' AS DateTime), 10, 7)
INSERT [dbo].[KETQUA] ([MaKQ], [MaTS], [MaKT], [NgayThi], [Diem], [TongTGThi]) VALUES (7, N'2051060008', N'15PCSDL', CAST(N'2021-01-11T09:00:00.000' AS DateTime), 8.3, 11)
INSERT [dbo].[KETQUA] ([MaKQ], [MaTS], [MaKT], [NgayThi], [Diem], [TongTGThi]) VALUES (8, N'2051060009', N'15PCSDL', CAST(N'2021-01-11T09:00:00.000' AS DateTime), 10, 8)
INSERT [dbo].[KETQUA] ([MaKQ], [MaTS], [MaKT], [NgayThi], [Diem], [TongTGThi]) VALUES (9, N'2051060011', N'15PCSDL', CAST(N'2021-01-11T09:00:00.000' AS DateTime), 3.3, 12)
INSERT [dbo].[KETQUA] ([MaKQ], [MaTS], [MaKT], [NgayThi], [Diem], [TongTGThi]) VALUES (10, N'2051060013', N'15PCSDL', CAST(N'2021-01-11T09:00:00.000' AS DateTime), 8.3, 14)
INSERT [dbo].[KETQUA] ([MaKQ], [MaTS], [MaKT], [NgayThi], [Diem], [TongTGThi]) VALUES (11, N'2051060015', N'15PCSDL', CAST(N'2021-01-11T09:00:00.000' AS DateTime), 5, 15)
INSERT [dbo].[KETQUA] ([MaKQ], [MaTS], [MaKT], [NgayThi], [Diem], [TongTGThi]) VALUES (12, N'2051060016', N'15PCSDL', CAST(N'2021-01-11T09:00:00.000' AS DateTime), 5, 13)
INSERT [dbo].[KETQUA] ([MaKQ], [MaTS], [MaKT], [NgayThi], [Diem], [TongTGThi]) VALUES (13, N'2051060018', N'15PCSDL', CAST(N'2021-01-11T09:00:00.000' AS DateTime), 6.6, 15)
INSERT [dbo].[KETQUA] ([MaKQ], [MaTS], [MaKT], [NgayThi], [Diem], [TongTGThi]) VALUES (14, N'2051060020', N'15PCSDL', CAST(N'2021-01-11T09:00:00.000' AS DateTime), 5, 11)
INSERT [dbo].[KETQUA] ([MaKQ], [MaTS], [MaKT], [NgayThi], [Diem], [TongTGThi]) VALUES (15, N'2051060021', N'15PCSDL', CAST(N'2021-01-11T09:00:00.000' AS DateTime), 8.3, 15)
INSERT [dbo].[KETQUA] ([MaKQ], [MaTS], [MaKT], [NgayThi], [Diem], [TongTGThi]) VALUES (16, N'2051060022', N'15PCSDL', CAST(N'2021-01-11T09:00:00.000' AS DateTime), 10, 13)
INSERT [dbo].[KETQUA] ([MaKQ], [MaTS], [MaKT], [NgayThi], [Diem], [TongTGThi]) VALUES (17, N'2051060023', N'15PCSDL', CAST(N'2021-01-11T09:00:00.000' AS DateTime), 6.6, 12)
INSERT [dbo].[KETQUA] ([MaKQ], [MaTS], [MaKT], [NgayThi], [Diem], [TongTGThi]) VALUES (18, N'2051060025', N'15PCSDL', CAST(N'2021-01-11T09:00:00.000' AS DateTime), 8.3, 15)
INSERT [dbo].[KETQUA] ([MaKQ], [MaTS], [MaKT], [NgayThi], [Diem], [TongTGThi]) VALUES (19, N'2051060027', N'15PCSDL', CAST(N'2021-01-11T09:00:00.000' AS DateTime), 6.6, 15)
INSERT [dbo].[KETQUA] ([MaKQ], [MaTS], [MaKT], [NgayThi], [Diem], [TongTGThi]) VALUES (20, N'2051060028', N'15PCSDL', CAST(N'2021-01-11T09:00:00.000' AS DateTime), 8.3, 10)
INSERT [dbo].[KETQUA] ([MaKQ], [MaTS], [MaKT], [NgayThi], [Diem], [TongTGThi]) VALUES (21, N'2051060031', N'15PCSDL', CAST(N'2021-01-11T09:00:00.000' AS DateTime), 6.6, 15)
INSERT [dbo].[KETQUA] ([MaKQ], [MaTS], [MaKT], [NgayThi], [Diem], [TongTGThi]) VALUES (22, N'2051060032', N'15PCSDL', CAST(N'2021-01-11T09:00:00.000' AS DateTime), 10, 3)
INSERT [dbo].[KETQUA] ([MaKQ], [MaTS], [MaKT], [NgayThi], [Diem], [TongTGThi]) VALUES (23, N'2051060034', N'15PCSDL', CAST(N'2021-01-11T09:00:00.000' AS DateTime), 10, 12)
INSERT [dbo].[KETQUA] ([MaKQ], [MaTS], [MaKT], [NgayThi], [Diem], [TongTGThi]) VALUES (24, N'2051060035', N'15PCSDL', CAST(N'2021-01-11T09:00:00.000' AS DateTime), 8.3, 7)
INSERT [dbo].[KETQUA] ([MaKQ], [MaTS], [MaKT], [NgayThi], [Diem], [TongTGThi]) VALUES (25, N'2051060036', N'15PCSDL', CAST(N'2021-01-11T09:00:00.000' AS DateTime), 6.6, 15)
INSERT [dbo].[KETQUA] ([MaKQ], [MaTS], [MaKT], [NgayThi], [Diem], [TongTGThi]) VALUES (26, N'2051060039', N'15PCSDL', CAST(N'2021-01-11T09:00:00.000' AS DateTime), 6.6, 15)
INSERT [dbo].[KETQUA] ([MaKQ], [MaTS], [MaKT], [NgayThi], [Diem], [TongTGThi]) VALUES (27, N'2051060040', N'15PCSDL', CAST(N'2021-01-11T09:00:00.000' AS DateTime), 6.6, 12)
INSERT [dbo].[KETQUA] ([MaKQ], [MaTS], [MaKT], [NgayThi], [Diem], [TongTGThi]) VALUES (28, N'2051060043', N'15PCSDL', CAST(N'2021-01-11T09:00:00.000' AS DateTime), 8.3, 1)
INSERT [dbo].[KETQUA] ([MaKQ], [MaTS], [MaKT], [NgayThi], [Diem], [TongTGThi]) VALUES (29, N'2051060045', N'15PCSDL', CAST(N'2021-01-11T09:00:00.000' AS DateTime), 10, 15)
INSERT [dbo].[KETQUA] ([MaKQ], [MaTS], [MaKT], [NgayThi], [Diem], [TongTGThi]) VALUES (30, N'2051060046', N'15PCSDL', CAST(N'2021-01-11T09:00:00.000' AS DateTime), 10, 11)
INSERT [dbo].[KETQUA] ([MaKQ], [MaTS], [MaKT], [NgayThi], [Diem], [TongTGThi]) VALUES (31, N'2051060047', N'15PCSDL', CAST(N'2021-01-11T09:00:00.000' AS DateTime), 8.3, 9)
INSERT [dbo].[KETQUA] ([MaKQ], [MaTS], [MaKT], [NgayThi], [Diem], [TongTGThi]) VALUES (32, N'2051060048', N'15PCSDL', CAST(N'2021-01-11T09:00:00.000' AS DateTime), 5, 15)
INSERT [dbo].[KETQUA] ([MaKQ], [MaTS], [MaKT], [NgayThi], [Diem], [TongTGThi]) VALUES (33, N'2051060050', N'15PCSDL', CAST(N'2021-01-11T09:00:00.000' AS DateTime), 8.3, 2)
INSERT [dbo].[KETQUA] ([MaKQ], [MaTS], [MaKT], [NgayThi], [Diem], [TongTGThi]) VALUES (34, N'2051060001', N'GKCNPM', CAST(N'2021-01-15T07:00:00.000' AS DateTime), 4, 45)
INSERT [dbo].[KETQUA] ([MaKQ], [MaTS], [MaKT], [NgayThi], [Diem], [TongTGThi]) VALUES (35, N'2051060002', N'GKCNPM', CAST(N'2021-01-15T07:00:00.000' AS DateTime), 4, 12)
INSERT [dbo].[KETQUA] ([MaKQ], [MaTS], [MaKT], [NgayThi], [Diem], [TongTGThi]) VALUES (36, N'2051060004', N'GKCNPM', CAST(N'2021-01-15T07:00:00.000' AS DateTime), 10, 31)
INSERT [dbo].[KETQUA] ([MaKQ], [MaTS], [MaKT], [NgayThi], [Diem], [TongTGThi]) VALUES (37, N'2051060007', N'GKCNPM', CAST(N'2021-01-15T07:00:00.000' AS DateTime), 10, 20)
INSERT [dbo].[KETQUA] ([MaKQ], [MaTS], [MaKT], [NgayThi], [Diem], [TongTGThi]) VALUES (38, N'2051060008', N'GKCNPM', CAST(N'2021-01-15T07:00:00.000' AS DateTime), 4, 56)
INSERT [dbo].[KETQUA] ([MaKQ], [MaTS], [MaKT], [NgayThi], [Diem], [TongTGThi]) VALUES (39, N'2051060010', N'GKCNPM', CAST(N'2021-01-15T07:00:00.000' AS DateTime), 6, 30)
INSERT [dbo].[KETQUA] ([MaKQ], [MaTS], [MaKT], [NgayThi], [Diem], [TongTGThi]) VALUES (40, N'2051060011', N'GKCNPM', CAST(N'2021-01-15T07:00:00.000' AS DateTime), 8, 28)
INSERT [dbo].[KETQUA] ([MaKQ], [MaTS], [MaKT], [NgayThi], [Diem], [TongTGThi]) VALUES (41, N'2051060012', N'GKCNPM', CAST(N'2021-01-15T07:00:00.000' AS DateTime), 8, 51)
INSERT [dbo].[KETQUA] ([MaKQ], [MaTS], [MaKT], [NgayThi], [Diem], [TongTGThi]) VALUES (42, N'2051060013', N'GKCNPM', CAST(N'2021-01-15T07:00:00.000' AS DateTime), 8, 60)
INSERT [dbo].[KETQUA] ([MaKQ], [MaTS], [MaKT], [NgayThi], [Diem], [TongTGThi]) VALUES (43, N'2051060015', N'GKCNPM', CAST(N'2021-01-15T07:00:00.000' AS DateTime), 10, 59)
INSERT [dbo].[KETQUA] ([MaKQ], [MaTS], [MaKT], [NgayThi], [Diem], [TongTGThi]) VALUES (44, N'2051060017', N'GKCNPM', CAST(N'2021-01-15T07:00:00.000' AS DateTime), 10, 60)
INSERT [dbo].[KETQUA] ([MaKQ], [MaTS], [MaKT], [NgayThi], [Diem], [TongTGThi]) VALUES (45, N'2051060018', N'GKCNPM', CAST(N'2021-01-15T07:00:00.000' AS DateTime), 8, 20)
INSERT [dbo].[KETQUA] ([MaKQ], [MaTS], [MaKT], [NgayThi], [Diem], [TongTGThi]) VALUES (46, N'2051060020', N'GKCNPM', CAST(N'2021-01-15T07:00:00.000' AS DateTime), 10, 60)
INSERT [dbo].[KETQUA] ([MaKQ], [MaTS], [MaKT], [NgayThi], [Diem], [TongTGThi]) VALUES (47, N'2051060021', N'GKCNPM', CAST(N'2021-01-15T07:00:00.000' AS DateTime), 8, 13)
INSERT [dbo].[KETQUA] ([MaKQ], [MaTS], [MaKT], [NgayThi], [Diem], [TongTGThi]) VALUES (48, N'2051060025', N'GKCNPM', CAST(N'2021-01-15T07:00:00.000' AS DateTime), 10, 60)
INSERT [dbo].[KETQUA] ([MaKQ], [MaTS], [MaKT], [NgayThi], [Diem], [TongTGThi]) VALUES (49, N'2051060027', N'GKCNPM', CAST(N'2021-01-15T07:00:00.000' AS DateTime), 10, 12)
INSERT [dbo].[KETQUA] ([MaKQ], [MaTS], [MaKT], [NgayThi], [Diem], [TongTGThi]) VALUES (50, N'2051060029', N'GKCNPM', CAST(N'2021-01-15T07:00:00.000' AS DateTime), 8, 60)
INSERT [dbo].[KETQUA] ([MaKQ], [MaTS], [MaKT], [NgayThi], [Diem], [TongTGThi]) VALUES (51, N'2051060031', N'GKCNPM', CAST(N'2021-01-15T07:00:00.000' AS DateTime), 2, 49)
INSERT [dbo].[KETQUA] ([MaKQ], [MaTS], [MaKT], [NgayThi], [Diem], [TongTGThi]) VALUES (52, N'2051060032', N'GKCNPM', CAST(N'2021-01-15T07:00:00.000' AS DateTime), 4, 60)
INSERT [dbo].[KETQUA] ([MaKQ], [MaTS], [MaKT], [NgayThi], [Diem], [TongTGThi]) VALUES (53, N'2051060033', N'GKCNPM', CAST(N'2021-01-15T07:00:00.000' AS DateTime), 2, 13)
INSERT [dbo].[KETQUA] ([MaKQ], [MaTS], [MaKT], [NgayThi], [Diem], [TongTGThi]) VALUES (54, N'2051060035', N'GKCNPM', CAST(N'2021-01-15T07:00:00.000' AS DateTime), 6, 60)
INSERT [dbo].[KETQUA] ([MaKQ], [MaTS], [MaKT], [NgayThi], [Diem], [TongTGThi]) VALUES (55, N'2051060036', N'GKCNPM', CAST(N'2021-01-15T07:00:00.000' AS DateTime), 4, 60)
INSERT [dbo].[KETQUA] ([MaKQ], [MaTS], [MaKT], [NgayThi], [Diem], [TongTGThi]) VALUES (56, N'2051060038', N'GKCNPM', CAST(N'2021-01-15T07:00:00.000' AS DateTime), 2, 60)
INSERT [dbo].[KETQUA] ([MaKQ], [MaTS], [MaKT], [NgayThi], [Diem], [TongTGThi]) VALUES (57, N'2051060039', N'GKCNPM', CAST(N'2021-01-15T07:00:00.000' AS DateTime), 8, 16)
INSERT [dbo].[KETQUA] ([MaKQ], [MaTS], [MaKT], [NgayThi], [Diem], [TongTGThi]) VALUES (58, N'2051060040', N'GKCNPM', CAST(N'2021-01-15T07:00:00.000' AS DateTime), 2, 60)
INSERT [dbo].[KETQUA] ([MaKQ], [MaTS], [MaKT], [NgayThi], [Diem], [TongTGThi]) VALUES (59, N'2051060041', N'GKCNPM', CAST(N'2021-01-15T07:00:00.000' AS DateTime), 10, 17)
INSERT [dbo].[KETQUA] ([MaKQ], [MaTS], [MaKT], [NgayThi], [Diem], [TongTGThi]) VALUES (60, N'2051060043', N'GKCNPM', CAST(N'2021-01-15T07:00:00.000' AS DateTime), 8, 60)
INSERT [dbo].[KETQUA] ([MaKQ], [MaTS], [MaKT], [NgayThi], [Diem], [TongTGThi]) VALUES (61, N'2051060044', N'GKCNPM', CAST(N'2021-01-15T07:00:00.000' AS DateTime), 4, 28)
INSERT [dbo].[KETQUA] ([MaKQ], [MaTS], [MaKT], [NgayThi], [Diem], [TongTGThi]) VALUES (62, N'2051060045', N'GKCNPM', CAST(N'2021-01-15T07:00:00.000' AS DateTime), 8, 60)
INSERT [dbo].[KETQUA] ([MaKQ], [MaTS], [MaKT], [NgayThi], [Diem], [TongTGThi]) VALUES (63, N'2051060046', N'GKCNPM', CAST(N'2021-01-15T07:00:00.000' AS DateTime), 2, 39)
INSERT [dbo].[KETQUA] ([MaKQ], [MaTS], [MaKT], [NgayThi], [Diem], [TongTGThi]) VALUES (64, N'2051060048', N'GKCNPM', CAST(N'2021-01-15T07:00:00.000' AS DateTime), 8, 60)
INSERT [dbo].[KETQUA] ([MaKQ], [MaTS], [MaKT], [NgayThi], [Diem], [TongTGThi]) VALUES (65, N'2051060049', N'GKCNPM', CAST(N'2021-01-15T07:00:00.000' AS DateTime), 6, 42)
INSERT [dbo].[KETQUA] ([MaKQ], [MaTS], [MaKT], [NgayThi], [Diem], [TongTGThi]) VALUES (66, N'2051060050', N'GKCNPM', CAST(N'2021-01-15T07:00:00.000' AS DateTime), 8, 60)
SET IDENTITY_INSERT [dbo].[KETQUA] OFF
GO
INSERT [dbo].[KHOA] ([MaKhoa], [TenKhoa]) VALUES (N'CNTT', N'Công nghệ thông tin')
INSERT [dbo].[KHOA] ([MaKhoa], [TenKhoa]) VALUES (N'HTTT', N'Hệ thống thông tin')
INSERT [dbo].[KHOA] ([MaKhoa], [TenKhoa]) VALUES (N'KTPM', N'Kỹ thuật phần mềm')
INSERT [dbo].[KHOA] ([MaKhoa], [TenKhoa]) VALUES (N'TTNT', N'Trí tuệ nhân tạo')
GO
INSERT [dbo].[KYTHI] ([MaKT], [MaMon], [TenKT], [MaGV], [TGLamBai], [TGMoDe], [TGDongDe], [TongSoCau], [MatKhauKT]) VALUES (N'15PCSDL', N'CSDL', N'Bài thi 15p CSDL', N'GV1', 15, CAST(N'2021-01-11T09:00:00.000' AS DateTime), CAST(N'2021-01-11T09:20:00.000' AS DateTime), 6, N'123456')
INSERT [dbo].[KYTHI] ([MaKT], [MaMon], [TenKT], [MaGV], [TGLamBai], [TGMoDe], [TGDongDe], [TongSoCau], [MatKhauKT]) VALUES (N'GKCNPM', N'CNPM', N'Bài thi giữa kỳ CNPM', N'GV2', 60, CAST(N'2021-01-15T07:00:00.000' AS DateTime), CAST(N'2021-01-15T08:05:00.000' AS DateTime), 5, N'123456')
GO
INSERT [dbo].[LOP] ([MaLop], [MaKhoa], [TenLop]) VALUES (N'CNTT1', N'CNTT', N'62CNTT1')
INSERT [dbo].[LOP] ([MaLop], [MaKhoa], [TenLop]) VALUES (N'CNTT2', N'CNTT', N'62CNTT2')
INSERT [dbo].[LOP] ([MaLop], [MaKhoa], [TenLop]) VALUES (N'HTTT1', N'HTTT', N'62HT1')
INSERT [dbo].[LOP] ([MaLop], [MaKhoa], [TenLop]) VALUES (N'HTTT2', N'HTTT', N'62HT2')
INSERT [dbo].[LOP] ([MaLop], [MaKhoa], [TenLop]) VALUES (N'KTPM1', N'KTPM', N'62PM1')
INSERT [dbo].[LOP] ([MaLop], [MaKhoa], [TenLop]) VALUES (N'KTPM2', N'KTPM', N'62PM2')
INSERT [dbo].[LOP] ([MaLop], [MaKhoa], [TenLop]) VALUES (N'TTNT1', N'TTNT', N'62TTNT1')
GO
INSERT [dbo].[MON] ([MaMon], [TenMon]) VALUES (N'CNPM', N'Công nghệ phần mềm')
INSERT [dbo].[MON] ([MaMon], [TenMon]) VALUES (N'CSDL', N'Cơ sở dữ liệu')
GO
INSERT [dbo].[THISINH] ([MaTS], [TenTS], [TKTS], [MKTS], [MaLop], [QuyenTS]) VALUES (N'2051060000', N'Bui Hai Dang', N'2051060000', N'2051060000', N'KTPM1', 1)
INSERT [dbo].[THISINH] ([MaTS], [TenTS], [TKTS], [MKTS], [MaLop], [QuyenTS]) VALUES (N'2051060001', N'Nguyễn Vũ Đức Anh', N'2051060001', N'2051060001', N'CNTT1', 1)
INSERT [dbo].[THISINH] ([MaTS], [TenTS], [TKTS], [MKTS], [MaLop], [QuyenTS]) VALUES (N'2051060002', N'Tạ Minh Quang', N'2051060002', N'2051060002', N'KTPM2', 1)
INSERT [dbo].[THISINH] ([MaTS], [TenTS], [TKTS], [MKTS], [MaLop], [QuyenTS]) VALUES (N'2051060003', N'Trần Văn Đạt', N'2051060003', N'2051060003', N'TTNT1', 1)
INSERT [dbo].[THISINH] ([MaTS], [TenTS], [TKTS], [MKTS], [MaLop], [QuyenTS]) VALUES (N'2051060004', N'Hoàng Đức Thắng', N'2051060004', N'2051060004', N'HTTT2', 1)
INSERT [dbo].[THISINH] ([MaTS], [TenTS], [TKTS], [MKTS], [MaLop], [QuyenTS]) VALUES (N'2051060005', N'Tăng Tự Phú', N'2051060005', N'2051060005', N'CNTT2', 1)
INSERT [dbo].[THISINH] ([MaTS], [TenTS], [TKTS], [MKTS], [MaLop], [QuyenTS]) VALUES (N'2051060006', N'Lê Văn Quyết', N'2051060006', N'2051060006', N'KTPM1', 0)
INSERT [dbo].[THISINH] ([MaTS], [TenTS], [TKTS], [MKTS], [MaLop], [QuyenTS]) VALUES (N'2051060007', N'Đặng Tiến Sơn', N'2051060007', N'2051060007', N'CNTT1', 1)
INSERT [dbo].[THISINH] ([MaTS], [TenTS], [TKTS], [MKTS], [MaLop], [QuyenTS]) VALUES (N'2051060008', N'Bùi Thu Hòa', N'2051060008', N'2051060008', N'CNTT2', 1)
INSERT [dbo].[THISINH] ([MaTS], [TenTS], [TKTS], [MKTS], [MaLop], [QuyenTS]) VALUES (N'2051060009', N'Đặng Minh Hải', N'2051060009', N'2051060009', N'CNTT2', 1)
INSERT [dbo].[THISINH] ([MaTS], [TenTS], [TKTS], [MKTS], [MaLop], [QuyenTS]) VALUES (N'2051060010', N'Ngô Xuân Cường', N'2051060010', N'2051060010', N'KTPM1', 1)
INSERT [dbo].[THISINH] ([MaTS], [TenTS], [TKTS], [MKTS], [MaLop], [QuyenTS]) VALUES (N'2051060011', N'Nguyễn Gia Linh', N'2051060011', N'2051060011', N'HTTT1', 1)
INSERT [dbo].[THISINH] ([MaTS], [TenTS], [TKTS], [MKTS], [MaLop], [QuyenTS]) VALUES (N'2051060012', N'Nguyễn Đăng Nam', N'2051060012', N'2051060012', N'HTTT2', 1)
INSERT [dbo].[THISINH] ([MaTS], [TenTS], [TKTS], [MKTS], [MaLop], [QuyenTS]) VALUES (N'2051060013', N'Lê Văn Bình', N'2051060013', N'2051060013', N'CNTT2', 1)
INSERT [dbo].[THISINH] ([MaTS], [TenTS], [TKTS], [MKTS], [MaLop], [QuyenTS]) VALUES (N'2051060014', N'Phan Lạc Hải Linh', N'2051060014', N'2051060014', N'CNTT1', 0)
INSERT [dbo].[THISINH] ([MaTS], [TenTS], [TKTS], [MKTS], [MaLop], [QuyenTS]) VALUES (N'2051060015', N'Lê Hải Long', N'2051060015', N'2051060015', N'TTNT1', 1)
INSERT [dbo].[THISINH] ([MaTS], [TenTS], [TKTS], [MKTS], [MaLop], [QuyenTS]) VALUES (N'2051060016', N'Trần Thị Mai Lan', N'2051060016', N'2051060016', N'CNTT2', 1)
INSERT [dbo].[THISINH] ([MaTS], [TenTS], [TKTS], [MKTS], [MaLop], [QuyenTS]) VALUES (N'2051060017', N'Nguyễn Vũ Ngọc Anh', N'2051060017', N'2051060017', N'KTPM1', 1)
INSERT [dbo].[THISINH] ([MaTS], [TenTS], [TKTS], [MKTS], [MaLop], [QuyenTS]) VALUES (N'2051060018', N'Hoàng Ngọc Ánh', N'2051060018', N'2051060018', N'KTPM1', 1)
INSERT [dbo].[THISINH] ([MaTS], [TenTS], [TKTS], [MKTS], [MaLop], [QuyenTS]) VALUES (N'2051060019', N'Đinh Thị Thu Trang', N'2051060019', N'2051060019', N'CNTT2', 0)
INSERT [dbo].[THISINH] ([MaTS], [TenTS], [TKTS], [MKTS], [MaLop], [QuyenTS]) VALUES (N'2051060020', N'Nguyễn Trọng Ninh', N'2051060020', N'2051060020', N'TTNT1', 1)
INSERT [dbo].[THISINH] ([MaTS], [TenTS], [TKTS], [MKTS], [MaLop], [QuyenTS]) VALUES (N'2051060021', N'Bùi Bích Ngọc', N'2051060021', N'2051060021', N'CNTT2', 1)
INSERT [dbo].[THISINH] ([MaTS], [TenTS], [TKTS], [MKTS], [MaLop], [QuyenTS]) VALUES (N'2051060022', N'Đặng Thanh Hải', N'2051060022', N'2051060022', N'CNTT1', 1)
INSERT [dbo].[THISINH] ([MaTS], [TenTS], [TKTS], [MKTS], [MaLop], [QuyenTS]) VALUES (N'2051060023', N'Nghiêm Đức Minh', N'2051060023', N'2051060023', N'HTTT1', 1)
INSERT [dbo].[THISINH] ([MaTS], [TenTS], [TKTS], [MKTS], [MaLop], [QuyenTS]) VALUES (N'2051060024', N'Mai Nam Hải', N'2051060024', N'2051060024', N'HTTT2', 0)
INSERT [dbo].[THISINH] ([MaTS], [TenTS], [TKTS], [MKTS], [MaLop], [QuyenTS]) VALUES (N'2051060025', N'Phùng Thanh Độ', N'2051060025', N'2051060025', N'TTNT1', 1)
INSERT [dbo].[THISINH] ([MaTS], [TenTS], [TKTS], [MKTS], [MaLop], [QuyenTS]) VALUES (N'2051060026', N'Nguyễn Thành Long', N'2051060026', N'2051060026', N'CNTT2', 1)
INSERT [dbo].[THISINH] ([MaTS], [TenTS], [TKTS], [MKTS], [MaLop], [QuyenTS]) VALUES (N'2051060027', N'Trần Thái Linh', N'2051060027', N'2051060027', N'CNTT1', 1)
INSERT [dbo].[THISINH] ([MaTS], [TenTS], [TKTS], [MKTS], [MaLop], [QuyenTS]) VALUES (N'2051060028', N'Chu Việt Dũng', N'2051060028', N'2051060028', N'HTTT2', 1)
INSERT [dbo].[THISINH] ([MaTS], [TenTS], [TKTS], [MKTS], [MaLop], [QuyenTS]) VALUES (N'2051060029', N'Ngô Minh Tâm', N'2051060029', N'2051060029', N'HTTT1', 1)
INSERT [dbo].[THISINH] ([MaTS], [TenTS], [TKTS], [MKTS], [MaLop], [QuyenTS]) VALUES (N'2051060030', N'Ngô Văn Ten', N'2051060030', N'2051060030', N'TTNT1', 0)
INSERT [dbo].[THISINH] ([MaTS], [TenTS], [TKTS], [MKTS], [MaLop], [QuyenTS]) VALUES (N'2051060031', N'Trần Anh Dũng', N'2051060031', N'2051060031', N'CNTT2', 1)
INSERT [dbo].[THISINH] ([MaTS], [TenTS], [TKTS], [MKTS], [MaLop], [QuyenTS]) VALUES (N'2051060032', N'Nguyễn Công Phượng', N'2051060032', N'2051060032', N'CNTT1', 1)
INSERT [dbo].[THISINH] ([MaTS], [TenTS], [TKTS], [MKTS], [MaLop], [QuyenTS]) VALUES (N'2051060033', N'Rô Nan Đô', N'2051060033', N'2051060033', N'KTPM2', 1)
INSERT [dbo].[THISINH] ([MaTS], [TenTS], [TKTS], [MKTS], [MaLop], [QuyenTS]) VALUES (N'2051060034', N'Trần Diễm My', N'2051060034', N'2051060034', N'CNTT2', 1)
INSERT [dbo].[THISINH] ([MaTS], [TenTS], [TKTS], [MKTS], [MaLop], [QuyenTS]) VALUES (N'2051060035', N'Lê Tùng Mây', N'2051060035', N'2051060035', N'HTTT2', 1)
INSERT [dbo].[THISINH] ([MaTS], [TenTS], [TKTS], [MKTS], [MaLop], [QuyenTS]) VALUES (N'2051060036', N'Phùng Thị Phượng', N'2051060036', N'2051060036', N'HTTT1', 1)
INSERT [dbo].[THISINH] ([MaTS], [TenTS], [TKTS], [MKTS], [MaLop], [QuyenTS]) VALUES (N'2051060037', N'Hoàng Ngọc Anh', N'2051060037', N'2051060037', N'KTPM2', 0)
INSERT [dbo].[THISINH] ([MaTS], [TenTS], [TKTS], [MKTS], [MaLop], [QuyenTS]) VALUES (N'2051060038', N'Tăng Thanh Hà', N'2051060038', N'2051060038', N'CNTT1', 1)
INSERT [dbo].[THISINH] ([MaTS], [TenTS], [TKTS], [MKTS], [MaLop], [QuyenTS]) VALUES (N'2051060039', N'Nguyễn Liệp Tuyết', N'2051060039', N'2051060039', N'KTPM1', 1)
INSERT [dbo].[THISINH] ([MaTS], [TenTS], [TKTS], [MKTS], [MaLop], [QuyenTS]) VALUES (N'2051060040', N'Nguyễn Sơn Tùng', N'2051060040', N'2051060040', N'KTPM1', 1)
INSERT [dbo].[THISINH] ([MaTS], [TenTS], [TKTS], [MKTS], [MaLop], [QuyenTS]) VALUES (N'2051060041', N'Nguyễn Duy Mạnh', N'2051060041', N'2051060041', N'KTPM2', 1)
INSERT [dbo].[THISINH] ([MaTS], [TenTS], [TKTS], [MKTS], [MaLop], [QuyenTS]) VALUES (N'2051060042', N'Đàm Vĩnh Hưng', N'2051060042', N'2051060042', N'CNTT1', 0)
INSERT [dbo].[THISINH] ([MaTS], [TenTS], [TKTS], [MKTS], [MaLop], [QuyenTS]) VALUES (N'2051060043', N'Lâm Chấn Tam', N'2051060043', N'2051060043', N'TTNT1', 1)
INSERT [dbo].[THISINH] ([MaTS], [TenTS], [TKTS], [MKTS], [MaLop], [QuyenTS]) VALUES (N'2051060044', N'Trương Minh Thảo', N'2051060044', N'2051060044', N'HTTT1', 1)
INSERT [dbo].[THISINH] ([MaTS], [TenTS], [TKTS], [MKTS], [MaLop], [QuyenTS]) VALUES (N'2051060045', N'Hà Kiều Trang', N'2051060045', N'2051060045', N'CNTT1', 1)
INSERT [dbo].[THISINH] ([MaTS], [TenTS], [TKTS], [MKTS], [MaLop], [QuyenTS]) VALUES (N'2051060046', N'Nguyễn Đình Tư', N'2051060046', N'2051060046', N'KTPM2', 1)
INSERT [dbo].[THISINH] ([MaTS], [TenTS], [TKTS], [MKTS], [MaLop], [QuyenTS]) VALUES (N'2051060047', N'Hoàng Sơn', N'2051060047', N'2051060047', N'HTTT2', 1)
INSERT [dbo].[THISINH] ([MaTS], [TenTS], [TKTS], [MKTS], [MaLop], [QuyenTS]) VALUES (N'2051060048', N'Tạ Thanh Tùng', N'2051060048', N'2051060048', N'KTPM2', 1)
INSERT [dbo].[THISINH] ([MaTS], [TenTS], [TKTS], [MKTS], [MaLop], [QuyenTS]) VALUES (N'2051060049', N'Đinh Văn Thanh', N'2051060049', N'2051060049', N'HTTT1', 1)
INSERT [dbo].[THISINH] ([MaTS], [TenTS], [TKTS], [MKTS], [MaLop], [QuyenTS]) VALUES (N'2051060050', N'Nguyễn Xuân Phúc', N'2051060050', N'2051060050', N'CNTT1', 1)
GO
SET IDENTITY_INSERT [dbo].[VIPHAM] ON 

INSERT [dbo].[VIPHAM] ([MaVP], [MaKQ], [Loi]) VALUES (1, 4, N'Ra vào nhiều lần')
INSERT [dbo].[VIPHAM] ([MaVP], [MaKQ], [Loi]) VALUES (2, 7, N'Tắt cam')
INSERT [dbo].[VIPHAM] ([MaVP], [MaKQ], [Loi]) VALUES (3, 9, N'Sử dụng tài liệu')
INSERT [dbo].[VIPHAM] ([MaVP], [MaKQ], [Loi]) VALUES (4, 44, N'Tắt cam')
INSERT [dbo].[VIPHAM] ([MaVP], [MaKQ], [Loi]) VALUES (6, 32, N'Phần mềm thứ 3')
INSERT [dbo].[VIPHAM] ([MaVP], [MaKQ], [Loi]) VALUES (7, 18, N'Sử dụng tài liệu')
INSERT [dbo].[VIPHAM] ([MaVP], [MaKQ], [Loi]) VALUES (8, 61, N'Phần mềm thứ 3')
INSERT [dbo].[VIPHAM] ([MaVP], [MaKQ], [Loi]) VALUES (9, 54, N'Sử dụng tài liệu')
INSERT [dbo].[VIPHAM] ([MaVP], [MaKQ], [Loi]) VALUES (10, 20, N'Sử dụng tài liệu')
SET IDENTITY_INSERT [dbo].[VIPHAM] OFF
GO
ALTER TABLE [dbo].[CAUHOI]  WITH CHECK ADD  CONSTRAINT [FK_MaMon] FOREIGN KEY([MaMon])
REFERENCES [dbo].[MON] ([MaMon])
GO
ALTER TABLE [dbo].[CAUHOI] CHECK CONSTRAINT [FK_MaMon]
GO
ALTER TABLE [dbo].[DAPAN]  WITH CHECK ADD  CONSTRAINT [FK_MaCH] FOREIGN KEY([MaCH])
REFERENCES [dbo].[CAUHOI] ([MaCH])
GO
ALTER TABLE [dbo].[DAPAN] CHECK CONSTRAINT [FK_MaCH]
GO
ALTER TABLE [dbo].[KETQUA]  WITH CHECK ADD  CONSTRAINT [FK_MaKT] FOREIGN KEY([MaKT])
REFERENCES [dbo].[KYTHI] ([MaKT])
GO
ALTER TABLE [dbo].[KETQUA] CHECK CONSTRAINT [FK_MaKT]
GO
ALTER TABLE [dbo].[KETQUA]  WITH CHECK ADD  CONSTRAINT [FK_MaTS] FOREIGN KEY([MaTS])
REFERENCES [dbo].[THISINH] ([MaTS])
GO
ALTER TABLE [dbo].[KETQUA] CHECK CONSTRAINT [FK_MaTS]
GO
ALTER TABLE [dbo].[KYTHI]  WITH CHECK ADD  CONSTRAINT [FK_MaGV] FOREIGN KEY([MaGV])
REFERENCES [dbo].[GIANGVIEN] ([MaGV])
GO
ALTER TABLE [dbo].[KYTHI] CHECK CONSTRAINT [FK_MaGV]
GO
ALTER TABLE [dbo].[KYTHI]  WITH CHECK ADD  CONSTRAINT [FK_MaMonKT] FOREIGN KEY([MaMon])
REFERENCES [dbo].[MON] ([MaMon])
GO
ALTER TABLE [dbo].[KYTHI] CHECK CONSTRAINT [FK_MaMonKT]
GO
ALTER TABLE [dbo].[LOP]  WITH CHECK ADD  CONSTRAINT [FK_MaKhoa] FOREIGN KEY([MaKhoa])
REFERENCES [dbo].[KHOA] ([MaKhoa])
GO
ALTER TABLE [dbo].[LOP] CHECK CONSTRAINT [FK_MaKhoa]
GO
ALTER TABLE [dbo].[THISINH]  WITH CHECK ADD  CONSTRAINT [FK_MaLop] FOREIGN KEY([MaLop])
REFERENCES [dbo].[LOP] ([MaLop])
GO
ALTER TABLE [dbo].[THISINH] CHECK CONSTRAINT [FK_MaLop]
GO
ALTER TABLE [dbo].[VIPHAM]  WITH CHECK ADD  CONSTRAINT [FK_MaKQ] FOREIGN KEY([MaKQ])
REFERENCES [dbo].[KETQUA] ([MaKQ])
GO
ALTER TABLE [dbo].[VIPHAM] CHECK CONSTRAINT [FK_MaKQ]
GO
