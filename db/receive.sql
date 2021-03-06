USE [Receive]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 11/28/2020 7:47:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Category](
	[ID] [int] NOT NULL,
	[Name_LL] [nvarchar](30) NULL,
	[Name_ZW] [nvarchar](30) NULL,
	[WarehouseID] [int] NOT NULL,
	[DepID] [varchar](10) NOT NULL,
	[Status] [char](1) NULL,
	[Updated_By] [nvarchar](30) NULL,
	[Update_Time] [datetime] NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Department]    Script Date: 11/28/2020 7:47:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Department](
	[ID] [varchar](10) NOT NULL,
	[Name_ZW] [nvarchar](300) NULL,
	[Name_LL] [nvarchar](300) NULL,
	[Name_EN] [nvarchar](300) NULL,
	[Status] [char](1) NULL,
	[Updated_By] [nvarchar](30) NULL,
	[Updated_Time] [datetime] NULL,
 CONSTRAINT [PK_Department] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Product]    Script Date: 11/28/2020 7:47:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Product](
	[ID] [varchar](10) NOT NULL,
	[Name] [nvarchar](200) NULL,
	[CatID] [int] NULL,
	[Status] [char](1) NULL,
	[Updated_By] [nvarchar](30) NULL,
	[Update_Time] [datetime] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Receive]    Script Date: 11/28/2020 7:47:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Receive](
	[ID] [varchar](10) NOT NULL,
	[UserID] [varchar](10) NULL,
	[Accept_ID] [varchar](10) NULL,
	[DepID] [varchar](10) NULL,
	[Register_Date] [datetime] NULL,
	[Accept_Date] [datetime] NULL,
	[Status] [char](2) NULL,
	[Updated_By] [nvarchar](30) NULL,
	[Updated_Time] [datetime] NULL,
 CONSTRAINT [PK_Receive] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Receive_Detail]    Script Date: 11/28/2020 7:47:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Receive_Detail](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ReceiveID] [nvarchar](10) NULL,
	[ProductID] [nvarchar](10) NULL,
	[ProductName] [nvarchar](200) NULL,
	[Qty] [int] NULL,
	[Update_By] [nvarchar](30) NULL,
	[Update_Time] [datetime] NULL,
 CONSTRAINT [PK_Receive_Detail] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Role]    Script Date: 11/28/2020 7:47:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Role](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](30) NULL,
	[Status] [char](1) NULL,
	[Update_By] [nvarchar](30) NULL,
	[Update_Time] [datetime] NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[User]    Script Date: 11/28/2020 7:47:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[User](
	[ID] [varchar](10) NOT NULL,
	[Password] [varchar](20) NULL,
	[Name] [nvarchar](50) NULL,
	[RoleID] [int] NULL,
	[DepID] [varchar](10) NULL,
	[Update_By] [nvarchar](30) NULL,
	[Update_Time] [datetime] NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Warehouse]    Script Date: 11/28/2020 7:47:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Warehouse](
	[ID] [int] NOT NULL,
	[Name_LL] [nvarchar](150) NULL,
	[Name_ZW] [nvarchar](150) NULL,
 CONSTRAINT [PK_Warehouse] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[Category] ([ID], [Name_LL], [Name_ZW], [WarehouseID], [DepID], [Status], [Updated_By], [Update_Time]) VALUES (1, N'Mực', N'碳粉', 3, N'1', N'1', NULL, NULL)
INSERT [dbo].[Category] ([ID], [Name_LL], [Name_ZW], [WarehouseID], [DepID], [Status], [Updated_By], [Update_Time]) VALUES (2, N'Linh Kiện Vi Tính', N'電腦零件', 3, N'1', N'1', NULL, NULL)
INSERT [dbo].[Category] ([ID], [Name_LL], [Name_ZW], [WarehouseID], [DepID], [Status], [Updated_By], [Update_Time]) VALUES (3, N'Tem Barcode', N'條碼貼標', 3, N'1', N'1', NULL, NULL)
INSERT [dbo].[Category] ([ID], [Name_LL], [Name_ZW], [WarehouseID], [DepID], [Status], [Updated_By], [Update_Time]) VALUES (4, N'Mực Barcode', N'條碼色帶', 3, N'1', N'1', NULL, NULL)
INSERT [dbo].[Category] ([ID], [Name_LL], [Name_ZW], [WarehouseID], [DepID], [Status], [Updated_By], [Update_Time]) VALUES (5, N'Tem RFID', N'RFID貼票', 3, N'1', N'1', NULL, NULL)
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'700', N'總務部 ', N'Bộ tổng vụ', N'General Affair Department', N'1', N'18915', CAST(N'2020-08-31 14:17:47.207' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'800', N'資材部 ', N'Bộ tư tài', N'Purchasing and Material Warehouse Department', N'1', N'18915', CAST(N'2020-08-31 14:17:47.207' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'A00', N'儲幹班', N'Lớp CBĐT', N'On Training Supervisors', N'1', N'18915', CAST(N'2020-08-31 14:17:47.207' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'A01', N'保安   ', N'Ban bảo vệ', N'Security Section', N'1', N'18915', CAST(N'2020-08-31 14:17:47.207' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'A02', N'管理部', N'Bộ quản lý', N'Administration Department', N'1', N'18915', CAST(N'2020-08-31 14:17:47.210' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'A03', N'人力資源部 ', N'SEA/HR', N'SEA / Human Resources Development', N'1', N'18915', CAST(N'2020-08-31 14:17:47.210' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'A04', N'業務課', N'Nghiệp vụ', N'Business Section', N'1', N'18915', CAST(N'2020-08-31 14:17:47.210' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'A05', N'財務部', N'Bộ tài vụ', N'Financial Department', N'1', N'18915', CAST(N'2020-08-31 14:17:47.210' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'A06', N'電腦室', N'Phòng vi tính', N'I.T Section', N'1', N'18915', CAST(N'2020-08-31 14:17:47.210' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'A07', N'卓越生產部', N'M.E Dept', N'Manufacturing Excellence ', N'1', N'18915', CAST(N'2020-08-31 14:17:47.213' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'A08', N'廠務   ', N'Xưởng vụ', N'Production Office', N'1', N'18915', CAST(N'2020-08-31 14:17:47.213' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'A09', N'總務    ', N'Tổ tổng vụ', N'General Affair Section', N'1', N'18915', CAST(N'2020-08-31 14:17:47.213' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'A10', N'工務', N'Tổ cơ điện', N'Maintenance Section', N'1', N'18915', CAST(N'2020-08-31 14:17:47.213' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'A11', N'工程組', N'Tổ công trình', N'Infrastructure Section', N'1', N'18915', CAST(N'2020-08-31 14:17:47.217' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'A12', N'機修 ', N'Tổ bảo trì máy ', N'Maintenance Section', N'1', N'18915', CAST(N'2020-08-31 14:17:47.217' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'A13', N'生管部', N'Tổ kế hoạch sản xuất', N'Production Planning Department', N'1', N'18915', CAST(N'2020-08-31 14:17:47.217' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'A14', N'倉儲課', N'Kho nguyên liệu', N'Material Warehouse ', N'1', N'18915', CAST(N'2020-08-31 14:17:47.217' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'A15', N'採購課', N'Ban cung ứng vật tư', N'Purcharsing Section', N'1', N'18915', CAST(N'2020-08-31 14:17:47.217' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'A17', N'現場新員工', N'CNM sản xuất', N'New Worker', N'1', N'18915', CAST(N'2020-08-31 14:17:47.223' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'A18', N'實驗室', N'Phòng kiểm nghiệm', N'Lab ', N'1', N'18915', CAST(N'2020-08-31 14:17:47.227' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'A19', N'生產部', N'Trung tâm sản xuất', N'Production Center', N'1', N'18915', CAST(N'2020-08-31 14:17:47.227' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'A20', N'調膠水室', N'Tổ pha keo', N'Mixing Room', N'1', N'18915', CAST(N'2020-08-31 14:17:47.227' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'A21', N'管理課', N'Khoa hành chánh', N'Administration Section', N'1', N'18915', CAST(N'2020-08-31 14:17:47.227' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'A22', N'餐廳', N'Nhà ăn', N'Canteen Section', N'1', N'18915', CAST(N'2020-08-31 14:17:47.227' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'A23', N'培訓中心', N'Trung tâmđào tạo', N'Training center', N'1', N'18915', CAST(N'2020-08-31 14:17:47.227' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'A24', N'廠區辦公室', N'Văn phòng nhà máy', N'Factory Head Office', N'1', N'18915', CAST(N'2020-08-31 14:17:47.230' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'A26', N'多(全)能工訓練班', N'Lớp đào tạo đa,toàn năng', N'Utility Training', N'1', N'18915', CAST(N'2020-08-31 14:17:47.230' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'A29', N'環境維護組', N'Tổ vệ sinh', N'Hygiene Section', N'1', N'18915', CAST(N'2020-08-31 14:17:47.230' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'A30', N'工會 ', N'Công đoàn', N'Trade Union Section', N'1', N'18915', CAST(N'2020-08-31 14:17:47.230' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'A36', N'培訓學校', N'Trường đào tạo', N'Training School', N'1', N'18915', CAST(N'2020-08-31 14:17:47.233' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'A38', N'鞋面廠面倉', N'Kho XMG', N'Production Center', N'1', N'18915', CAST(N'2020-08-31 14:17:47.233' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'A39', N'榮禧幼稚園', N'Trường mầm non Vinh Hỷ', N'S', N'1', N'18915', CAST(N'2020-08-31 14:17:47.233' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'A40', N'管理本部(越南)', N'Quản lý tổng công ty (VN)', N'Vice President Office', N'1', N'18915', CAST(N'2020-08-31 14:17:47.233' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'A46', N'幹部餐廳', N'Nhà ăn Cán bộ', N'Canteen Section', N'1', N'18915', CAST(N'2020-08-31 14:17:47.237' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'A47', N'財務本部(越南)', N'Tài vụ tổng công ty (VN)', N'Financial Department', N'1', N'18915', CAST(N'2020-08-31 14:17:47.237' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'A48', N'機器人自動化', N'Hệ thống Robot tự động', N'Robot System automation ( RSA )', N'1', N'18915', CAST(N'2020-08-31 14:17:47.237' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'A50', N'系統開發3組', N'Phát triển phần mềm team 3', N'Vice President Office', N'1', N'18915', CAST(N'2020-08-31 14:17:47.240' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'A51', N'生產一部(機動小組)', N'Bo SX 1- To luu dong', N'Production Department 1', N'1', N'18915', CAST(N'2020-08-31 14:17:47.240' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'A52', N'生產二部(機動小組)', N'Bo SX 2- To luu dong', N'Production Department 2', N'1', N'18915', CAST(N'2020-08-31 14:17:47.240' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'A53', N'生產三部(機動小組)', N'Bo SX 3- To luu dong', N'Production Department 3', N'1', N'18915', CAST(N'2020-08-31 14:17:47.243' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'A55', N'原料倉', N'Kho chuẩn bị liệu  ', N'Material Warehouse ', N'1', N'18915', CAST(N'2020-08-31 14:17:47.220' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'A56', N'配送組', N'Tổ phối hàng', N'Material Warehouse ', N'1', N'18915', CAST(N'2020-08-31 14:17:47.220' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'A57', N'半底倉', N'Kho nguyên liệu đế', N'Material Warehouse ', N'1', N'18915', CAST(N'2020-08-31 14:17:47.223' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'A58', N'膠藥水倉', N'Kho keo', N'Material Warehouse ', N'1', N'18915', CAST(N'2020-08-31 14:17:47.223' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'A59', N'針保', N'Tổ bảo trì máy may', N'Maintenance Section', N'1', N'18915', CAST(N'2020-08-31 14:17:47.243' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'A60', N' 集中生產 ', N'Sản xuất tập trung', N'Production Center', N'1', N'18915', CAST(N'2020-08-31 14:17:47.243' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'A61', N'生產一部 ', N'Bộ sản xuất 1', N'Production Department 1', N'1', N'18915', CAST(N'2020-08-31 14:17:47.243' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'A62', N'生產二部', N'Bộ sản xuất 2', N'Production Department 2', N'1', N'18915', CAST(N'2020-08-31 14:17:47.247' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'A63', N'生產三部', N'Bộ sản xuất 3', N'Production Department 3', N'1', N'18915', CAST(N'2020-08-31 14:17:47.247' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'A64', N'集中-震動刀', N'TT-Máy cắt tự động', N'Production Center', N'1', N'18915', CAST(N'2020-08-31 14:17:47.247' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'A65', N'集中-普通鐳射', N'TT-Laser thông thường', N'Production Center', N'1', N'18915', CAST(N'2020-08-31 14:17:47.247' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'A66', N'熱壓', N'Tổ ép nóng', N'Production Center', N'1', N'18915', CAST(N'2020-08-31 14:17:47.247' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'A67', N'移印組', N'Tổ chấm in', N'Production Center', N'1', N'18915', CAST(N'2020-08-31 14:17:47.250' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'A68', N'集中-對位鐳射', N'TT-Laser định vị', N'Production Center', N'1', N'18915', CAST(N'2020-08-31 14:17:47.250' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'A69', N'集中-鐳射打標', N'TT-Khắc laser', N'Production Center', N'1', N'18915', CAST(N'2020-08-31 14:17:47.250' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'A71', N'生產一部(QA小組)', N'Bo SX 1- To QA', N'Production Department 1', N'1', N'18915', CAST(N'2020-08-31 14:17:47.250' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'A78', N'鞋墊加工組          ', N'Tổ gia công đế lót', N'Production Department 3', N'1', N'18915', CAST(N'2020-08-31 14:17:47.253' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'A79', N'鞋面出口加工組          ', N'Tổ mặt giày', N'Production Department 3', N'1', N'18915', CAST(N'2020-08-31 14:17:47.253' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'A80', N'數碼沖孔', N'Đục lỗ KTS', N'Production Center', N'1', N'18915', CAST(N'2020-08-31 14:17:47.253' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'A81', N'二部集中生產', N'Bộ 2 sản xuất tập trung', N'Bộ 2 sản xuất tập trung', N'1', N'18915', CAST(N'2020-08-31 14:17:47.253' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'A82', N'第二事業部ME', N'GME', N'GME', N'1', N'18915', CAST(N'2020-08-31 14:17:47.257' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'A8J', N'J東集中生產區', N'SXTT- Tòa nhà J', N'Bộ 2 sản xuất tập trung', N'1', N'18915', CAST(N'2020-08-31 14:17:47.257' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'A8L', N'L東集中生產區', N'SXTT- Tòa nhà L', N'Bộ 2 sản xuất tập trung', N'1', N'18915', CAST(N'2020-08-31 14:17:47.257' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'AA0', N'總經理室(越南)', N'Phòng tổng giám đốc', N'General Manager Office', N'1', N'18915', CAST(N'2020-08-31 14:17:47.187' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'AA1', N'事業部辦公室', N'Văn phòng Bộ sự nghiệp', N'Division Head Office', N'1', N'18915', CAST(N'2020-08-31 14:17:47.207' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'B00', N'開發中心            ', N'Trung tâm khai phát', N'Development / Comm. Center', N'1', N'18915', CAST(N'2020-08-31 14:17:47.257' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'B01', N'開發部              ', N'TTKP- Bộ khai phát', N'Development  Team', N'1', N'18915', CAST(N'2020-08-31 14:17:47.257' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'B02', N'PCT課               ', N'TTKP- phòng PCT', N'PCT Team ', N'1', N'18915', CAST(N'2020-08-31 14:17:47.257' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'B03', N'行政課              ', N'TTKP-  Hành chánh', N'Administration  Team ', N'1', N'18915', CAST(N'2020-08-31 14:17:47.260' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'B04', N'CRISPIN             ', N'TTKP-  CAD/CAM', N'CRISPIN Team ', N'1', N'18915', CAST(N'2020-08-31 14:17:47.260' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'B05', N'PDM                 ', N'TTKP-  PDM', N'PDM Team ', N'1', N'18915', CAST(N'2020-08-31 14:17:47.260' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'B06', N'成本報價COSTING     ', N'TTKP- Giá thành', N'Costing Team', N'1', N'18915', CAST(N'2020-08-31 14:17:47.260' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'B07', N'會計ACCOUNTING      ', N'TTKP- Kế toán', N'Accounting  Team', N'1', N'18915', CAST(N'2020-08-31 14:17:47.263' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'B08', N'MATERIAL ASSESSMENT ', N'TTKP- đo dung lượng', N'Material Assessment  Team', N'1', N'18915', CAST(N'2020-08-31 14:17:47.263' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'B09', N'SAMPLE ROOM MANAGEME', N'Phòng mẫu', N'Sample Room ', N'1', N'18915', CAST(N'2020-08-31 14:17:47.263' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'B10', N'開發-倉庫           ', N'TTKP-  kho mẫu', N'SampleRoom - Warehouse', N'1', N'18915', CAST(N'2020-08-31 14:17:47.263' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'B11', N'開發-底部           ', N'TTKP-  Đế mẫu', N'SampleRoom - Bottom ', N'1', N'18915', CAST(N'2020-08-31 14:17:47.267' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'B13', N'面部                ', N'TTKP-  tổ kỹ thuật mặt giày', N'Technical - Upper', N'1', N'18915', CAST(N'2020-08-31 14:17:47.267' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'B14', N'底部                ', N'TTKP-  tổ kỹ thuật ?ế', N'Technical - Bottom ', N'1', N'18915', CAST(N'2020-08-31 14:17:47.267' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'B15', N'量化                ', N'TTKP-  tổ kỹ thuật com.', N'Technical - Commercialisation ', N'1', N'18915', CAST(N'2020-08-31 14:17:47.267' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'B16', N'開發-裁段一組       ', N'TTKP-  tổ chặt mẫu 1', N'SampleRoom - Cutting 1 ', N'1', N'18915', CAST(N'2020-08-31 14:17:47.267' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'B17', N'開發-加工班一組     ', N'TTKP-  tổ gia công mẫu 1', N'SampleRoom -  Preparation 1', N'1', N'18915', CAST(N'2020-08-31 14:17:47.267' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'B18', N'開發-針一組         ', N'TTKP-  tổ may mẫu 1', N'SampleRoom - Stitching 1', N'1', N'18915', CAST(N'2020-08-31 14:17:47.270' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'B19', N'開發-針二組         ', N'TTKP-  tổ may mẫu 2', N'SampleRoom - Stitching 2', N'1', N'18915', CAST(N'2020-08-31 14:17:47.270' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'B20', N'開發-針三組         ', N'TTKP-  tổ may mẫu 3', N'SampleRoom - Stitching 3', N'1', N'18915', CAST(N'2020-08-31 14:17:47.270' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'B21', N'技術輔導            ', N'TTKP-  tổ tư vấn kỹ thuật', N'Technical - Techincal Consulting   ', N'1', N'18915', CAST(N'2020-08-31 14:17:47.270' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'B22', N'試做課              ', N'TTKP-  tổ kỹ thuật trial', N'Technical -  Trial Team', N'1', N'18915', CAST(N'2020-08-31 14:17:47.273' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'B23', N'開發-裁斷二組       ', N'TTKP-  tổ chặt mẫu  2', N'SampleRoom - Cutting 2', N'1', N'18915', CAST(N'2020-08-31 14:17:47.273' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'B24', N'開發加工班二組      ', N'TTKP-  tổ gia công mẫu 1', N'SampleRoom -  Preparation 2', N'1', N'18915', CAST(N'2020-08-31 14:17:47.273' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'B25', N'開發針四組          ', N'TTKP-  tổ may mẫu 4', N'SampleRoom - Stitching 4', N'1', N'18915', CAST(N'2020-08-31 14:17:47.273' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'B26', N'開發針五組          ', N'TTKP-  tổ may mẫu 5', N'SampleRoom - Stitching 5', N'1', N'18915', CAST(N'2020-08-31 14:17:47.277' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'B27', N'開發針六組          ', N'TTKP-  tổ may mẫu 6', N'SampleRoom - Stitching 6', N'1', N'18915', CAST(N'2020-08-31 14:17:47.277' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'B28', N'開發成型組          ', N'TTKP-  tổ thành hình mẫu 2', N'SampleRoom - Assembly ', N'1', N'18915', CAST(N'2020-08-31 14:17:47.277' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'B29', N'開發成型組結幫班    ', N'TTKP-  tổ lắp ráp mẫu 1', N'SampleRoom - Assembly - Lasting ', N'1', N'18915', CAST(N'2020-08-31 14:17:47.277' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'B30', N'開發成型組成型班    ', N'TTKP-  tổ lắp ráp mẫu 2', N'SampleRoom -  Assembly - Assembly', N'1', N'18915', CAST(N'2020-08-31 14:17:47.277' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'B31', N'開發整理班          ', N'TTKP-  tổ lắp ráp mẫu 3', N'SampleRoom -  Assembly - Finishing ', N'1', N'18915', CAST(N'2020-08-31 14:17:47.280' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'B32', N'技術部              ', N'TTKP-  Bộ kỹ thuật', N'Technical', N'1', N'18915', CAST(N'2020-08-31 14:17:47.280' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'B33', N'SOP                 ', N'TTKP-  SOP', N'SOP  Team ', N'1', N'18915', CAST(N'2020-08-31 14:17:47.280' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'B35', N'開發樣品-生管課     ', N'TTKP-  Bộ Sinh quản', N'SampleRoom - Production Planning', N'1', N'18915', CAST(N'2020-08-31 14:17:47.280' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'B36', N'鞋材顏色確認組      ', N'TTKP-  FMCA', N'Dev-FMCA', N'1', N'18915', CAST(N'2020-08-31 14:17:47.283' AS DateTime))
GO
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'B41', N'開發化工組          ', N'Dev. Chemical Team', N'Chemical Team', N'1', N'18915', CAST(N'2020-08-31 14:17:47.283' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'B42', N'開發第二樣品室      ', N'TTKP-Phòng mẫu 2    ', N'Sample Room 2', N'1', N'18915', CAST(N'2020-08-31 14:17:47.283' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'B43', N'開發第二樣品室-準備 ', N'TTKP-Phòng mẫu 2- Tổ Chuẩn  bị', N'Sample Room 2-Cutting & Preparation', N'1', N'18915', CAST(N'2020-08-31 14:17:47.283' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'B44', N'開發第二樣品室-針A組', N'TTKP-Phòng mẫu 2- Tổ  may A', N'Sample Room 2-Stitching A', N'1', N'18915', CAST(N'2020-08-31 14:17:47.283' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'B45', N'開發第二樣品室-針B組', N'TTKP-Phòng mẫu 2- Tổ  may B', N'Sample Room 2-Stitching B', N'1', N'18915', CAST(N'2020-08-31 14:17:47.287' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'B46', N'開發第二樣品室-成型 ', N'TTKP-Phòng mẫu 2- Thành hình', N'Sample Room 2-Assembly ', N'1', N'18915', CAST(N'2020-08-31 14:17:47.287' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'B47', N'面部制工具          ', N'TTKP Tổ  KT-MG Khuôn ', N'Technical - Upper', N'1', N'18915', CAST(N'2020-08-31 14:17:47.287' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'B48', N'底部制工具+成型     ', N'TTKP KT-Khuôn đế  & Thành Hình', N'Technical - Bottom ', N'1', N'18915', CAST(N'2020-08-31 14:17:47.287' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'B49', N'Shipping', N'TTKP- Shipping', N'Development Shipping Team', N'1', N'18915', CAST(N'2020-08-31 14:17:47.287' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'B51', N'開發一組+量化一組   ', N'TTKP- Bộ khai phát  DEV 1&Comm1', N'KP- DEV 1 & COMM 1  ', N'1', N'18915', CAST(N'2020-08-31 14:17:47.290' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'B52', N'開發二組+量化二組   ', N'TTKP- Bộ khai phát  DEV 2&Comm2', N'KP- DEV 2 & COMM 2  ', N'1', N'18915', CAST(N'2020-08-31 14:17:47.290' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'B53', N'開發三組+量化三組   ', N'TTKP- Bộ khai phát  DEV 3&Comm3', N'KP- DEV 3 & COMM 3  ', N'1', N'18915', CAST(N'2020-08-31 14:17:47.290' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'B54', N'開發四組+量化四組   ', N'TTKP- Bộ khai phát  DEV 4&Comm4', N'KP- DEV 4 & COMM 4  ', N'1', N'18915', CAST(N'2020-08-31 14:17:47.290' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'B55', N'開發五組+量化五組   ', N'TTKP- Bộ khai phát  DEV 5&Comm5', N'KP- DEV 5 & COMM 5  ', N'1', N'18915', CAST(N'2020-08-31 14:17:47.293' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'B56', N'開發六組+量化六組   ', N'TTKP- Bộ khai phát  DEV 6&Comm6', N'KP- DEV 6 & COMM 6  ', N'1', N'18915', CAST(N'2020-08-31 14:17:47.293' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'B57', N'開發七組+量化七組   ', N'TTKP- Bộ khai phát  DEV 7&Comm7', N'KP- DEV 7 & COMM 7  ', N'1', N'18915', CAST(N'2020-08-31 14:17:47.293' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'B58', N'開發七組+量化八組   ', N'TTKP- Bộ khai phát  DEV 8&Comm8', N'KP- DEV 8 & COMM 8  ', N'1', N'18915', CAST(N'2020-08-31 14:17:47.293' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'B59', N'開發採購組          ', N'TTKP- đặt mua', N'Development Material Team', N'1', N'18915', CAST(N'2020-08-31 14:17:47.297' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'B70', N'CCM- 開發', N'CCM- Khai phát', N'CCM', N'1', N'18915', CAST(N'2020-08-31 14:17:47.297' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'B71', N'CCM-倉儲', N'CCM- Kho nguyên liệu', N'CCM', N'1', N'18915', CAST(N'2020-08-31 14:17:47.297' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'B72', N'CCM- 生產', N'CCM- Sản xuất', N'CCM', N'1', N'18915', CAST(N'2020-08-31 14:17:47.297' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'B73', N'CCM- 生管', N'CCM- Sinh quản', N'CCM', N'1', N'18915', CAST(N'2020-08-31 14:17:47.300' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'B74', N'CCM- 資材', N'CCM- đặt  mua & kho vật tư', N'CCM', N'1', N'18915', CAST(N'2020-08-31 14:17:47.300' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'B75', N'CCM- 準備組', N'CCM- tổ chuẩn bị', N'CCM', N'1', N'18915', CAST(N'2020-08-31 14:17:47.300' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'B76', N'CCM- 針車A組 ', N'CCM- tổ may A', N'CCM', N'1', N'18915', CAST(N'2020-08-31 14:17:47.300' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'B77', N'CCM- 針車B組 ', N'CCM- tổ may B', N'CCM', N'1', N'18915', CAST(N'2020-08-31 14:17:47.303' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'B78', N'CCM- 成型組', N'CCM- tổ thành hình ', N'CCM', N'1', N'18915', CAST(N'2020-08-31 14:17:47.303' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'B79', N'CCM-樣品 組', N'CCM- tổ hàng mẫu', N'CCM', N'1', N'18915', CAST(N'2020-08-31 14:17:47.303' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'B7A', N'CCM-鞋舌組/備料組', N'CCM- Tổ may lưỡi/Tổ phối liệu', N'CCM', N'1', N'18915', CAST(N'2020-08-31 14:17:47.297' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'B7B', N'CCM-加工組', N'CCM- Tổ gia công', N'CCM', N'1', N'18915', CAST(N'2020-08-31 14:17:47.297' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'D00', N'RB橡膠廠', N'Phân xưởng đế cao su', N'Rubber Factory', N'1', N'18915', CAST(N'2020-08-31 14:17:47.310' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'D01', N'RB財務課 ', N'?ế CS-Tài vụ', N'RB- Financial Section', N'1', N'18915', CAST(N'2020-08-31 14:17:47.310' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'D02', N'RB人事/SOE', N'?ế CS-SoE', N'RB - SOE', N'1', N'18915', CAST(N'2020-08-31 14:17:47.310' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'D03', N'RB總務課(含庶務倉/雜', N'?ế CS-Tổng vụ', N'RB- General Affair Section', N'1', N'18915', CAST(N'2020-08-31 14:17:47.313' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'D04', N'RB機修/工務 ', N'Đế CS-Bảo trì', N'RB - Maintenance ', N'1', N'18915', CAST(N'2020-08-31 14:17:47.313' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'D05', N'RB廠務文房', N'De CS-Xưởng vụ', N'RB - Production Office (Lab)', N'1', N'18915', CAST(N'2020-08-31 14:17:47.313' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'D06', N'RB 生管課', N'De CS-Kế hoạch SX', N'RB - Production Planning', N'1', N'18915', CAST(N'2020-08-31 14:17:47.313' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'D07', N'RB 開發課 ', N'De CS-Triển khai', N'RB - Development', N'1', N'18915', CAST(N'2020-08-31 14:17:47.317' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'D08', N'品管 ( RB - A 組)', N'De CS-Kiểm phẩm tổ A', N'RB- QC A', N'1', N'18915', CAST(N'2020-08-31 14:17:47.317' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'D09', N'品管 ( RB - B 組)', N'De CS-Kiểm phẩm tổ B', N'RB - QC B', N'1', N'18915', CAST(N'2020-08-31 14:17:47.317' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'D10', N'品管 ( RB - C 組)', N'De CS-Kiểm phẩm tổ C', N'RB -QC C', N'1', N'18915', CAST(N'2020-08-31 14:17:47.317' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'D11', N'RB 備料課 ( A 組)', N'De CS-Tổ chuẩn bị  A', N'RB - Cutting A', N'1', N'18915', CAST(N'2020-08-31 14:17:47.317' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'D12', N'RB 備料課 ( B 組)', N'De CS-Tổ chuẩn bị  B', N'RB - Cutting B', N'1', N'18915', CAST(N'2020-08-31 14:17:47.320' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'D13', N'RB 備料課 ( C 組)', N'De  CS-Tổ chuẩn bị C', N'RB - Cutting C', N'1', N'18915', CAST(N'2020-08-31 14:17:47.320' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'D14', N'RB 熱壓課 ( A 組)', N'De CS- Tổ ép đế A', N'RB - Hot pressing A', N'1', N'18915', CAST(N'2020-08-31 14:17:47.320' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'D15', N'RB 熱壓課 ( B 組)', N'De CS- Tổ ép đế B', N'RB - Hot pressing B', N'1', N'18915', CAST(N'2020-08-31 14:17:47.320' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'D16', N'RB 熱壓課 ( C 組)', N'De CS- Tổ ép đế C', N'RB - Hot pressing C', N'1', N'18915', CAST(N'2020-08-31 14:17:47.323' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'D17', N'RB 整理課 ( A 組)', N'De CS- Tổ chỉnh lý A', N'RB - Repair A', N'1', N'18915', CAST(N'2020-08-31 14:17:47.323' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'D18', N'RB 整理課 ( B 組)', N'De CS- Tổ chỉnh lý B', N'RB - Repair B', N'1', N'18915', CAST(N'2020-08-31 14:17:47.323' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'D19', N'RB 整理課 ( C 組)', N'De CS- Tổ chỉnh lý C', N'RB - Repair C', N'1', N'18915', CAST(N'2020-08-31 14:17:47.323' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'D20', N'RB 整理課 (修火把 / 行政班)', N'De CS-Tổ chỉnh lý (Ui đế/hành chánh)', N'Rubber Factory', N'1', N'18915', CAST(N'2020-08-31 14:17:47.327' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'D21', N'RB 整理課 ( 包裝組)', N'De CS-Tổ chỉnh lý (đóng gói)', N'Rubber Factory', N'1', N'18915', CAST(N'2020-08-31 14:17:47.327' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'D22', N'RB 整理課 (補漆組)', N'De CS-Tổ chỉnh lý ( Bù sơn)', N'Rubber Factory', N'1', N'18915', CAST(N'2020-08-31 14:17:47.327' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'D23', N'RB 品管 (行政班 )', N'De CS-Kiểm phẩm (Hành chánh)', N'Rubber Factory', N'1', N'18915', CAST(N'2020-08-31 14:17:47.327' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'D24', N'RB 實驗室', N'De CS-Phòng kiểm nghiệm', N'Rubber Factory', N'1', N'18915', CAST(N'2020-08-31 14:17:47.327' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'D25', N'RB 整理(裁斷組)', N'De CS-Tổ chỉnh lý (chặt)', N'Rubber Factory', N'1', N'18915', CAST(N'2020-08-31 14:17:47.327' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'D26', N'RB 備料(行政組)', N'De CS-Tổ chuẩn bị (hành chánh)', N'Rubber Factory', N'1', N'18915', CAST(N'2020-08-31 14:17:47.330' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'D27', N'RB 模修組', N'De CS-Tổ sửa khuôn', N'Rubber Factory', N'1', N'18915', CAST(N'2020-08-31 14:17:47.330' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'D28', N'RB 面部加工A組', N'DCS Tổ gia công mặt giày A', N'Rubber Factory', N'1', N'18915', CAST(N'2020-08-31 14:17:47.330' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'D29', N'RB 面部加工B組', N'DCS Tổ gia công mặt giày B', N'Rubber Factory', N'1', N'18915', CAST(N'2020-08-31 14:17:47.330' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'D30', N'RB 面部加工C組', N'DCS Tổ gia công mặt giày C', N'Rubber Factory', N'1', N'18915', CAST(N'2020-08-31 14:17:47.333' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'D31', N'RB 面部加工行政班', N'DCS Tổ gia công mặt giày (Hanh chanh)', N'Rubber Factory', N'1', N'18915', CAST(N'2020-08-31 14:17:47.333' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'D32', N'RB 面部加工生管', N'DCS Sinh quản Tổ gia công mặt giày', N'Rubber Factory', N'1', N'18915', CAST(N'2020-08-31 14:17:47.333' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'E00', N'品保部 ', N'Bộ QC', N'Quality Control Department', N'1', N'18915', CAST(N'2020-08-31 14:17:47.333' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'E11', N'A棟-開發QC  ', N'QC khai phát', N'QC-Development', N'1', N'18915', CAST(N'2020-08-31 14:17:47.337' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'E12', N'QIP ', N'QIP', N'QIP', N'1', N'18915', CAST(N'2020-08-31 14:17:47.337' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'E13', N'Bonding Team ', N'QC-Tổ Bonding  Team', N'Bonding Team        ', N'1', N'18915', CAST(N'2020-08-31 14:17:47.337' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'E14', N'D棟-面部進料QC-IMQC', N'QC toà nhà D', N'Incoming Upper Material Checking QC', N'1', N'18915', CAST(N'2020-08-31 14:17:47.337' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'E15', N'K棟-Q.C', N'QC toà nhà K', N'QC- Building K', N'1', N'18915', CAST(N'2020-08-31 14:17:47.337' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'E16', N'H棟-Q.C  ', N'QC toà nhà H', N'QC- Building H', N'1', N'18915', CAST(N'2020-08-31 14:17:47.340' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'E17', N'L棟-Q.C ', N'QC toà nhà L', N'QC- Building L', N'1', N'18915', CAST(N'2020-08-31 14:17:47.340' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'E18', N'M棟-Q.C ', N'QC toà nhà M', N'QC- Building M', N'1', N'18915', CAST(N'2020-08-31 14:17:47.340' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'E19', N'O棟-Q.C  ', N'QC toà nhà O', N'QC- Building O', N'1', N'18915', CAST(N'2020-08-31 14:17:47.340' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'E20', N'P棟-Q.C ', N'QC toà nhà P', N'QC- Building P', N'1', N'18915', CAST(N'2020-08-31 14:17:47.340' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'E21', N'E棟-Q.C ', N'QC toà nhà E', N'QC- Building E', N'1', N'18915', CAST(N'2020-08-31 14:17:47.343' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'E22', N'F棟-鞋面廠Q.C ', N'QC toà nhà F', N'QC - Upper Preparation Factory', N'1', N'18915', CAST(N'2020-08-31 14:17:47.343' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'E23', N'J棟-組底廠IPQC ', N'QC PX Đế', N'QC-Stock Fitting', N'1', N'18915', CAST(N'2020-08-31 14:17:47.343' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'E24', N'I棟-底部進料IMQC ', N'QC kho đế', N'Incoming Outsole Checking QC', N'1', N'18915', CAST(N'2020-08-31 14:17:47.343' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'E25', N'I棟-Q.C ', N'QC toà nhà I', N'QC- Building I', N'1', N'18915', CAST(N'2020-08-31 14:17:47.347' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'E26', N'品保部-派工中心', N'QC -Trung Tâm hỗ trợ nhân lực', N'QC -Manpower Pool', N'1', N'18915', CAST(N'2020-08-31 14:17:47.347' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'E27', N'J棟-Q.C ', N'QC toà nhà J', N'QC- Building J', N'1', N'18915', CAST(N'2020-08-31 14:17:47.347' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'E28', N'CCM -QC ', N'QC CCM', N'QC- CCM', N'1', N'18915', CAST(N'2020-08-31 14:17:47.347' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'EA0', N'E1線', N'Line E1', N'Line E1', N'1', N'18915', CAST(N'2020-08-31 14:17:47.347' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'EA9', N'E1線 - 成型組', N'Line E1- tổ thành hình', N'Line E1 - Assembly', N'1', N'18915', CAST(N'2020-08-31 14:17:47.350' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'EAS', N'E1線 - 裁準針組', N'Line E1- tổ chặt/gia công/may', N'Line E1-Preparation & Stitching', N'1', N'18915', CAST(N'2020-08-31 14:17:47.347' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'EB0', N'E2線', N'Line E2', N'Line E2', N'1', N'18915', CAST(N'2020-08-31 14:17:47.350' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'EB9', N'E2線 - 成型組', N'Line E2- tổ thành hình', N'Line E2 - Assembly', N'1', N'18915', CAST(N'2020-08-31 14:17:47.350' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'EBS', N'E2線 - 裁準針組', N'Line E2- tổ chặt/gia công/may', N'Line E2 Preparation & Stitching', N'1', N'18915', CAST(N'2020-08-31 14:17:47.350' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'EC0', N'E3線', N'Line E3', N'Line E3', N'1', N'18915', CAST(N'2020-08-31 14:17:47.353' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'EC9', N'E3線 - 成型組', N'Line E3- tổ thành hình', N'Line E3 - Assembly', N'1', N'18915', CAST(N'2020-08-31 14:17:47.353' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'ECS', N'E3線 - 裁準針組', N'Line E3- tổ chặt/gia công/may', N'Line E3 - Preparation & Stitching', N'1', N'18915', CAST(N'2020-08-31 14:17:47.353' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'ED0', N'E4線', N'Line E4', N'Line E4', N'1', N'18915', CAST(N'2020-08-31 14:17:47.353' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'ED9', N'E4線 - 成型組', N'Line E4- tổ thành hình', N'Line E4 - Assembly', N'1', N'18915', CAST(N'2020-08-31 14:17:47.357' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'EDS', N'E4線 - 裁準針組', N'Line E4- tổ chặt/gia công/may', N'Line E4 - Preparation & Stitching', N'1', N'18915', CAST(N'2020-08-31 14:17:47.357' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'EE0', N'E5線', N'Line E5', N'Line E5', N'1', N'18915', CAST(N'2020-08-31 14:17:47.357' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'EE9', N'E5線 - 成型組', N'Line E5- tổ thành hình', N'Line E5 - Assembly', N'1', N'18915', CAST(N'2020-08-31 14:17:47.357' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'EEA', N'E棟-E1-3線', N'Toa E- Line E1-E3', N'Building E', N'1', N'18915', CAST(N'2020-08-31 14:17:47.360' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'EEB', N'E棟-E4-6線', N'Toa E- Line E4-E6 ', N'Building E', N'1', N'18915', CAST(N'2020-08-31 14:17:47.360' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'EEE', N'E棟 ', N'Toà nhà E', N'Building E', N'1', N'18915', CAST(N'2020-08-31 14:17:47.360' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'EES', N'E5線 - 裁準針組', N'Line E5- tổ chặt/gia công/may', N'Line E5 - Preparation & Stitching', N'1', N'18915', CAST(N'2020-08-31 14:17:47.357' AS DateTime))
GO
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'EF0', N'E6線', N'Line E6', N'Line E6', N'1', N'18915', CAST(N'2020-08-31 14:17:47.360' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'EF9', N'E6線 - 成型組', N'Line E6- tổ thành hình', N'Line E6 - Assembly', N'1', N'18915', CAST(N'2020-08-31 14:17:47.363' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'EFS', N'E6線 -裁準針組', N'Line E6- tổ chặt/gia công/may', N'Line E6 -Preparation & Stitching', N'1', N'18915', CAST(N'2020-08-31 14:17:47.363' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'EG0', N'E7線', N'Line E7', N'Line E7 ', N'1', N'18915', CAST(N'2020-08-31 14:17:47.363' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'EG9', N'E7線 - 成型組', N'Line E7- tổ thành hình', N'Line E7 - Assembly', N'1', N'18915', CAST(N'2020-08-31 14:17:47.363' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'EXH', N'E棟 - 高週波組 ', N'Toà nhà E- máy ấn', N'Building E - Processing-Embossing', N'1', N'18915', CAST(N'2020-08-31 14:17:47.367' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'EXP', N'E棟 - 印刷組 ', N'Toà nhà E- in chuyền', N'Building E - Processing-Printing', N'1', N'18915', CAST(N'2020-08-31 14:17:47.367' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'G00', N'技轉部', N'Bộ chuyển giao kỹ thuật', N'Production Technical Dep.', N'1', N'18915', CAST(N'2020-08-31 14:17:47.367' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'GX0', N'調油墨房 ', N'Phòng pha mực dầu', N'0', N'1', N'18915', CAST(N'2020-08-31 14:17:47.367' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'GXA', N'加工組', N'Tổ Gia công', N'', N'1', N'18915', CAST(N'2020-08-31 14:17:47.367' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'GXB', N'電腦裁斷組 ', N'Tổ chặt vi tính', N'Computer Cut', N'1', N'18915', CAST(N'2020-08-31 14:17:47.367' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'GXD', N'底部噴漆 ', N'Phun xi đế', N'', N'1', N'18915', CAST(N'2020-08-31 14:17:47.370' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'GXE', N'自動印刷組', N'Tổ in chuyền tự động', N'', N'1', N'18915', CAST(N'2020-08-31 14:17:47.370' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'GXF', N'轉印紙', N'Tổ in chuyển', N'', N'1', N'18915', CAST(N'2020-08-31 14:17:47.370' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'HY0', N'RSA-生產線', N'RSA-Chuyền sản xuất', N'Building H ', N'1', N'18915', CAST(N'2020-08-31 14:17:47.237' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'HY2', N'RSA-裁斷組', N'RSA-Tổ chặt', N'Building H - Cutting', N'1', N'18915', CAST(N'2020-08-31 14:17:47.237' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'HY9', N'RSA-成型組', N'RSA-Thành hình', N'Building H - Assembly', N'1', N'18915', CAST(N'2020-08-31 14:17:47.240' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'HYS', N'RSA- 針車組', N'RSA- Tổ may', N'Building H - Stitching', N'1', N'18915', CAST(N'2020-08-31 14:17:47.237' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'IA0', N'I1線', N'Line I1', N'Line I1', N'1', N'18915', CAST(N'2020-08-31 14:17:47.417' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'IA9', N'I1線 - 成型組', N'Line I1- tổ thành hình', N'Line I1 - Assembly', N'1', N'18915', CAST(N'2020-08-31 14:17:47.417' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'IAS', N'I1線-裁準針組', N'Line I1- tổ chặt/gia công/may', N'Line I1 -Preparation & Stitching', N'1', N'18915', CAST(N'2020-08-31 14:17:47.417' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'IB0', N'I2線', N'Line I2', N'Line I2', N'1', N'18915', CAST(N'2020-08-31 14:17:47.417' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'IB9', N'I2線 - 成型組', N'Line I2- tổ thành hình', N'Line I2 - Assembly', N'1', N'18915', CAST(N'2020-08-31 14:17:47.420' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'IBS', N'I2線-裁準針組', N'Line I2- tổ chặt/gia công/may', N'Line I2 - Preparation & Stitching', N'1', N'18915', CAST(N'2020-08-31 14:17:47.417' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'IC0', N'I3線', N'Line I3', N'Line I3', N'1', N'18915', CAST(N'2020-08-31 14:17:47.420' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'IC9', N'I3線 - 成型組', N'Line I3- tổ thành hình', N'Line I3 - Assembly', N'1', N'18915', CAST(N'2020-08-31 14:17:47.420' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'ID0', N'I4線', N'Line I4', N'Line I4', N'1', N'18915', CAST(N'2020-08-31 14:17:47.420' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'ID9', N'I4線 - 成型組', N'Line I4- tổ thành hình', N'Line I4 - Assembly', N'1', N'18915', CAST(N'2020-08-31 14:17:47.423' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'IE0', N'I5線', N'Line I5', N'Line I5', N'1', N'18915', CAST(N'2020-08-31 14:17:47.423' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'IE9', N'I5線 - 成型組', N'Line I5- tổ thành hình', N'Line I5 - Assembly', N'1', N'18915', CAST(N'2020-08-31 14:17:47.423' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'IF0', N'I6線', N'Line I6', N'Line I6', N'1', N'18915', CAST(N'2020-08-31 14:17:47.423' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'IF9', N'I6線 - 成型組', N'Line I6- tổ thành hình', N'Line I6 - Assembly', N'1', N'18915', CAST(N'2020-08-31 14:17:47.427' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'IG0', N'I7線', N'Line I7', N'Line I7', N'1', N'18915', CAST(N'2020-08-31 14:17:47.427' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'IG9', N'I7線 - 成型組', N'Line I7- tổ thành hình', N'Line I7 - Assembly', N'1', N'18915', CAST(N'2020-08-31 14:17:47.427' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'IH0', N'I8線', N'Line I8', N'Line I8', N'1', N'18915', CAST(N'2020-08-31 14:17:47.427' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'IH9', N'I8線 - 成型組', N'Line I8- tổ thành hình', N'Line I8 - Assembly', N'1', N'18915', CAST(N'2020-08-31 14:17:47.427' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'II0', N'I9線', N'Line I9', N'Line I9', N'1', N'18915', CAST(N'2020-08-31 14:17:47.427' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'II9', N'I9線 - 成型組', N'Line I9- tổ thành hình', N'Line I9 - Assembly', N'1', N'18915', CAST(N'2020-08-31 14:17:47.430' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'IIA', N'I棟-I1-I2線', N'Toa I- I1-I2', N'Building I', N'1', N'18915', CAST(N'2020-08-31 14:17:47.433' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'IIB', N'I棟-I3-I6線', N'Toa I- I3-I6', N'Building I', N'1', N'18915', CAST(N'2020-08-31 14:17:47.433' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'IIC', N'I棟-I7-I10線', N'Toa I- I7-I10', N'Building I', N'1', N'18915', CAST(N'2020-08-31 14:17:47.433' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'III', N'I棟 ', N'Toà nhà I', N'Building I', N'1', N'18915', CAST(N'2020-08-31 14:17:47.437' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'IJ0', N'I10線', N'Line I10', N'Line I10', N'1', N'18915', CAST(N'2020-08-31 14:17:47.430' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'IJ9', N'I10線 - 成型組', N'Line I10- tổ thành hình', N'Line I10 - Assembly', N'1', N'18915', CAST(N'2020-08-31 14:17:47.430' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'IK0', N'I11線', N'Line I11', N'Line I11', N'1', N'18915', CAST(N'2020-08-31 14:17:47.430' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'IK9', N'I11線 - 成型組', N'Line I11- tổ thành hình', N'Line I11 - Assembly', N'1', N'18915', CAST(N'2020-08-31 14:17:47.433' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'IXH', N'I棟 - 高週波組 ', N'Toà nhà I- máy ấn', N'Building I', N'1', N'18915', CAST(N'2020-08-31 14:17:47.433' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'IXP', N'I棟 - 印刷組 ', N'Toà nhà I- in chuyền', N'Building I', N'1', N'18915', CAST(N'2020-08-31 14:17:47.437' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'J20', N'組底廠', N'Xưởng đế ', N'Stock Fitting', N'1', N'18915', CAST(N'2020-08-31 14:17:47.370' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'J21', N'A1組底廠', N'Xưởng đế  A1', N'Stock Fitting', N'1', N'18915', CAST(N'2020-08-31 14:17:47.373' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'J22', N'A1組底廠-大底打租第1條', N'Xưởng đế  A1 - Mài đế chuyền 1', N'Stock Fitting', N'1', N'18915', CAST(N'2020-08-31 14:17:47.373' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'J23', N'A1組底廠-大底打租第2條', N'Xưởng đế  A1 - Mài đế chuyền 2', N'Stock Fitting', N'1', N'18915', CAST(N'2020-08-31 14:17:47.373' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'J24', N'A1組底廠-水洗第1線', N'Xưởng đế  A1 - Máy rửa chuyền 1', N'Stock Fitting', N'1', N'18915', CAST(N'2020-08-31 14:17:47.373' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'J25', N'A1組底廠-水洗第2線', N'Xưởng đế  A1 - Máy rửa chuyền 2', N'Stock Fitting', N'1', N'18915', CAST(N'2020-08-31 14:17:47.377' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'J26', N'A1組底廠-噴漆組', N'Xưởng đế  A1 - Tổ phun xi', N'Stock Fitting', N'1', N'18915', CAST(N'2020-08-31 14:17:47.377' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'J27', N'A1組底廠-處理沿條線', N'Xưởng đế  A1 - Chuyền xử lý dây viền', N'Stock Fitting', N'1', N'18915', CAST(N'2020-08-31 14:17:47.377' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'J28', N'A1組底廠-UV 第1條', N'Xưởng đế  A1 - Chuyền UV 1', N'Stock Fitting', N'1', N'18915', CAST(N'2020-08-31 14:17:47.377' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'J29', N'A1組底廠-UV 第2條', N'Xưởng đế  A1 - Chuyền UV 2', N'Stock Fitting', N'1', N'18915', CAST(N'2020-08-31 14:17:47.377' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'J31', N'A2組底廠', N'Xưởng đế  A2', N'Stock Fitting', N'1', N'18915', CAST(N'2020-08-31 14:17:47.380' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'J32', N'A2組底廠-第9條', N'Xưởng đế  A2 Chuyền 9', N'Stock Fitting', N'1', N'18915', CAST(N'2020-08-31 14:17:47.380' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'J33', N'A2組底廠-第10條', N'Xưởng đế  A2-  Chuyền 10', N'Stock Fitting', N'1', N'18915', CAST(N'2020-08-31 14:17:47.380' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'J34', N'A2組底廠-第11條流水線（封膠沿條）', N'Xưởng đế  A2 - Chuyền sản xuất 11 (phủ keo dây viền) ', N'Stock Fitting', N'1', N'18915', CAST(N'2020-08-31 14:17:47.380' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'J35', N'A2組底廠-第12條', N'Xưởng đế  A2 - Chuyền 12', N'Stock Fitting', N'1', N'18915', CAST(N'2020-08-31 14:17:47.380' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'J36', N'A2組底廠-第13條', N'Xưởng đế  A2 - Chuyền 13', N'Stock Fitting', N'1', N'18915', CAST(N'2020-08-31 14:17:47.383' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'J37', N'A2組底廠-第14條', N'Xưởng đế  A2 - Chuyền 14', N'Stock Fitting', N'1', N'18915', CAST(N'2020-08-31 14:17:47.383' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'J38', N'A2組底廠-第15條', N'Xưởng đế  A2 - Chuyền 15', N'Stock Fitting', N'1', N'18915', CAST(N'2020-08-31 14:17:47.383' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'J41', N'A3組底廠', N'Xưởng đế  A3', N'Stock Fitting', N'1', N'18915', CAST(N'2020-08-31 14:17:47.383' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'J42', N'A3組底廠-第1條', N'Xưởng đế  A3 - Chuyền 1', N'Stock Fitting', N'1', N'18915', CAST(N'2020-08-31 14:17:47.387' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'J43', N'A3組底廠-第2條', N'Xưởng đế  A3 - Chuyền 2', N'Stock Fitting', N'1', N'18915', CAST(N'2020-08-31 14:17:47.387' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'J44', N'A3組底廠-第3條', N'Xưởng đế  A3 - Chuyền 3', N'Stock Fitting', N'1', N'18915', CAST(N'2020-08-31 14:17:47.387' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'J45', N'A3組底廠-第4條', N'Xưởng đế  A3 - Chuyền 4', N'Stock Fitting', N'1', N'18915', CAST(N'2020-08-31 14:17:47.387' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'J46', N'A3組底廠-第5條', N'Xưởng đế  A3 - Chuyền 5', N'Stock Fitting', N'1', N'18915', CAST(N'2020-08-31 14:17:47.387' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'J47', N'A3組底廠-第6條', N'Xưởng đế  A3 - Chuyền 6', N'Stock Fitting', N'1', N'18915', CAST(N'2020-08-31 14:17:47.390' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'J48', N'A3組底廠-第7條', N'Xưởng đế  A3 - Chuyền 7', N'Stock Fitting', N'1', N'18915', CAST(N'2020-08-31 14:17:47.390' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'J61', N'B1組底廠', N'Xưởng đế  B1', N'Stock Fitting', N'1', N'18915', CAST(N'2020-08-31 14:17:47.390' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'J62', N'B1組底廠-大底打粗與處理 1', N'Xưởng đế  B1 - Mài đế, Xử lý đế 1', N'Stock Fitting', N'1', N'18915', CAST(N'2020-08-31 14:17:47.390' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'J63', N'B1組底廠-大底打粗與處理 2', N'Xưởng đế  B1 - Mài đế, Xử lý đế 2', N'Stock Fitting', N'1', N'18915', CAST(N'2020-08-31 14:17:47.393' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'J64', N'B1組底廠 - 處理 UV-EVA', N'Xưởng đế  B1 - Xử lý -UV  EVA', N'Stock Fitting', N'1', N'18915', CAST(N'2020-08-31 14:17:47.393' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'J65', N'B1組底廠-第17條 處理 UV-EVA', N'Xưởng đế  B1 - Chuyền 17 Xử lý -UV  EVA', N'Stock Fitting', N'1', N'18915', CAST(N'2020-08-31 14:17:47.393' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'J66', N'B1組底廠-第16條', N'Xưởng đế  B1 - Chuyền 16', N'Stock Fitting', N'1', N'18915', CAST(N'2020-08-31 14:17:47.393' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'J67', N'B1組底廠-第17條', N'Xưởng đế  B1 - Chuyền 17 ', N'Stock Fitting', N'1', N'18915', CAST(N'2020-08-31 14:17:47.397' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'J68', N'B1組底廠-第18條', N'Xưởng đế  B1 - Chuyền 18', N'Stock Fitting', N'1', N'18915', CAST(N'2020-08-31 14:17:47.397' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'J69', N'B1組底廠-第19條', N'Xưởng đế  B1 - Chuyền 19', N'Stock Fitting', N'1', N'18915', CAST(N'2020-08-31 14:17:47.397' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'J71', N'組底廠-ASC 線', N'Xưởng đế  - Chuyền ASC ', N'Stock Fitting', N'1', N'18915', CAST(N'2020-08-31 14:17:47.397' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'J72', N'組底廠-ASC 線 1', N'Xưởng đế  - Chuyền ASC 1', N'Stock Fitting', N'1', N'18915', CAST(N'2020-08-31 14:17:47.397' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'J73', N'組底廠-ASC 線 2', N'Xưởng đế  - Chuyền ASC 2', N'Stock Fitting', N'1', N'18915', CAST(N'2020-08-31 14:17:47.397' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'J74', N'組底廠-ASC 線 3', N'Xưởng đế  - Chuyền ASC 3', N'Stock Fitting', N'1', N'18915', CAST(N'2020-08-31 14:17:47.400' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'J75', N'組底廠-ASC 線 4', N'Xưởng đế  - Chuyền ASC 4', N'Stock Fitting', N'1', N'18915', CAST(N'2020-08-31 14:17:47.400' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'J76', N'組底廠- UV 線 1', N'Xưởng đế  - Chuyền UV 1', N'Stock Fitting', N'1', N'18915', CAST(N'2020-08-31 14:17:47.400' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'J77', N'組底廠- UV 線 2', N'Xưởng đế  - Chuyền UV 2', N'Stock Fitting', N'1', N'18915', CAST(N'2020-08-31 14:17:47.400' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'J78', N'組底廠- UV 線 3', N'Xưởng đế  - Chuyền UV 3', N'Stock Fitting', N'1', N'18915', CAST(N'2020-08-31 14:17:47.403' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'J79', N'組底廠- UV 線 4', N'Xưởng đế  - Chuyền UV 4', N'Stock Fitting', N'1', N'18915', CAST(N'2020-08-31 14:17:47.403' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'J98', N'懷孕組', N'Tổ thai sản', N'Stock Fitting', N'1', N'18915', CAST(N'2020-08-31 14:17:47.403' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'J99', N'組底廠-派工中心', N'Xưởng đế -TT điều phối nhân lực', N'Stock Fitting', N'1', N'18915', CAST(N'2020-08-31 14:17:47.403' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'JA0', N'J1線', N'Line J1', N'Line J1', N'1', N'18915', CAST(N'2020-08-31 14:17:47.407' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'JA9', N'J1線 - 成型組', N'Line J1- tổ thành hình', N'Line J1 - Assembly', N'1', N'18915', CAST(N'2020-08-31 14:17:47.407' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'JAS', N'J1線 - 裁準針組', N'Line J1- tổ chặt/gia công/may', N'Line J1 - Preparation & Stitching', N'1', N'18915', CAST(N'2020-08-31 14:17:47.407' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'JB0', N'J2線', N'Line J2', N'Line J2', N'1', N'18915', CAST(N'2020-08-31 14:17:47.407' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'JB9', N'J2線 - 成型組', N'Line J2- tổ thành hình', N'Line J2- Assembly', N'1', N'18915', CAST(N'2020-08-31 14:17:47.410' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'JBS', N'J2線 -裁準針組', N'Line J2- tổ chặt/gia công/may', N'Line J2 - Preparation & Stitching', N'1', N'18915', CAST(N'2020-08-31 14:17:47.407' AS DateTime))
GO
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'JC0', N'J3線', N'Line J3', N'Line J3', N'1', N'18915', CAST(N'2020-08-31 14:17:47.410' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'JC9', N'J3線 - 成型組', N'Line J3- tổ thành hình', N'Line J3- Assembly', N'1', N'18915', CAST(N'2020-08-31 14:17:47.410' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'JCS', N'J3線 - 裁準針組', N'Line J3- tổ chặt/gia công/may', N'Line J3 - Preparation & Stitching', N'1', N'18915', CAST(N'2020-08-31 14:17:47.410' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'JWA', N'J棟-J1-J3線', N'Toa J- J1-J3', N'Building J', N'1', N'18915', CAST(N'2020-08-31 14:17:47.413' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'JWJ', N'J棟 ', N'Toà nhà J', N'Building J', N'1', N'18915', CAST(N'2020-08-31 14:17:47.413' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'JZH', N'J棟 - 高週波組', N'Toà nhà J- máy ấn', N'Building J - Processing-Embossing', N'1', N'18915', CAST(N'2020-08-31 14:17:47.413' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'JZP', N'J棟 - 印刷組', N'Toà nhà J- in chuyền', N'Building J - Processing-Printing', N'1', N'18915', CAST(N'2020-08-31 14:17:47.413' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'LAC', N'L1~L3線-準備', N'L1-L3-Chuẩn bị', N'Line -L1-L3- Preparation ', N'1', N'18915', CAST(N'2020-08-31 14:17:47.497' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'LDF', N'L4~L6線-準備', N'L4-L6-Chuẩn bị', N'L4-L6- Preparation ', N'1', N'18915', CAST(N'2020-08-31 14:17:47.513' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'LH0', N'L2A線', N'L2A ', N'L2A ', N'1', N'18915', CAST(N'2020-08-31 14:17:47.503' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'LH9', N'L2A線-成型組', N'L2A Thành hình', N'L2A - Assembly', N'1', N'18915', CAST(N'2020-08-31 14:17:47.507' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'LHI', N'L2線', N'Chuyền L2', N'Line L2', N'1', N'18915', CAST(N'2020-08-31 14:17:47.503' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'LHS', N'L2A線-針車組', N'L2A-tổ may', N'L2A-Stitching', N'1', N'18915', CAST(N'2020-08-31 14:17:47.503' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'LI0', N'L2B線', N'L2B ', N'L2B ', N'1', N'18915', CAST(N'2020-08-31 14:17:47.507' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'LI9', N'L2B線-成型組', N'L2B Thành hình', N'L2B - Assembly', N'1', N'18915', CAST(N'2020-08-31 14:17:47.507' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'LIS', N'L2B線-針車組', N'L2B-tổ may', N'L2B- Stitching', N'1', N'18915', CAST(N'2020-08-31 14:17:47.507' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'LJ0', N'L1A線', N'L1A ', N'L1A ', N'1', N'18915', CAST(N'2020-08-31 14:17:47.497' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'LJ9', N'L1A線-成型組', N'L1A Thành hình', N'L1A - Assembly', N'1', N'18915', CAST(N'2020-08-31 14:17:47.500' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'LJK', N'L1線', N'Chuyền L1', N'Line L1', N'1', N'18915', CAST(N'2020-08-31 14:17:47.497' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'LJS', N'L1A線-針車組', N'L1A-tổ may', N'L1A-Stitching', N'1', N'18915', CAST(N'2020-08-31 14:17:47.500' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'LK0', N'L1B線', N'L1B ', N'L1B ', N'1', N'18915', CAST(N'2020-08-31 14:17:47.500' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'LK9', N'L1B線-成型組', N'L1B Thành hình', N'L1B - Assembly', N'1', N'18915', CAST(N'2020-08-31 14:17:47.503' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'LKS', N'L1B線-針車組', N'L1B-tổ may', N'L1B- Stitching', N'1', N'18915', CAST(N'2020-08-31 14:17:47.500' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'LL0', N'L3A線', N'L3A ', N'L3A ', N'1', N'18915', CAST(N'2020-08-31 14:17:47.510' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'LL9', N'L3A線-成型組', N'L3A Thành hình', N'L3A - Assembly', N'1', N'18915', CAST(N'2020-08-31 14:17:47.510' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'LLM', N'L3線', N'Chuyền L3', N'Line L3', N'1', N'18915', CAST(N'2020-08-31 14:17:47.507' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'LLS', N'L3A線-針車組', N'L3A-tổ may', N'L3A-Stitching', N'1', N'18915', CAST(N'2020-08-31 14:17:47.510' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'LM0', N'L3B線', N'L3B ', N'L3B ', N'1', N'18915', CAST(N'2020-08-31 14:17:47.510' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'LM9', N'L3B線-成型組', N'L3B Thành hình', N'L3B - Assembly', N'1', N'18915', CAST(N'2020-08-31 14:17:47.513' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'LMS', N'L3B線-針車組', N'L3B-tổ may', N'L3B- Stitching', N'1', N'18915', CAST(N'2020-08-31 14:17:47.513' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'LN0', N'L4A線', N'L4A ', N'L4A ', N'1', N'18915', CAST(N'2020-08-31 14:17:47.517' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'LN9', N'L4A線-成型組', N'L4A Thành hình', N'L4A - Assembly', N'1', N'18915', CAST(N'2020-08-31 14:17:47.517' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'LNO', N'L4線', N'Chuyền L4', N'Line L4', N'1', N'18915', CAST(N'2020-08-31 14:17:47.513' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'LNS', N'L4A線-針車組', N'L4A-tổ may', N'L4A-Stitching', N'1', N'18915', CAST(N'2020-08-31 14:17:47.517' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'LO0', N'L4B線', N'L4B ', N'L4B ', N'1', N'18915', CAST(N'2020-08-31 14:17:47.517' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'LO9', N'L4B線-成型組', N'L4B Thành hình', N'L4B - Assembly', N'1', N'18915', CAST(N'2020-08-31 14:17:47.517' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'LOS', N'L4B線-針車組', N'L4B-tổ may', N'L4B- Stitching', N'1', N'18915', CAST(N'2020-08-31 14:17:47.517' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'LP0', N'L5A線', N'L5A ', N'L5A ', N'1', N'18915', CAST(N'2020-08-31 14:17:47.520' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'LP9', N'L5A線-成型組', N'L5A Thành hình', N'L5A - Assembly', N'1', N'18915', CAST(N'2020-08-31 14:17:47.523' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'LPQ', N'L5線', N'Chuyền L5', N'Line L5', N'1', N'18915', CAST(N'2020-08-31 14:17:47.520' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'LPS', N'L5A線-針車組', N'L5A-tổ may', N'L5A-Stitching', N'1', N'18915', CAST(N'2020-08-31 14:17:47.520' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'LQ0', N'L5B線', N'L5B ', N'L5B ', N'1', N'18915', CAST(N'2020-08-31 14:17:47.523' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'LQ9', N'L5B線-成型組', N'L5B Thành hình', N'L5B - Assembly', N'1', N'18915', CAST(N'2020-08-31 14:17:47.523' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'LQS', N'L5B線-針車組', N'L5B-tổ may', N'L5B- Stitching', N'1', N'18915', CAST(N'2020-08-31 14:17:47.523' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'LR0', N'L6A線', N'L6A ', N'L6A ', N'1', N'18915', CAST(N'2020-08-31 14:17:47.527' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'LR9', N'L6A線-成型組', N'L6A Thành hình', N'L6A - Assembly', N'1', N'18915', CAST(N'2020-08-31 14:17:47.527' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'LRS', N'L6A線-針車組', N'L6A-tổ may', N'L6A-Stitching', N'1', N'18915', CAST(N'2020-08-31 14:17:47.527' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'LRT', N'L6線', N'Chuyền L6', N'Line L6', N'1', N'18915', CAST(N'2020-08-31 14:17:47.527' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'LT0', N'L6B線', N'L6B ', N'L6B ', N'1', N'18915', CAST(N'2020-08-31 14:17:47.527' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'LT9', N'L6B線-成型組', N'L6B Thành hình', N'L6B - Assembly', N'1', N'18915', CAST(N'2020-08-31 14:17:47.530' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'LTS', N'L6B線-針車組', N'L6B-tổ may', N'L6B- Stitching', N'1', N'18915', CAST(N'2020-08-31 14:17:47.530' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'LWA', N'L棟-L1-3線', N'Toa L- Line L1-L3 ', N'Building L', N'1', N'18915', CAST(N'2020-08-31 14:17:47.530' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'LWB', N'L棟-L4-6線', N'Toa L- Line L4-L6', N'Building L', N'1', N'18915', CAST(N'2020-08-31 14:17:47.530' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'LWL', N'L棟', N'Tòa nhà L', N'Building L', N'1', N'18915', CAST(N'2020-08-31 14:17:47.533' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'LZH', N'L棟 - 高週波組', N'Toà nhà L- máy ấn', N'Building L - Processing-Embossing', N'1', N'18915', CAST(N'2020-08-31 14:17:47.533' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'LZP', N'L棟 - 印刷組', N'Toà nhà L- in chuyền', N'Building L - Processing-Printing', N'1', N'18915', CAST(N'2020-08-31 14:17:47.533' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'MAC', N'M1~M3線-準備組', N'M1-3-Tổ chuẩn bị', N'LINE -M1-M3- Preparation ', N'1', N'18915', CAST(N'2020-08-31 14:17:47.437' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'MH0', N'M1A線', N'M1A ', N'M1A ', N'1', N'18915', CAST(N'2020-08-31 14:17:47.437' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'MH9', N'M1A線-成型組', N'M1A Thành hình', N'M1A - Assembly', N'1', N'18915', CAST(N'2020-08-31 14:17:47.440' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'MHI', N'M1線', N'Chuyền M1', N'Line M1', N'1', N'18915', CAST(N'2020-08-31 14:17:47.437' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'MHS', N'M1A線-針車組', N'M1A-tổ may', N'M1A-Stitching', N'1', N'18915', CAST(N'2020-08-31 14:17:47.440' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'MI0', N'M1B線', N'M1B ', N'M1B ', N'1', N'18915', CAST(N'2020-08-31 14:17:47.440' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'MI9', N'M1B線-成型組', N'M1B Thành hình', N'M1B - Assembly', N'1', N'18915', CAST(N'2020-08-31 14:17:47.443' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'MIS', N'M1B線-針車組', N'M1B-tổ may', N'M1B- Stitching', N'1', N'18915', CAST(N'2020-08-31 14:17:47.440' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'MJ0', N'M2A線', N'M2A ', N'M2A ', N'1', N'18915', CAST(N'2020-08-31 14:17:47.443' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'MJ9', N'M2A線-成型組', N'M2A Thành hình', N'M2A - Assembly', N'1', N'18915', CAST(N'2020-08-31 14:17:47.447' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'MJK', N'M2線', N'Chuyền M2', N'Line M2', N'1', N'18915', CAST(N'2020-08-31 14:17:47.443' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'MJS', N'M2A線-針車組', N'M2A-tổ may', N'M2A-Stitching', N'1', N'18915', CAST(N'2020-08-31 14:17:47.443' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'MK0', N'M2B線', N'M2B ', N'M2B ', N'1', N'18915', CAST(N'2020-08-31 14:17:47.447' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'MK9', N'M2B線-成型組', N'M2B Thành hình', N'M2B - Assembly', N'1', N'18915', CAST(N'2020-08-31 14:17:47.447' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'MKS', N'M2B線-針車組', N'M2B-tổ may', N'M2B- Stitching', N'1', N'18915', CAST(N'2020-08-31 14:17:47.447' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'ML0', N'M3A線', N'M3A ', N'M3A ', N'1', N'18915', CAST(N'2020-08-31 14:17:47.447' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'ML9', N'M3A線-成型組', N'M3A Thành hình', N'M3A - Assembly', N'1', N'18915', CAST(N'2020-08-31 14:17:47.450' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'MLM', N'M3線', N'Chuyền M3', N'Line M3', N'1', N'18915', CAST(N'2020-08-31 14:17:47.447' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'MLS', N'M3A線-針車組', N'M3A-tổ may', N'M3A-Stitching', N'1', N'18915', CAST(N'2020-08-31 14:17:47.450' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'MM0', N'M3B線', N'M3B ', N'M3B ', N'1', N'18915', CAST(N'2020-08-31 14:17:47.450' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'MM9', N'M3B線-成型組', N'M3B Thành hình', N'M3B - Assembly', N'1', N'18915', CAST(N'2020-08-31 14:17:47.453' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'MMA', N'M棟- M1-M3線', N'Toa M-  M1-M3', N'Building M', N'1', N'18915', CAST(N'2020-08-31 14:17:47.453' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'MMM', N'M棟', N'Tòa nhà M', N'Building M', N'1', N'18915', CAST(N'2020-08-31 14:17:47.453' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'MMS', N'M3B線-針車組', N'M3B-tổ may', N'M3B- Stitching', N'1', N'18915', CAST(N'2020-08-31 14:17:47.450' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'MXH', N'M棟 - 高週波組', N'Toà nhà M- máy ấn', N'Building M - Processing-Embossing', N'1', N'18915', CAST(N'2020-08-31 14:17:47.457' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'MXP', N'M棟 - 印刷組 ', N'Toà nhà M- in chuyền', N'Building M - Processing-Printing', N'1', N'18915', CAST(N'2020-08-31 14:17:47.457' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'OA0', N'O1線', N'Line O1', N'Line O1', N'1', N'18915', CAST(N'2020-08-31 14:17:47.457' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'OA9', N'O1線 - 成型組', N'Line O1- tổ thành hình', N'Line O1 - Assembly', N'1', N'18915', CAST(N'2020-08-31 14:17:47.457' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'OAS', N'O1線 - 裁準針組', N'Line O3- tổ chặt/gia công/may', N'Line O1 -Preparation & Stitching', N'1', N'18915', CAST(N'2020-08-31 14:17:47.457' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'OB0', N'O2線', N'Line O2', N'Line O2', N'1', N'18915', CAST(N'2020-08-31 14:17:47.457' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'OB9', N'O2線 - 成型組', N'Line O2- tổ thành hình', N'Line O2 - Assembly', N'1', N'18915', CAST(N'2020-08-31 14:17:47.460' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'OBS', N'O2線 -裁準針組', N'Line O2- tổ chặt/gia công/may', N'Line O2 - Preparation & Stitching', N'1', N'18915', CAST(N'2020-08-31 14:17:47.460' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'OH0', N'O1A線', N'O1A ', N'O1A ', N'1', N'18915', CAST(N'2020-08-31 14:17:47.460' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'OH9', N'O1A線-成型組', N'O1A Thành hình', N'O1A - Assembly', N'1', N'18915', CAST(N'2020-08-31 14:17:47.463' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'OHI', N'O1線', N'Chuyền O1', N'Line O1', N'1', N'18915', CAST(N'2020-08-31 14:17:47.460' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'OHS', N'O1A線-針車組', N'O1A-tổ may', N'O1A-Stitching', N'1', N'18915', CAST(N'2020-08-31 14:17:47.463' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'OI0', N'O1B線', N'O1B ', N'O1B ', N'1', N'18915', CAST(N'2020-08-31 14:17:47.463' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'OI9', N'O1B線-成型組', N'O1B Thành hình', N'O1B - Assembly', N'1', N'18915', CAST(N'2020-08-31 14:17:47.463' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'OIS', N'O1B線-針車組', N'O1B-tổ may', N'O1B- Stitching', N'1', N'18915', CAST(N'2020-08-31 14:17:47.463' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'OJ0', N'O2A線', N'O2A ', N'O2A ', N'1', N'18915', CAST(N'2020-08-31 14:17:47.467' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'OJ9', N'O2A線-成型組', N'O2A Thành hình', N'O2A - Assembly', N'1', N'18915', CAST(N'2020-08-31 14:17:47.467' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'OJK', N'O2線', N'Chuyền O2', N'Line O2', N'1', N'18915', CAST(N'2020-08-31 14:17:47.467' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'OJS', N'O2A線-針車組', N'O2A-tổ may', N'O2A-Stitching', N'1', N'18915', CAST(N'2020-08-31 14:17:47.467' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'OK0', N'O2B線', N'O2B ', N'O2B ', N'1', N'18915', CAST(N'2020-08-31 14:17:47.467' AS DateTime))
GO
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'OK9', N'O2B線-成型組', N'O2B Thành hình', N'O2B - Assembly', N'1', N'18915', CAST(N'2020-08-31 14:17:47.470' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'OKS', N'O2B線-針車組', N'O2B-tổ may', N'O2B- Stitching', N'1', N'18915', CAST(N'2020-08-31 14:17:47.470' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'OL0', N'O3A線', N'O3A ', N'O3A ', N'1', N'18915', CAST(N'2020-08-31 14:17:47.473' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'OL9', N'O3A線-成型組', N'O3A Thành hình', N'O3A - Assembly', N'1', N'18915', CAST(N'2020-08-31 14:17:47.473' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'OLM', N'O3線', N'Chuyền O3', N'Line O3', N'1', N'18915', CAST(N'2020-08-31 14:17:47.470' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'OLS', N'O3A線-針車組', N'O3A-tổ may', N'O3A-Stitching', N'1', N'18915', CAST(N'2020-08-31 14:17:47.473' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'OM0', N'O3B線', N'O3B ', N'O3B ', N'1', N'18915', CAST(N'2020-08-31 14:17:47.473' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'OM9', N'O3B線-成型組', N'O3B Thành hình', N'O3B - Assembly', N'1', N'18915', CAST(N'2020-08-31 14:17:47.477' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'OMS', N'O3B線-針車組', N'O3B-tổ may', N'O3B- Stitching', N'1', N'18915', CAST(N'2020-08-31 14:17:47.473' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'OOA', N'O棟- O1-O3線', N'Toa O- O1-O3', N'Building O', N'1', N'18915', CAST(N'2020-08-31 14:17:47.477' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'OOO', N'O棟', N'Tòa nhà O', N'Building O', N'1', N'18915', CAST(N'2020-08-31 14:17:47.477' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'OXH', N'O棟 - 高週波組', N'Toà nhà O - máy ấn', N'Building O', N'1', N'18915', CAST(N'2020-08-31 14:17:47.477' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'OXP', N'O棟 - 印刷組', N'Toà nhà O - in chuyền', N'Building O', N'1', N'18915', CAST(N'2020-08-31 14:17:47.477' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'PA0', N'P1線 ', N'Line P1', N'Line P1', N'1', N'18915', CAST(N'2020-08-31 14:17:47.480' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'PA9', N'P1線 - 成型組', N'Line P1- tổ thành hình', N'Line P1 - Assembly', N'1', N'18915', CAST(N'2020-08-31 14:17:47.480' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'PAS', N'P1線 -裁準針組', N'Line P1-tổ chặt/gia công/may', N'Line P1 - Preparation & Stitching', N'1', N'18915', CAST(N'2020-08-31 14:17:47.480' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'PB0', N'P2線', N'Line P2', N'Line P2', N'1', N'18915', CAST(N'2020-08-31 14:17:47.480' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'PB9', N'P2線 - 成型組', N'Line P2- tổ thành hình', N'Line P2 - Assembly', N'1', N'18915', CAST(N'2020-08-31 14:17:47.483' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'PBS', N'P2線 - 裁準針組', N'Line P2- tổ chặt/gia công/may', N'Line P2 - Preparation & Stitching', N'1', N'18915', CAST(N'2020-08-31 14:17:47.483' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'PC0', N'P3線', N'Line P3', N'Line P3', N'1', N'18915', CAST(N'2020-08-31 14:17:47.483' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'PC9', N'P3線 - 成型組', N'Line P3- tổ thành hình', N'Line P3 - Assembly', N'1', N'18915', CAST(N'2020-08-31 14:17:47.483' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'PCS', N'P3線 - 裁準針組', N'Line P3- tổ chặt/gia công/may', N'Line P3 - Preparation & Stitching', N'1', N'18915', CAST(N'2020-08-31 14:17:47.483' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'PD0', N'P4線 ', N'Line P4', N'Line P4', N'1', N'18915', CAST(N'2020-08-31 14:17:47.487' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'PD9', N'P4線 - 成型組', N'Line P4- tổ thành hình', N'Line P4 - Assembly', N'1', N'18915', CAST(N'2020-08-31 14:17:47.487' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'PDS', N'P4線 - 裁準針組', N'Line P4- tổ chặt/gia công/may', N'Line P4 - Preparation & Stitching', N'1', N'18915', CAST(N'2020-08-31 14:17:47.487' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'PE0', N'P5線', N'Line P5', N'Line P5', N'1', N'18915', CAST(N'2020-08-31 14:17:47.487' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'PE9', N'P5線 - 成型組 ', N'Line P5- tổ thành hình', N'Line P5 - Assembly', N'1', N'18915', CAST(N'2020-08-31 14:17:47.490' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'PES', N'P5線 - 裁準針組', N'Line P5- tổ chặt/gia công/may', N'Line P5 - Preparation & Stitching', N'1', N'18915', CAST(N'2020-08-31 14:17:47.487' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'PF0', N'P6線', N'Line P6', N'Line P6', N'1', N'18915', CAST(N'2020-08-31 14:17:47.490' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'PF9', N'P6線 - 成型組', N'Line P6- tổ thành hình', N'Line P6 - Assembly', N'1', N'18915', CAST(N'2020-08-31 14:17:47.490' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'PFS', N'P6線 -裁準針組', N'Line P6- tổ chặt/gia công/may', N'Line P6 - Preparation & Stitching', N'1', N'18915', CAST(N'2020-08-31 14:17:47.490' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'PG0', N'P7線', N'Line P7', N'Line P7', N'1', N'18915', CAST(N'2020-08-31 14:17:47.493' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'PG9', N'P7線 - 成型組', N'Line P7- tổ thành hình', N'Line P7 - Assembly', N'1', N'18915', CAST(N'2020-08-31 14:17:47.493' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'PPA', N'P棟-P1-3線', N'Toa P- Line P1-P3', N'Building P', N'1', N'18915', CAST(N'2020-08-31 14:17:47.493' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'PPB', N'P棟-P4-6線', N'Toa P- Line P4-P6 ', N'Building P', N'1', N'18915', CAST(N'2020-08-31 14:17:47.493' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'PPP', N'P棟 ', N'Toà nhà P', N'Building P', N'1', N'18915', CAST(N'2020-08-31 14:17:47.493' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'PXH', N'P棟 - 高週波組', N'Toà nhà P- máy ấn', N'Building P - Processing-Embossing', N'1', N'18915', CAST(N'2020-08-31 14:17:47.497' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'PXP', N'P棟 - 印刷組', N'Toà nhà P- in chuyền', N'Building P - Processing-Printing', N'1', N'18915', CAST(N'2020-08-31 14:17:47.497' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'QA0', N'Q1-生產線', N'Q1- Chuyền sản xuất', N'Q1- Chuyền sản xuất', N'1', N'18915', CAST(N'2020-08-31 14:17:47.303' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'QA1', N'Q1-倉庫/生管', N'Q1-Kho vật tư / Sinh quản', N'Q1- Chuyền sản xuất', N'1', N'18915', CAST(N'2020-08-31 14:17:47.307' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'QA2', N'Q1-準備組', N'Q1-Tổ chuẩn bị', N'Q1- Chuyền sản xuất', N'1', N'18915', CAST(N'2020-08-31 14:17:47.307' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'QA3', N'Q1-針車組 ', N'Q1-Tổ may', N'Q1- Chuyền sản xuất', N'1', N'18915', CAST(N'2020-08-31 14:17:47.307' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'QA9', N'Q1-成型組', N'Q1- Tổ thành hình ', N'Q1- Chuyền sản xuất', N'1', N'18915', CAST(N'2020-08-31 14:17:47.307' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'QAS', N'Q1-裁準針組', N'Q1- Tổ chặt/gia công/may', N'Q1- Chuyền sản xuất', N'1', N'18915', CAST(N'2020-08-31 14:17:47.307' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'QXP', N'Q1-印刷/高週波組', N'Q1- Máy ấn/in chuyền', N'Q1- Chuyền sản xuất', N'1', N'18915', CAST(N'2020-08-31 14:17:47.310' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'R00', N'甲冠昇鞋面廠        ', N'XMG-Giáp Quán Thăng', N'', N'1', N'18915', CAST(N'2020-08-31 14:17:47.533' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'R01', N'甲冠昇-行政                ', N'Tổ hành chánh', N'', N'1', N'18915', CAST(N'2020-08-31 14:17:47.537' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'R02', N'甲冠昇-機修兼工務          ', N'Bảo trì-công vụ', N'', N'1', N'18915', CAST(N'2020-08-31 14:17:47.537' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'R03', N'甲冠昇 -生管                ', N'Sinh quản', N'', N'1', N'18915', CAST(N'2020-08-31 14:17:47.537' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'R04', N'甲冠昇- 品保                ', N'Kiểm phẩm', N'', N'1', N'18915', CAST(N'2020-08-31 14:17:47.537' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'R06', N'甲冠昇-高週波組     ', N'Tổ máy ấn', N'', N'1', N'18915', CAST(N'2020-08-31 14:17:47.540' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'R07', N'甲冠昇- 印刷          ', N'Tổ in chuyền', N'', N'1', N'18915', CAST(N'2020-08-31 14:17:47.540' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'R08', N'甲冠昇-培幹              ', N'Cán bộ đào tạo', N'', N'1', N'18915', CAST(N'2020-08-31 14:17:47.540' AS DateTime))
INSERT [dbo].[Department] ([ID], [Name_ZW], [Name_LL], [Name_EN], [Status], [Updated_By], [Updated_Time]) VALUES (N'R09', N'甲冠昇-鐳射 ', N'Tổ Laser', N'', N'1', N'18915', CAST(N'2020-08-31 14:17:47.543' AS DateTime))
INSERT [dbo].[Product] ([ID], [Name], [CatID], [Status], [Updated_By], [Update_Time]) VALUES (N'M21300071', N'色帶 Epson LQ-2180S015086A', 1, N'1', NULL, CAST(N'2020-08-25 11:04:07.520' AS DateTime))
INSERT [dbo].[Product] ([ID], [Name], [CatID], [Status], [Updated_By], [Update_Time]) VALUES (N'M21300117', N'USB 鍵盤 Mitsumi Chines Keyboard', 2, N'1', NULL, CAST(N'2020-08-25 11:04:07.520' AS DateTime))
INSERT [dbo].[Product] ([ID], [Name], [CatID], [Status], [Updated_By], [Update_Time]) VALUES (N'M21300118', N'網路卡 Network Card', 2, N'1', NULL, CAST(N'2020-08-25 11:04:07.520' AS DateTime))
INSERT [dbo].[Product] ([ID], [Name], [CatID], [Status], [Updated_By], [Update_Time]) VALUES (N'M21300204', N'硬盤', 2, N'1', NULL, CAST(N'2020-08-25 11:04:07.520' AS DateTime))
INSERT [dbo].[Product] ([ID], [Name], [CatID], [Status], [Updated_By], [Update_Time]) VALUES (N'M21300206', N'電腦條碼標  ', 3, N'1', NULL, CAST(N'2020-08-25 11:04:07.520' AS DateTime))
INSERT [dbo].[Product] ([ID], [Name], [CatID], [Status], [Updated_By], [Update_Time]) VALUES (N'M21300207', N'條碼色帶', 4, N'1', NULL, CAST(N'2020-08-25 11:04:07.520' AS DateTime))
INSERT [dbo].[Product] ([ID], [Name], [CatID], [Status], [Updated_By], [Update_Time]) VALUES (N'M21300237', N'數位滑鼠 ', 2, N'1', NULL, CAST(N'2020-08-25 11:04:07.520' AS DateTime))
INSERT [dbo].[Product] ([ID], [Name], [CatID], [Status], [Updated_By], [Update_Time]) VALUES (N'M21300356', N'碳粉HPCP1515N CB540A', 1, N'1', NULL, CAST(N'2020-08-25 11:04:07.520' AS DateTime))
INSERT [dbo].[Product] ([ID], [Name], [CatID], [Status], [Updated_By], [Update_Time]) VALUES (N'M21300357', N'碳粉HPCP1515N CB541A ', 1, N'1', NULL, CAST(N'2020-08-25 11:04:07.520' AS DateTime))
INSERT [dbo].[Product] ([ID], [Name], [CatID], [Status], [Updated_By], [Update_Time]) VALUES (N'M21300358', N'碳粉HPCP1515N CB542A', 1, N'1', NULL, CAST(N'2020-08-25 11:04:07.520' AS DateTime))
INSERT [dbo].[Product] ([ID], [Name], [CatID], [Status], [Updated_By], [Update_Time]) VALUES (N'M21300359', N'碳粉HPCP1515N CB543A', 1, N'1', NULL, CAST(N'2020-08-25 11:04:07.520' AS DateTime))
INSERT [dbo].[Product] ([ID], [Name], [CatID], [Status], [Updated_By], [Update_Time]) VALUES (N'M21300363', N'碳粉 HP2035 HPCE505A', 1, N'1', NULL, CAST(N'2020-08-25 11:04:07.520' AS DateTime))
INSERT [dbo].[Product] ([ID], [Name], [CatID], [Status], [Updated_By], [Update_Time]) VALUES (N'M21300443', N'碳粉 HPCP1525NW CE320A 黑色', 1, N'1', NULL, CAST(N'2020-08-25 11:04:07.520' AS DateTime))
INSERT [dbo].[Product] ([ID], [Name], [CatID], [Status], [Updated_By], [Update_Time]) VALUES (N'M21300444', N'碳粉 HPCP1525NW CE321A 藍色', 1, N'1', NULL, CAST(N'2020-08-25 11:04:07.520' AS DateTime))
INSERT [dbo].[Product] ([ID], [Name], [CatID], [Status], [Updated_By], [Update_Time]) VALUES (N'M21300445', N'碳粉 HPCP1525NW CE322A 黃色', 1, N'1', NULL, CAST(N'2020-08-25 11:04:07.520' AS DateTime))
INSERT [dbo].[Product] ([ID], [Name], [CatID], [Status], [Updated_By], [Update_Time]) VALUES (N'M21300446', N'碳粉 HPCP1525NW CE323A 紅色', 1, N'1', NULL, CAST(N'2020-08-25 11:04:07.520' AS DateTime))
INSERT [dbo].[Product] ([ID], [Name], [CatID], [Status], [Updated_By], [Update_Time]) VALUES (N'M21300463 ', N'碳粉 HP3015DN-55A', 1, N'1', NULL, CAST(N'2020-08-25 11:04:07.520' AS DateTime))
INSERT [dbo].[Product] ([ID], [Name], [CatID], [Status], [Updated_By], [Update_Time]) VALUES (N'M21300464', N'碳粉 HP LaserJet 400-80A', 1, N'1', NULL, CAST(N'2020-08-25 11:04:07.520' AS DateTime))
INSERT [dbo].[Product] ([ID], [Name], [CatID], [Status], [Updated_By], [Update_Time]) VALUES (N'M21300465', N'碳粉 HP Enterprice 500 Color HP 507A Black (CE400A)', 1, N'1', NULL, CAST(N'2020-08-25 11:04:07.520' AS DateTime))
INSERT [dbo].[Product] ([ID], [Name], [CatID], [Status], [Updated_By], [Update_Time]) VALUES (N'M21300466', N'碳粉 HP Enterprice 500 Color HP 507A Black (CE401A)', 1, N'1', NULL, CAST(N'2020-08-25 11:04:07.520' AS DateTime))
INSERT [dbo].[Product] ([ID], [Name], [CatID], [Status], [Updated_By], [Update_Time]) VALUES (N'M21300467', N'碳粉 HP Enterprice 500 Color HP 507A Yellow (CE402A)', 1, N'1', NULL, CAST(N'2020-08-25 11:04:07.520' AS DateTime))
INSERT [dbo].[Product] ([ID], [Name], [CatID], [Status], [Updated_By], [Update_Time]) VALUES (N'M21300468', N'碳粉 HP Enterprice 500 Color HP 507A Magenta (CE403A)', 1, N'1', NULL, CAST(N'2020-08-25 11:04:07.520' AS DateTime))
INSERT [dbo].[Product] ([ID], [Name], [CatID], [Status], [Updated_By], [Update_Time]) VALUES (N'M21300475', N'碳粉 HP 400 COLOR BLACK (CF210A)', 1, N'1', NULL, CAST(N'2020-08-25 11:04:07.520' AS DateTime))
INSERT [dbo].[Product] ([ID], [Name], [CatID], [Status], [Updated_By], [Update_Time]) VALUES (N'M21300476', N'碳粉 HP 400 COLOR BLUE  (CF211A) ', 1, N'1', NULL, CAST(N'2020-08-25 11:04:07.520' AS DateTime))
INSERT [dbo].[Product] ([ID], [Name], [CatID], [Status], [Updated_By], [Update_Time]) VALUES (N'M21300477', N'碳粉 HP 400 COLOR BLUE  (CF212A)', 1, N'1', NULL, CAST(N'2020-08-25 11:04:07.520' AS DateTime))
INSERT [dbo].[Product] ([ID], [Name], [CatID], [Status], [Updated_By], [Update_Time]) VALUES (N'M21300478', N'碳粉 HP 400 COLOR RED   (CF213A)', 1, N'1', NULL, CAST(N'2020-08-25 11:04:07.520' AS DateTime))
INSERT [dbo].[Product] ([ID], [Name], [CatID], [Status], [Updated_By], [Update_Time]) VALUES (N'M21300479', N'HP T520-24in墨盒CZ129A黑色 ', 1, N'1', NULL, CAST(N'2020-08-25 11:04:07.520' AS DateTime))
INSERT [dbo].[Product] ([ID], [Name], [CatID], [Status], [Updated_By], [Update_Time]) VALUES (N'M21300480', N'HP T520-24in墨盒CZ130A藍色', 1, N'1', NULL, CAST(N'2020-08-25 11:04:07.520' AS DateTime))
INSERT [dbo].[Product] ([ID], [Name], [CatID], [Status], [Updated_By], [Update_Time]) VALUES (N'M21300481', N'HP T520-24in墨盒CZ131A紅色', 1, N'1', NULL, CAST(N'2020-08-25 11:04:07.520' AS DateTime))
INSERT [dbo].[Product] ([ID], [Name], [CatID], [Status], [Updated_By], [Update_Time]) VALUES (N'M21300482', N'HP T520-24in墨盒CZ132A黃色  ', 1, N'1', NULL, CAST(N'2020-08-25 11:04:07.520' AS DateTime))
INSERT [dbo].[Product] ([ID], [Name], [CatID], [Status], [Updated_By], [Update_Time]) VALUES (N'M21300488 ', N'墨水夾 HP678 Black CZ107A', 1, N'1', NULL, CAST(N'2020-08-25 11:04:07.520' AS DateTime))
INSERT [dbo].[Product] ([ID], [Name], [CatID], [Status], [Updated_By], [Update_Time]) VALUES (N'M21300492 ', N'墨水夾HP7110 Black CN053A', 1, N'1', NULL, CAST(N'2020-08-25 11:04:07.520' AS DateTime))
INSERT [dbo].[Product] ([ID], [Name], [CatID], [Status], [Updated_By], [Update_Time]) VALUES (N'M21300493', N'墨水夾HP7110 Blue  CN054A', 1, N'1', NULL, CAST(N'2020-08-25 11:04:07.520' AS DateTime))
INSERT [dbo].[Product] ([ID], [Name], [CatID], [Status], [Updated_By], [Update_Time]) VALUES (N'M21300494', N'墨水夾HP7110 Yellow CN056A', 1, N'1', NULL, CAST(N'2020-08-25 11:04:07.520' AS DateTime))
INSERT [dbo].[Product] ([ID], [Name], [CatID], [Status], [Updated_By], [Update_Time]) VALUES (N'M21300495', N'墨水夾HP7110 Pink  CN055A', 1, N'1', NULL, CAST(N'2020-08-25 11:04:07.520' AS DateTime))
INSERT [dbo].[Product] ([ID], [Name], [CatID], [Status], [Updated_By], [Update_Time]) VALUES (N'M21300507', N'填充碳粉55A ', 1, N'1', NULL, CAST(N'2020-08-25 11:04:07.520' AS DateTime))
INSERT [dbo].[Product] ([ID], [Name], [CatID], [Status], [Updated_By], [Update_Time]) VALUES (N'M21300509 ', N'填充碳粉90A', 1, N'1', NULL, CAST(N'2020-08-25 11:04:07.520' AS DateTime))
INSERT [dbo].[Product] ([ID], [Name], [CatID], [Status], [Updated_By], [Update_Time]) VALUES (N'M21300512 ', N'條碼貼標80*40mm*2300pcs', 3, N'1', NULL, CAST(N'2020-08-25 11:04:07.520' AS DateTime))
INSERT [dbo].[Product] ([ID], [Name], [CatID], [Status], [Updated_By], [Update_Time]) VALUES (N'M21300513', N'條碼貼標62*34mm*2700pcs ', 3, N'1', NULL, CAST(N'2020-08-25 11:04:07.520' AS DateTime))
INSERT [dbo].[Product] ([ID], [Name], [CatID], [Status], [Updated_By], [Update_Time]) VALUES (N'M21300527 ', N'條碼貼標76*76mm*1260pcs', 3, N'1', NULL, CAST(N'2020-08-25 11:04:07.520' AS DateTime))
INSERT [dbo].[Product] ([ID], [Name], [CatID], [Status], [Updated_By], [Update_Time]) VALUES (N'M21300528', N'填充碳粉05A', 1, N'1', NULL, CAST(N'2020-08-25 11:04:07.520' AS DateTime))
INSERT [dbo].[Product] ([ID], [Name], [CatID], [Status], [Updated_By], [Update_Time]) VALUES (N'M21300529 ', N'填充碳粉80A', 1, N'1', NULL, CAST(N'2020-08-25 11:04:07.520' AS DateTime))
INSERT [dbo].[Product] ([ID], [Name], [CatID], [Status], [Updated_By], [Update_Time]) VALUES (N'M21300531 ', N'填充碳粉12A', 1, N'1', NULL, CAST(N'2020-08-25 11:04:07.520' AS DateTime))
INSERT [dbo].[Product] ([ID], [Name], [CatID], [Status], [Updated_By], [Update_Time]) VALUES (N'M21300543', N'填充碳粉81A', 1, N'1', NULL, CAST(N'2020-08-25 11:04:07.520' AS DateTime))
INSERT [dbo].[Product] ([ID], [Name], [CatID], [Status], [Updated_By], [Update_Time]) VALUES (N'M21300549 ', N'墨水夾 Canon PG-745', 1, N'1', NULL, CAST(N'2020-08-25 11:04:07.520' AS DateTime))
INSERT [dbo].[Product] ([ID], [Name], [CatID], [Status], [Updated_By], [Update_Time]) VALUES (N'M21300550 ', N'墨水夾 Canon CL-746', 1, N'1', NULL, CAST(N'2020-08-25 11:04:07.520' AS DateTime))
INSERT [dbo].[Product] ([ID], [Name], [CatID], [Status], [Updated_By], [Update_Time]) VALUES (N'M21300557 ', N'填充碳粉26A', 1, N'1', NULL, CAST(N'2020-08-25 11:04:07.520' AS DateTime))
INSERT [dbo].[Product] ([ID], [Name], [CatID], [Status], [Updated_By], [Update_Time]) VALUES (N'M21300576', N'碳粉 HP M252DN COLOR BLACK(CF400A) ', 1, N'1', NULL, CAST(N'2020-08-25 11:04:07.520' AS DateTime))
INSERT [dbo].[Product] ([ID], [Name], [CatID], [Status], [Updated_By], [Update_Time]) VALUES (N'M21300577', N'碳粉 HP M252DN COLOR BLUE(CF401A)', 1, N'1', NULL, CAST(N'2020-08-25 11:04:07.520' AS DateTime))
INSERT [dbo].[Product] ([ID], [Name], [CatID], [Status], [Updated_By], [Update_Time]) VALUES (N'M21300578', N'碳粉 HPM252DN COLOR YELLOW(CF402A) ', 1, N'1', NULL, CAST(N'2020-08-25 11:04:07.520' AS DateTime))
INSERT [dbo].[Product] ([ID], [Name], [CatID], [Status], [Updated_By], [Update_Time]) VALUES (N'M21300579 ', N'碳粉 HPM252DN COLOR PINK(CF403A)', 1, N'1', NULL, CAST(N'2020-08-25 11:04:07.520' AS DateTime))
INSERT [dbo].[Product] ([ID], [Name], [CatID], [Status], [Updated_By], [Update_Time]) VALUES (N'M21300592', N'HP T795-C9403A黑色', 1, N'1', NULL, CAST(N'2020-08-25 11:04:07.520' AS DateTime))
INSERT [dbo].[Product] ([ID], [Name], [CatID], [Status], [Updated_By], [Update_Time]) VALUES (N'M21300593', N'HP T795-C9371A藍色', 1, N'1', NULL, CAST(N'2020-08-25 11:04:07.520' AS DateTime))
INSERT [dbo].[Product] ([ID], [Name], [CatID], [Status], [Updated_By], [Update_Time]) VALUES (N'M21300594', N'HP T795-C9372A紅色', 1, N'1', NULL, CAST(N'2020-08-25 11:04:07.520' AS DateTime))
INSERT [dbo].[Product] ([ID], [Name], [CatID], [Status], [Updated_By], [Update_Time]) VALUES (N'M21300595', N'HP T795-C9373A黃色', 1, N'1', NULL, CAST(N'2020-08-25 11:04:07.520' AS DateTime))
INSERT [dbo].[Product] ([ID], [Name], [CatID], [Status], [Updated_By], [Update_Time]) VALUES (N'M21300596', N'HP T795-C9374A灰色', 1, N'1', NULL, CAST(N'2020-08-25 11:04:07.520' AS DateTime))
INSERT [dbo].[Product] ([ID], [Name], [CatID], [Status], [Updated_By], [Update_Time]) VALUES (N'M21300599 ', N'HP T795-C9370A黑色 ', 1, N'1', NULL, CAST(N'2020-08-25 11:04:07.520' AS DateTime))
INSERT [dbo].[Product] ([ID], [Name], [CatID], [Status], [Updated_By], [Update_Time]) VALUES (N'M21300650 ', N'墨水夾HP3835 F6V26AA-彩色 ', 1, N'1', NULL, CAST(N'2020-08-25 11:04:07.520' AS DateTime))
INSERT [dbo].[Product] ([ID], [Name], [CatID], [Status], [Updated_By], [Update_Time]) VALUES (N'M21300651', N'墨水夾HP3835 F6V27AA-黑色', 1, N'1', NULL, CAST(N'2020-08-25 11:04:07.520' AS DateTime))
INSERT [dbo].[Product] ([ID], [Name], [CatID], [Status], [Updated_By], [Update_Time]) VALUES (N'M21300658', N'碳粉HP M553N COLOR BLACK (CF360A) ', 1, N'1', NULL, CAST(N'2020-08-25 11:04:07.520' AS DateTime))
INSERT [dbo].[Product] ([ID], [Name], [CatID], [Status], [Updated_By], [Update_Time]) VALUES (N'M21300659', N'碳粉HP M553N COLOR BLUE  (CF361A) ', 1, N'1', NULL, CAST(N'2020-08-25 11:04:07.520' AS DateTime))
INSERT [dbo].[Product] ([ID], [Name], [CatID], [Status], [Updated_By], [Update_Time]) VALUES (N'M21300660', N'碳粉HP M553N COLOR YELLOW (CF362A)', 1, N'1', NULL, CAST(N'2020-08-25 11:04:07.520' AS DateTime))
INSERT [dbo].[Product] ([ID], [Name], [CatID], [Status], [Updated_By], [Update_Time]) VALUES (N'M21300661 ', N'碳粉HP M553N COLOR RED(CF363A) ', 1, N'1', NULL, CAST(N'2020-08-25 11:04:07.520' AS DateTime))
INSERT [dbo].[Product] ([ID], [Name], [CatID], [Status], [Updated_By], [Update_Time]) VALUES (N'M21300664', N'填充碳粉93A', 1, N'1', NULL, CAST(N'2020-08-25 11:04:07.520' AS DateTime))
INSERT [dbo].[Product] ([ID], [Name], [CatID], [Status], [Updated_By], [Update_Time]) VALUES (N'M21300675 ', N'條碼貼票60*30*12(400張)  ', 3, N'1', NULL, CAST(N'2020-08-25 11:04:07.520' AS DateTime))
INSERT [dbo].[Product] ([ID], [Name], [CatID], [Status], [Updated_By], [Update_Time]) VALUES (N'M21300676', N'條碼貼票102*152*30(320張)', 3, N'1', NULL, CAST(N'2020-08-25 11:04:07.520' AS DateTime))
INSERT [dbo].[Receive] ([ID], [UserID], [Accept_ID], [DepID], [Register_Date], [Accept_Date], [Status], [Updated_By], [Updated_Time]) VALUES (N'1jhdo7bmHS', N'admin', NULL, N'A06', CAST(N'2020-11-24 11:13:04.740' AS DateTime), NULL, N'0 ', NULL, CAST(N'2020-11-24 11:13:04.740' AS DateTime))
INSERT [dbo].[Receive] ([ID], [UserID], [Accept_ID], [DepID], [Register_Date], [Accept_Date], [Status], [Updated_By], [Updated_Time]) VALUES (N'1P5YreZAUO', N'admin', N'admin', N'A06', CAST(N'2020-11-24 10:16:49.750' AS DateTime), CAST(N'2020-11-24 10:16:54.077' AS DateTime), N'1 ', NULL, CAST(N'2020-11-24 10:16:54.077' AS DateTime))
INSERT [dbo].[Receive] ([ID], [UserID], [Accept_ID], [DepID], [Register_Date], [Accept_Date], [Status], [Updated_By], [Updated_Time]) VALUES (N'70Wpl3Ly3F', N'admin', N'admin', N'A06', CAST(N'2020-11-24 09:36:02.573' AS DateTime), CAST(N'2020-11-24 10:16:55.580' AS DateTime), N'1 ', NULL, CAST(N'2020-11-24 10:16:55.580' AS DateTime))
INSERT [dbo].[Receive] ([ID], [UserID], [Accept_ID], [DepID], [Register_Date], [Accept_Date], [Status], [Updated_By], [Updated_Time]) VALUES (N'u2LybGm5Yi', N'admin', N'admin', N'A06', CAST(N'2020-11-24 14:08:32.963' AS DateTime), CAST(N'2020-11-24 14:13:19.597' AS DateTime), N'1 ', NULL, CAST(N'2020-11-24 14:13:19.597' AS DateTime))
INSERT [dbo].[Receive] ([ID], [UserID], [Accept_ID], [DepID], [Register_Date], [Accept_Date], [Status], [Updated_By], [Updated_Time]) VALUES (N'U9d58aH76a', N'admin', NULL, N'A06', CAST(N'2020-11-24 15:29:50.987' AS DateTime), NULL, N'0 ', NULL, CAST(N'2020-11-24 15:29:50.987' AS DateTime))
INSERT [dbo].[Receive] ([ID], [UserID], [Accept_ID], [DepID], [Register_Date], [Accept_Date], [Status], [Updated_By], [Updated_Time]) VALUES (N'VIThZUN9lq', N'admin', NULL, N'A06', CAST(N'2020-11-24 11:08:51.607' AS DateTime), NULL, N'0 ', NULL, CAST(N'2020-11-24 11:08:51.607' AS DateTime))
INSERT [dbo].[Receive] ([ID], [UserID], [Accept_ID], [DepID], [Register_Date], [Accept_Date], [Status], [Updated_By], [Updated_Time]) VALUES (N'ydRMBsE36v', N'admin', NULL, N'A06', CAST(N'2020-11-24 10:23:01.393' AS DateTime), NULL, N'0 ', NULL, CAST(N'2020-11-24 10:23:01.393' AS DateTime))
SET IDENTITY_INSERT [dbo].[Receive_Detail] ON 

INSERT [dbo].[Receive_Detail] ([ID], [ReceiveID], [ProductID], [ProductName], [Qty], [Update_By], [Update_Time]) VALUES (1, N'70Wpl3Ly3F', N'M21300117', N'M21300117-USB 鍵盤 Mitsumi Chines Keyboard', 1, NULL, CAST(N'2020-11-24 09:36:02.717' AS DateTime))
INSERT [dbo].[Receive_Detail] ([ID], [ReceiveID], [ProductID], [ProductName], [Qty], [Update_By], [Update_Time]) VALUES (2, N'1P5YreZAUO', N'M21300117', N'USB 鍵盤 Mitsumi Chines Keyboard', 5, N'admin', CAST(N'2020-11-24 14:08:44.720' AS DateTime))
INSERT [dbo].[Receive_Detail] ([ID], [ReceiveID], [ProductID], [ProductName], [Qty], [Update_By], [Update_Time]) VALUES (3, N'1P5YreZAUO', N'M21300358', N'碳粉HPCP1515N CB542A', 3, N'admin', CAST(N'2020-11-24 14:08:44.720' AS DateTime))
INSERT [dbo].[Receive_Detail] ([ID], [ReceiveID], [ProductID], [ProductName], [Qty], [Update_By], [Update_Time]) VALUES (4, N'1P5YreZAUO', N'M21300359', N'碳粉HPCP1515N CB543A', 4, N'admin', CAST(N'2020-11-24 14:08:44.720' AS DateTime))
INSERT [dbo].[Receive_Detail] ([ID], [ReceiveID], [ProductID], [ProductName], [Qty], [Update_By], [Update_Time]) VALUES (5, N'ydRMBsE36v', N'M21300475', N'碳粉 HP 400 COLOR BLACK (CF210A)', 2, NULL, CAST(N'2020-11-24 10:23:01.470' AS DateTime))
INSERT [dbo].[Receive_Detail] ([ID], [ReceiveID], [ProductID], [ProductName], [Qty], [Update_By], [Update_Time]) VALUES (6, N'VIThZUN9lq', N'M21300466', N'碳粉 HP Enterprice 500 Color HP 507A Black (CE401A)', 2, NULL, CAST(N'2020-11-24 11:08:51.657' AS DateTime))
INSERT [dbo].[Receive_Detail] ([ID], [ReceiveID], [ProductID], [ProductName], [Qty], [Update_By], [Update_Time]) VALUES (7, N'1jhdo7bmHS', N'M21300475', N'碳粉 HP 400 COLOR BLACK (CF210A)', 2, NULL, CAST(N'2020-11-24 11:13:04.790' AS DateTime))
INSERT [dbo].[Receive_Detail] ([ID], [ReceiveID], [ProductID], [ProductName], [Qty], [Update_By], [Update_Time]) VALUES (8, N'1jhdo7bmHS', N'M21300512 ', N'-條碼貼標80*40mm*2300pcs', 3, NULL, CAST(N'2020-11-24 11:13:04.817' AS DateTime))
INSERT [dbo].[Receive_Detail] ([ID], [ReceiveID], [ProductID], [ProductName], [Qty], [Update_By], [Update_Time]) VALUES (9, N'u2LybGm5Yi', N'M21300071', N'色帶 Epson LQ-2180S015086A', 1, NULL, CAST(N'2020-11-24 14:08:33.030' AS DateTime))
INSERT [dbo].[Receive_Detail] ([ID], [ReceiveID], [ProductID], [ProductName], [Qty], [Update_By], [Update_Time]) VALUES (10, N'u2LybGm5Yi', N'M21300118', N'網路卡 Network Card', 2, NULL, CAST(N'2020-11-24 14:08:33.060' AS DateTime))
INSERT [dbo].[Receive_Detail] ([ID], [ReceiveID], [ProductID], [ProductName], [Qty], [Update_By], [Update_Time]) VALUES (11, N'U9d58aH76a', N'M21300118', N'網路卡 Network Card', 1, NULL, CAST(N'2020-11-24 15:29:51.040' AS DateTime))
SET IDENTITY_INSERT [dbo].[Receive_Detail] OFF
INSERT [dbo].[Role] ([ID], [Name], [Status], [Update_By], [Update_Time]) VALUES (0, N'full role', N'1', NULL, NULL)
INSERT [dbo].[Role] ([ID], [Name], [Status], [Update_By], [Update_Time]) VALUES (1, N'admin', N'1', NULL, NULL)
INSERT [dbo].[Role] ([ID], [Name], [Status], [Update_By], [Update_Time]) VALUES (2, N'approval', N'1', NULL, NULL)
INSERT [dbo].[Role] ([ID], [Name], [Status], [Update_By], [Update_Time]) VALUES (3, N'receive', N'1', NULL, NULL)
INSERT [dbo].[User] ([ID], [Password], [Name], [RoleID], [DepID], [Update_By], [Update_Time]) VALUES (N'09356', N'123456', N'Giang Vinh Khuong', 2, N'B05', N'Hà Thị Ngọc Hạnh', CAST(N'2020-08-31 15:24:14.387' AS DateTime))
INSERT [dbo].[User] ([ID], [Password], [Name], [RoleID], [DepID], [Update_By], [Update_Time]) VALUES (N'09370', N'123456', N'Nguyen Thi Ngoc Ly', 3, N'B05', N'Hà Thị Ngọc Hạnh', CAST(N'2020-08-31 15:25:08.980' AS DateTime))
INSERT [dbo].[User] ([ID], [Password], [Name], [RoleID], [DepID], [Update_By], [Update_Time]) VALUES (N'123456', N'123456', N'Lee', 3, N'A02', N'Admin', CAST(N'2020-11-19 10:57:51.147' AS DateTime))
INSERT [dbo].[User] ([ID], [Password], [Name], [RoleID], [DepID], [Update_By], [Update_Time]) VALUES (N'159789', N'123456', N'Omg', 1, N'A02', N'Admin', CAST(N'2020-11-19 10:59:37.490' AS DateTime))
INSERT [dbo].[User] ([ID], [Password], [Name], [RoleID], [DepID], [Update_By], [Update_Time]) VALUES (N'18915', N'shc@123', N'Hà Thị Ngọc Hạnh', 1, N'A06', N'Hà Thị Ngọc Hạnh', CAST(N'2020-08-31 15:27:39.107' AS DateTime))
INSERT [dbo].[User] ([ID], [Password], [Name], [RoleID], [DepID], [Update_By], [Update_Time]) VALUES (N'30201', N'123456', N'Huynh Vi Dan', 2, N'A06', N'Hà Thị Ngọc Hạnh', CAST(N'2020-08-31 15:50:32.833' AS DateTime))
INSERT [dbo].[User] ([ID], [Password], [Name], [RoleID], [DepID], [Update_By], [Update_Time]) VALUES (N'36799', N'123456', N'Phan The Bao', 3, N'A06', N'Hà Thị Ngọc Hạnh', CAST(N'2020-08-31 15:51:12.757' AS DateTime))
INSERT [dbo].[User] ([ID], [Password], [Name], [RoleID], [DepID], [Update_By], [Update_Time]) VALUES (N'43263', N'123456', N'LANG THUOC ANH', 3, N'A02', N'Hà Thị Ngọc Hạnh', CAST(N'2020-08-31 11:06:00.370' AS DateTime))
INSERT [dbo].[User] ([ID], [Password], [Name], [RoleID], [DepID], [Update_By], [Update_Time]) VALUES (N'456789', N'123456', N'Kim Bum', 2, N'A02', N'Omg', CAST(N'2020-11-19 11:03:30.120' AS DateTime))
INSERT [dbo].[User] ([ID], [Password], [Name], [RoleID], [DepID], [Update_By], [Update_Time]) VALUES (N'63032 ', N'123456', N'Nam', 1, N'A50', N'admin', CAST(N'2019-12-15 08:03:02.737' AS DateTime))
INSERT [dbo].[User] ([ID], [Password], [Name], [RoleID], [DepID], [Update_By], [Update_Time]) VALUES (N'64194', N'123456', N'Long', 3, N'A50', N'admin', CAST(N'2019-12-15 08:03:02.737' AS DateTime))
INSERT [dbo].[User] ([ID], [Password], [Name], [RoleID], [DepID], [Update_By], [Update_Time]) VALUES (N'66845', N'123456', N'Hai', 3, N'A02', N'Admin', CAST(N'2020-11-20 14:09:24.647' AS DateTime))
INSERT [dbo].[User] ([ID], [Password], [Name], [RoleID], [DepID], [Update_By], [Update_Time]) VALUES (N'66846', N'123456', N'Tinh', 3, N'A06', N'Admin', CAST(N'2020-11-18 14:13:57.883' AS DateTime))
INSERT [dbo].[User] ([ID], [Password], [Name], [RoleID], [DepID], [Update_By], [Update_Time]) VALUES (N'66847', N'123456', N'Thao', 3, N'A06', N'Admin', CAST(N'2020-11-18 14:14:17.817' AS DateTime))
INSERT [dbo].[User] ([ID], [Password], [Name], [RoleID], [DepID], [Update_By], [Update_Time]) VALUES (N'90342', N'123456', N'John Chuang', 2, N'A02', N'Hà Thị Ngọc Hạnh', CAST(N'2020-08-31 11:09:25.930' AS DateTime))
INSERT [dbo].[User] ([ID], [Password], [Name], [RoleID], [DepID], [Update_By], [Update_Time]) VALUES (N'admin', N'123456', N'Admin', 0, N'A06', N'admin', CAST(N'2019-12-15 08:03:02.737' AS DateTime))
INSERT [dbo].[User] ([ID], [Password], [Name], [RoleID], [DepID], [Update_By], [Update_Time]) VALUES (N'SD3', N'123456', N'SD3', 2, N'A50', N'admin', CAST(N'2019-12-15 08:03:02.737' AS DateTime))
INSERT [dbo].[Warehouse] ([ID], [Name_LL], [Name_ZW]) VALUES (1, N'Kho tạp phẩm（CM)', N'庶務用品倉')
INSERT [dbo].[Warehouse] ([ID], [Name_LL], [Name_ZW]) VALUES (2, N'Kho linh kiện(CE)', N'機器零件倉')
INSERT [dbo].[Warehouse] ([ID], [Name_LL], [Name_ZW]) VALUES (3, N'Kho IT', N'碳粉&電腦零件倉')
