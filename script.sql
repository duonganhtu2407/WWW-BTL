USE [mtv-shop]
GO
/****** Object:  Table [dbo].[category]    Script Date: 5/14/2021 11:58:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[category](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[created_at] [datetime] NULL,
	[deleted_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
	[name] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[order]    Script Date: 5/14/2021 11:58:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[order](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[created_at] [datetime] NULL,
	[deleted_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
	[content] [nvarchar](255) NULL,
	[delivey_address] [nvarchar](255) NULL,
	[phone] [varchar](255) NULL,
	[receiver] [nvarchar](255) NULL,
	[status] [bit] NULL,
	[total_money] [numeric](19, 0) NULL,
	[user_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product]    Script Date: 5/14/2021 11:58:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[created_at] [datetime] NULL,
	[deleted_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
	[content] [nvarchar](2000) NULL,
	[count] [int] NULL,
	[discount] [float] NULL,
	[image] [varchar](255) NULL,
	[name] [nvarchar](255) NULL,
	[price] [numeric](19, 0) NULL,
	[category_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product_order]    Script Date: 5/14/2021 11:58:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product_order](
	[count] [int] NULL,
	[price] [numeric](19, 0) NULL,
	[product_id] [int] NOT NULL,
	[odder_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[product_id] ASC,
	[odder_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[role]    Script Date: 5/14/2021 11:58:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[role](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[created_at] [datetime] NULL,
	[deleted_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
	[name] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user]    Script Date: 5/14/2021 11:58:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[created_at] [datetime] NULL,
	[deleted_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
	[account] [varchar](255) NULL,
	[email] [varchar](255) NULL,
	[fullname] [nvarchar](255) NULL,
	[password] [varchar](255) NULL,
	[phone] [varchar](255) NULL,
	[role_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[category] ON 

INSERT [dbo].[category] ([id], [created_at], [deleted_at], [updated_at], [name]) VALUES (2, CAST(N'2021-05-20T17:33:16.610' AS DateTime), NULL, CAST(N'2021-05-20T17:33:16.610' AS DateTime), N'Lò vi sóng')
INSERT [dbo].[category] ([id], [created_at], [deleted_at], [updated_at], [name]) VALUES (3, CAST(N'2021-05-21T22:07:06.747' AS DateTime), NULL, CAST(N'2021-05-21T22:07:06.747' AS DateTime), N'Nồi cơm điện')
INSERT [dbo].[category] ([id], [created_at], [deleted_at], [updated_at], [name]) VALUES (4, CAST(N'2021-05-22T22:09:44.360' AS DateTime), NULL, CAST(N'2021-05-29T21:37:07.057' AS DateTime), N'Máy lạnh')
INSERT [dbo].[category] ([id], [created_at], [deleted_at], [updated_at], [name]) VALUES (5, CAST(N'2021-05-22T22:19:09.040' AS DateTime), NULL, CAST(N'2021-05-28T16:33:59.623' AS DateTime), N'Máy giặt')
SET IDENTITY_INSERT [dbo].[category] OFF
GO
SET IDENTITY_INSERT [dbo].[product] ON 

INSERT [dbo].[product] ([id], [created_at], [deleted_at], [updated_at], [content], [count], [discount], [image], [name], [price], [category_id]) VALUES (2, CAST(N'2021-05-20T17:33:59.720' AS DateTime), NULL, CAST(N'2021-05-21T21:53:11.137' AS DateTime), N'', 1, 20, N'/images/lo-vi-song-electrolux-emg23k38gb-thumb-300x300.jpg', N'Electrolux 23 lít EMM23K18GW', CAST(1490000 AS Numeric(19, 0)), 2)
INSERT [dbo].[product] ([id], [created_at], [deleted_at], [updated_at], [content], [count], [discount], [image], [name], [price], [category_id]) VALUES (4, CAST(N'2021-05-21T22:27:23.210' AS DateTime), NULL, CAST(N'2021-05-21T22:27:23.210' AS DateTime), N'', 1, 0, N'/images/lo-vi-song-electrolux-emm20k18gw-thumb-300x300.jpg', N'Lò vi sóng', CAST(1000000 AS Numeric(19, 0)), 2)
INSERT [dbo].[product] ([id], [created_at], [deleted_at], [updated_at], [content], [count], [discount], [image], [name], [price], [category_id]) VALUES (6, CAST(N'2021-05-21T23:17:03.697' AS DateTime), NULL, CAST(N'2021-05-22T00:18:24.037' AS DateTime), N'', 1, 0, N'/images/panasonic-nn-gt35hmyue-thumb-300x300.jpg', N'Sharp 22 lít R-20A1(S)VN', CAST(190000 AS Numeric(19, 0)), 2)
INSERT [dbo].[product] ([id], [created_at], [deleted_at], [updated_at], [content], [count], [discount], [image], [name], [price], [category_id]) VALUES (7, CAST(N'2021-05-22T00:56:17.467' AS DateTime), NULL, CAST(N'2021-05-22T00:56:17.467' AS DateTime), N'', 1, 0, N'/images/lo-vi-song-toshiba-er-sm20-w1-vn-thumb-300x300.jpg', N'Sharp 20 lít R-205VN(S)', CAST(1490000 AS Numeric(19, 0)), 2)
INSERT [dbo].[product] ([id], [created_at], [deleted_at], [updated_at], [content], [count], [discount], [image], [name], [price], [category_id]) VALUES (8, CAST(N'2021-05-22T01:10:31.040' AS DateTime), NULL, CAST(N'2021-05-22T01:10:31.040' AS DateTime), N'', 1, 10, N'/images/kangaroo-18-lit-kg18dr8-thumb-300x300.jpg', N'Nồi cơm điện tử Kangaroo 1.8 lít KG18DR8', CAST(1156000 AS Numeric(19, 0)), 3)
INSERT [dbo].[product] ([id], [created_at], [deleted_at], [updated_at], [content], [count], [discount], [image], [name], [price], [category_id]) VALUES (9, CAST(N'2021-05-22T19:52:13.300' AS DateTime), NULL, CAST(N'2021-05-22T19:52:13.300' AS DateTime), N'', 1, 0, N'/images/noi-com-nap-gai-delites-ncg1010-thumb-300x300.jpg', N'Nồi cơm nắp gài Delites 1.8 lít NCG1010', CAST(571000 AS Numeric(19, 0)), 3)
INSERT [dbo].[product] ([id], [created_at], [deleted_at], [updated_at], [content], [count], [discount], [image], [name], [price], [category_id]) VALUES (10, CAST(N'2021-05-22T19:52:45.300' AS DateTime), NULL, CAST(N'2021-05-22T19:52:45.300' AS DateTime), N'', 1, 5, N'/images/kangaroo-kg18r2-18-lit-thumb-300x300.jpg', N'Nồi cơm nắp gài Kangaroo KG18R2 1.8 lít', CAST(860000 AS Numeric(19, 0)), 3)
INSERT [dbo].[product] ([id], [created_at], [deleted_at], [updated_at], [content], [count], [discount], [image], [name], [price], [category_id]) VALUES (11, CAST(N'2021-05-22T19:53:08.247' AS DateTime), NULL, CAST(N'2021-05-22T19:53:08.247' AS DateTime), N'', 1, 0, N'/images/kangroo-kg822-do-thumb-300x300.jpg', N'Nồi cơm điện Kangaroo 1.2 lít KG822 đỏ', CAST(720000 AS Numeric(19, 0)), 3)
INSERT [dbo].[product] ([id], [created_at], [deleted_at], [updated_at], [content], [count], [discount], [image], [name], [price], [category_id]) VALUES (12, CAST(N'2021-05-22T19:53:46.807' AS DateTime), NULL, CAST(N'2021-05-22T19:53:46.807' AS DateTime), N'', 1, 25, N'/images/noi-com-dien-nap-gai-kangaroo-kg835-18l-thumb-300x300.jpg', N'Nồi cơm điện nắp gài Kangaroo 1.8 lít KG835', CAST(890000 AS Numeric(19, 0)), 3)
INSERT [dbo].[product] ([id], [created_at], [deleted_at], [updated_at], [content], [count], [discount], [image], [name], [price], [category_id]) VALUES (13, CAST(N'2021-05-22T19:54:22.777' AS DateTime), NULL, CAST(N'2021-05-22T19:54:22.777' AS DateTime), N'', 1, 0, N'/images/sunhouse-mama-shd-8661-thumb-300x300.jpg', N'Nồi cơm điện Sunhouse Mama 1.8 lít SHD 8661', CAST(1290000 AS Numeric(19, 0)), 3)
INSERT [dbo].[product] ([id], [created_at], [deleted_at], [updated_at], [content], [count], [discount], [image], [name], [price], [category_id]) VALUES (14, CAST(N'2021-05-22T19:55:02.450' AS DateTime), NULL, CAST(N'2021-05-22T19:55:02.450' AS DateTime), N'', 1, 0, N'/images/kangaroo-kg595-thumb-300x300.jpg', N'Nồi cơm điện tử 1.8 lít Kangaroo KG595', CAST(1550000 AS Numeric(19, 0)), 3)
INSERT [dbo].[product] ([id], [created_at], [deleted_at], [updated_at], [content], [count], [discount], [image], [name], [price], [category_id]) VALUES (15, CAST(N'2021-05-22T19:55:34.343' AS DateTime), NULL, CAST(N'2021-05-22T19:55:34.343' AS DateTime), N'', 1, 0, N'/images/noi-com-nap-gai-sunhouse-shd8208c-cafe-thumb-300x300.jpg', N'Nồi cơm nắp gài Sunhouse 1 lít SHD8208C', CAST(550000 AS Numeric(19, 0)), 3)
INSERT [dbo].[product] ([id], [created_at], [deleted_at], [updated_at], [content], [count], [discount], [image], [name], [price], [category_id]) VALUES (16, CAST(N'2021-05-22T19:56:03.703' AS DateTime), NULL, CAST(N'2021-05-22T19:56:03.703' AS DateTime), N'', 1, 20, N'/images/cao-tan-kangaroo-kg599n-thumb-300x300.jpg', N'Nồi cơm điện cao tần Kangaroo 1.8 lít KG599N', CAST(2152000 AS Numeric(19, 0)), 3)
INSERT [dbo].[product] ([id], [created_at], [deleted_at], [updated_at], [content], [count], [discount], [image], [name], [price], [category_id]) VALUES (17, CAST(N'2021-05-22T19:56:45.047' AS DateTime), NULL, CAST(N'2021-05-22T19:56:45.047' AS DateTime), N'', 1, 21, N'/images/ava-tp40-ct01e-18-lit-thumb-300x300.jpg', N'Nồi cơm điện tử Ava TP40-CT01E 1.8 lít', CAST(1090000 AS Numeric(19, 0)), 3)
INSERT [dbo].[product] ([id], [created_at], [deleted_at], [updated_at], [content], [count], [discount], [image], [name], [price], [category_id]) VALUES (18, CAST(N'2021-05-22T20:46:11.480' AS DateTime), NULL, CAST(N'2021-05-22T20:46:11.480' AS DateTime), N'', 1, 0, N'/images/lo-vi-song-electrolux-emg23k38gb-thumb-300x300.jpg', N'Lò vi sóng', CAST(1000000 AS Numeric(19, 0)), 2)
INSERT [dbo].[product] ([id], [created_at], [deleted_at], [updated_at], [content], [count], [discount], [image], [name], [price], [category_id]) VALUES (19, CAST(N'2021-05-22T20:50:20.357' AS DateTime), NULL, CAST(N'2021-05-22T20:50:20.357' AS DateTime), N'', 1, 5, N'/images/sharp-r-205vn-s-20-lit-thumb-300x300.jpg', N'Panasonic 32 lít NN-ST65JBYUE', CAST(4820000 AS Numeric(19, 0)), 2)
INSERT [dbo].[product] ([id], [created_at], [deleted_at], [updated_at], [content], [count], [discount], [image], [name], [price], [category_id]) VALUES (20, CAST(N'2021-05-22T20:50:49.020' AS DateTime), NULL, CAST(N'2021-05-22T20:50:49.020' AS DateTime), N'', 1, 0, N'/images/sharp-r-g222vn-s-20lit-thumb-300x300.jpg', N'Sharp 32 lít R-C932XVN-BST', CAST(5100000 AS Numeric(19, 0)), 2)
INSERT [dbo].[product] ([id], [created_at], [deleted_at], [updated_at], [content], [count], [discount], [image], [name], [price], [category_id]) VALUES (21, CAST(N'2021-05-22T20:51:08.437' AS DateTime), NULL, CAST(N'2021-05-22T20:51:08.437' AS DateTime), N'', 1, 15, N'/images/sharp-r-g371vn-w-thumb-300x300.jpg', N'Panasonic 20 lít NN-ST25JWYUE', CAST(2340000 AS Numeric(19, 0)), 2)
INSERT [dbo].[product] ([id], [created_at], [deleted_at], [updated_at], [content], [count], [discount], [image], [name], [price], [category_id]) VALUES (22, CAST(N'2021-05-22T20:51:44.903' AS DateTime), NULL, CAST(N'2021-05-22T20:51:44.903' AS DateTime), N'', 1, 25, N'/images/sharp-r-20a1-s-vn-22lit-thumb-300x300.jpg', N'Electrolux 23 lít EMM2318X', CAST(2390000 AS Numeric(19, 0)), 2)
INSERT [dbo].[product] ([id], [created_at], [deleted_at], [updated_at], [content], [count], [discount], [image], [name], [price], [category_id]) VALUES (23, CAST(N'2021-05-22T20:52:56.653' AS DateTime), NULL, CAST(N'2021-05-22T20:52:56.653' AS DateTime), N'', 1, 0, N'/images/lo-vi-song-bluestone-7755-thumb-300x300.jpg', N'Sharp 25 lít R-G52XVN-ST', CAST(1490000 AS Numeric(19, 0)), 2)
INSERT [dbo].[product] ([id], [created_at], [deleted_at], [updated_at], [content], [count], [discount], [image], [name], [price], [category_id]) VALUES (24, CAST(N'2021-05-22T20:54:17.640' AS DateTime), NULL, CAST(N'2021-05-22T22:07:22.800' AS DateTime), N'', 1, 20, N'/images/sharp-r-g222vn-s-20lit-thumb-300x300.jpg', N'Sharp 28 lít R-G728XVN-BST', CAST(3850000 AS Numeric(19, 0)), 2)
INSERT [dbo].[product] ([id], [created_at], [deleted_at], [updated_at], [content], [count], [discount], [image], [name], [price], [category_id]) VALUES (25, CAST(N'2021-05-22T22:11:25.200' AS DateTime), NULL, CAST(N'2021-05-22T22:11:25.200' AS DateTime), N'', 1, 0, N'/images/1hpftka25vmvmv-550x160.jpg', N'Panasonic Inverter 1 HP CU/CS-PU9WKH-8M', CAST(10590000 AS Numeric(19, 0)), 4)
INSERT [dbo].[product] ([id], [created_at], [deleted_at], [updated_at], [content], [count], [discount], [image], [name], [price], [category_id]) VALUES (26, CAST(N'2021-05-22T22:11:54.817' AS DateTime), NULL, CAST(N'2021-05-22T22:11:54.817' AS DateTime), N'', 1, 5, N'/images/nagakawa-nis-c09r2h10-550x160.jpg', N'Panasonic Inverter 1 HP CU/CS-XU9UKH-8', CAST(12490000 AS Numeric(19, 0)), 4)
INSERT [dbo].[product] ([id], [created_at], [deleted_at], [updated_at], [content], [count], [discount], [image], [name], [price], [category_id]) VALUES (27, CAST(N'2021-05-22T22:12:15.920' AS DateTime), NULL, CAST(N'2021-05-22T22:12:15.920' AS DateTime), N'', 1, 0, N'/images/panasonic-cu-cs-pu9wkh-8m-1-550x160.jpg', N'Toshiba Inverter 1 HP RAS-H10D2KCVG-V', CAST(9990000 AS Numeric(19, 0)), 4)
INSERT [dbo].[product] ([id], [created_at], [deleted_at], [updated_at], [content], [count], [discount], [image], [name], [price], [category_id]) VALUES (28, CAST(N'2021-05-22T22:12:54.110' AS DateTime), NULL, CAST(N'2021-05-22T22:12:54.110' AS DateTime), N'', 2, 0, N'/images/panasonic-cu-cs-xu9ukh-8-10-550x160.jpg', N'Nagakawa Inverter 1 HP NIS-C09R2H10', CAST(6840000 AS Numeric(19, 0)), 4)
INSERT [dbo].[product] ([id], [created_at], [deleted_at], [updated_at], [content], [count], [discount], [image], [name], [price], [category_id]) VALUES (29, CAST(N'2021-05-22T22:13:33.167' AS DateTime), NULL, CAST(N'2021-05-22T22:13:33.167' AS DateTime), N'', 1, 7, N'/images/toshiba-ras-h10d2kcvg-v-2-550x160.jpg', N'Daikin Inverter 1 HP FTKA25VMVMV', CAST(10590000 AS Numeric(19, 0)), 4)
INSERT [dbo].[product] ([id], [created_at], [deleted_at], [updated_at], [content], [count], [discount], [image], [name], [price], [category_id]) VALUES (30, CAST(N'2021-05-22T22:14:04.027' AS DateTime), NULL, CAST(N'2021-05-22T22:14:04.027' AS DateTime), N'', 1, 0, N'/images/panasonic-cu-cs-xu9ukh-8-10-550x160.jpg', N'Samsung Inverter 1 HP AR09TYHQASINSV', CAST(7840000 AS Numeric(19, 0)), 4)
INSERT [dbo].[product] ([id], [created_at], [deleted_at], [updated_at], [content], [count], [discount], [image], [name], [price], [category_id]) VALUES (31, CAST(N'2021-05-22T22:14:30.837' AS DateTime), NULL, CAST(N'2021-05-29T19:24:25.867' AS DateTime), N'', 5, 12, N'/images/nagakawa-nis-c09r2h10-550x160.jpg', N'Sharp Inverter 1 HP AH-X9XEW', CAST(8990000 AS Numeric(19, 0)), 4)
INSERT [dbo].[product] ([id], [created_at], [deleted_at], [updated_at], [content], [count], [discount], [image], [name], [price], [category_id]) VALUES (32, CAST(N'2021-05-22T22:20:52.763' AS DateTime), NULL, CAST(N'2021-05-22T22:20:52.763' AS DateTime), N'', 1, 5, N'/images/may-giat-lg-fv1409s2v-8-300x300.jpg', N'LG Inverter 9 Kg FV1409S2V', CAST(10890000 AS Numeric(19, 0)), 5)
INSERT [dbo].[product] ([id], [created_at], [deleted_at], [updated_at], [content], [count], [discount], [image], [name], [price], [category_id]) VALUES (33, CAST(N'2021-05-22T22:28:03.877' AS DateTime), NULL, CAST(N'2021-05-22T22:28:03.877' AS DateTime), N'', 2, 10, N'/images/may-giat-lg-inverter-85-kg-fv1408s4w-8-300x300.jpg', N'Toshiba 8.2 Kg AW-F920LV', CAST(4630000 AS Numeric(19, 0)), 5)
INSERT [dbo].[product] ([id], [created_at], [deleted_at], [updated_at], [content], [count], [discount], [image], [name], [price], [category_id]) VALUES (34, CAST(N'2021-05-22T22:28:39.247' AS DateTime), NULL, CAST(N'2021-05-22T22:28:39.247' AS DateTime), N'', 1, 28, N'/images/samsung-wa10t5260by-sv-11-300x300.jpg', N'LG Inverter 8.5 Kg FV1408S4W', CAST(8190000 AS Numeric(19, 0)), 5)
INSERT [dbo].[product] ([id], [created_at], [deleted_at], [updated_at], [content], [count], [discount], [image], [name], [price], [category_id]) VALUES (35, CAST(N'2021-05-22T22:29:39.273' AS DateTime), NULL, CAST(N'2021-05-22T22:29:39.273' AS DateTime), N'', 1, 0, N'/images/toshiba-aw-f920lv-wb-300x300.jpg', N'Samsung Inverter 10 Kg WA10T5260BY/SV', CAST(8490000 AS Numeric(19, 0)), 5)
INSERT [dbo].[product] ([id], [created_at], [deleted_at], [updated_at], [content], [count], [discount], [image], [name], [price], [category_id]) VALUES (36, CAST(N'2021-05-22T22:30:08.457' AS DateTime), NULL, CAST(N'2021-05-22T22:30:08.457' AS DateTime), N'', 1, 21, N'/images/toshiba-tw-bh95s2v-wk-10-300x300.jpg', N'Toshiba Inverter 8.5 Kg TW-BH95S2V WK', CAST(7040000 AS Numeric(19, 0)), 5)
SET IDENTITY_INSERT [dbo].[product] OFF
GO
SET IDENTITY_INSERT [dbo].[role] ON 

INSERT [dbo].[role] ([id], [created_at], [deleted_at], [updated_at], [name]) VALUES (1, NULL, NULL, NULL, N'admin')
INSERT [dbo].[role] ([id], [created_at], [deleted_at], [updated_at], [name]) VALUES (2, NULL, NULL, NULL, N'user')
SET IDENTITY_INSERT [dbo].[role] OFF
GO
SET IDENTITY_INSERT [dbo].[user] ON 

INSERT [dbo].[user] ([id], [created_at], [deleted_at], [updated_at], [account], [email], [fullname], [password], [phone], [role_id]) VALUES (1, NULL, NULL, NULL, N'xuanvu', N'vvu5601@gmail.com', N'Phạm Xuân Vũ', N'123456', N'0954124865', 1)
INSERT [dbo].[user] ([id], [created_at], [deleted_at], [updated_at], [account], [email], [fullname], [password], [phone], [role_id]) VALUES (2, CAST(N'2021-05-22T21:41:29.177' AS DateTime), NULL, CAST(N'2021-05-22T21:41:29.177' AS DateTime), N'qm1', N'qm123asd@gmail.com', N'Vũ', N'123456', N'0965148561', 2)
INSERT [dbo].[user] ([id], [created_at], [deleted_at], [updated_at], [account], [email], [fullname], [password], [phone], [role_id]) VALUES (3, CAST(N'2021-05-22T22:31:35.957' AS DateTime), NULL, CAST(N'2021-05-22T22:31:35.957' AS DateTime), N'qm2', N'qm123asd@gmail.com', N'Quỳnh Mai', N'123456', N'0965148561', 2)
INSERT [dbo].[user] ([id], [created_at], [deleted_at], [updated_at], [account], [email], [fullname], [password], [phone], [role_id]) VALUES (7, CAST(N'2021-05-29T21:16:27.660' AS DateTime), NULL, CAST(N'2021-05-29T21:16:27.660' AS DateTime), N'atu1', N'qm123asd@gmail.com', N'Anh Tus', N'123456', N'0965148567', 2)
INSERT [dbo].[user] ([id], [created_at], [deleted_at], [updated_at], [account], [email], [fullname], [password], [phone], [role_id]) VALUES (8, CAST(N'2021-05-29T21:20:48.477' AS DateTime), NULL, CAST(N'2021-05-29T22:30:59.640' AS DateTime), N'atu2', N'qm123asd@gmail.com', N'vu3', N'123456', N'0965148567', 2)
INSERT [dbo].[user] ([id], [created_at], [deleted_at], [updated_at], [account], [email], [fullname], [password], [phone], [role_id]) VALUES (15, CAST(N'2021-05-29T22:53:46.103' AS DateTime), NULL, CAST(N'2021-05-29T22:53:46.103' AS DateTime), N'quynhmai', N'qm123asd@gmail.com', N'Nguyễn Thị Quỳnh Mai', N'123456', N'0965148567', 1)
INSERT [dbo].[user] ([id], [created_at], [deleted_at], [updated_at], [account], [email], [fullname], [password], [phone], [role_id]) VALUES (16, CAST(N'2021-05-14T23:23:35.097' AS DateTime), NULL, CAST(N'2021-05-14T23:23:35.097' AS DateTime), N'anhtu', N'qm123asd@gmail.com', N'Dương Anh Tú', N'123456', N'0965148567', 1)
SET IDENTITY_INSERT [dbo].[user] OFF
GO
ALTER TABLE [dbo].[order]  WITH CHECK ADD  CONSTRAINT [FK_mh40cn97o5svvy5c32ws9tnvp] FOREIGN KEY([user_id])
REFERENCES [dbo].[user] ([id])
GO
ALTER TABLE [dbo].[order] CHECK CONSTRAINT [FK_mh40cn97o5svvy5c32ws9tnvp]
GO
ALTER TABLE [dbo].[product]  WITH CHECK ADD  CONSTRAINT [FK_rlaghtegr0yx2c1q1s6nkqjlh] FOREIGN KEY([category_id])
REFERENCES [dbo].[category] ([id])
GO
ALTER TABLE [dbo].[product] CHECK CONSTRAINT [FK_rlaghtegr0yx2c1q1s6nkqjlh]
GO
ALTER TABLE [dbo].[product_order]  WITH CHECK ADD  CONSTRAINT [FK_5uw5nxqovigv7mf1gmbos1rl8] FOREIGN KEY([product_id])
REFERENCES [dbo].[product] ([id])
GO
ALTER TABLE [dbo].[product_order] CHECK CONSTRAINT [FK_5uw5nxqovigv7mf1gmbos1rl8]
GO
ALTER TABLE [dbo].[product_order]  WITH CHECK ADD  CONSTRAINT [FK_jto6sam1lif6fkov7aiksuj5u] FOREIGN KEY([odder_id])
REFERENCES [dbo].[order] ([id])
GO
ALTER TABLE [dbo].[product_order] CHECK CONSTRAINT [FK_jto6sam1lif6fkov7aiksuj5u]
GO
ALTER TABLE [dbo].[user]  WITH CHECK ADD  CONSTRAINT [FK_qleu8ddawkdltal07p8e6hgva] FOREIGN KEY([role_id])
REFERENCES [dbo].[role] ([id])
GO
ALTER TABLE [dbo].[user] CHECK CONSTRAINT [FK_qleu8ddawkdltal07p8e6hgva]
GO
