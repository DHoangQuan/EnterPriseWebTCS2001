USE [master]
GO
/****** Object:  Database [ETP]    Script Date: 4/29/2019 1:15:30 PM ******/
CREATE DATABASE [ETP]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ETP', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\ETP.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'ETP_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\ETP_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [ETP] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ETP].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ETP] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ETP] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ETP] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ETP] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ETP] SET ARITHABORT OFF 
GO
ALTER DATABASE [ETP] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ETP] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ETP] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ETP] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ETP] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ETP] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ETP] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ETP] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ETP] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ETP] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ETP] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ETP] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ETP] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ETP] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ETP] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ETP] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ETP] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ETP] SET RECOVERY FULL 
GO
ALTER DATABASE [ETP] SET  MULTI_USER 
GO
ALTER DATABASE [ETP] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ETP] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ETP] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ETP] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'ETP', N'ON'
GO
USE [ETP]
GO
/****** Object:  Table [dbo].[account]    Script Date: 4/29/2019 1:15:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[account](
	[account_id] [varchar](50) NOT NULL,
	[account_name] [nvarchar](max) NULL,
	[password] [nvarchar](max) NULL,
	[Dob] [date] NULL,
	[phone] [int] NULL,
	[email] [nvarchar](max) NULL,
	[address] [nvarchar](max) NULL,
	[sex] [nvarchar](50) NULL,
	[account_date] [date] NULL,
	[role_id] [varchar](50) NULL,
	[avatar] [nvarchar](max) NULL,
	[active] [nvarchar](50) NULL,
	[falcuty_id] [varchar](50) NULL,
 CONSTRAINT [PK__account__46A222CD6CA75191] PRIMARY KEY CLUSTERED 
(
	[account_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[closuredate]    Script Date: 4/29/2019 1:15:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[closuredate](
	[Year] [int] NOT NULL,
	[Closure_date] [date] NULL,
	[Final_Closure_date] [date] NULL,
 CONSTRAINT [PK_closuredate] PRIMARY KEY CLUSTERED 
(
	[Year] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[comment]    Script Date: 4/29/2019 1:15:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[comment](
	[comment_id] [int] IDENTITY(1,1) NOT NULL,
	[content_id] [varchar](50) NOT NULL,
	[comment_content] [nvarchar](max) NULL,
	[account_id] [varchar](50) NOT NULL,
	[comment_date] [date] NULL,
 CONSTRAINT [PK_comment] PRIMARY KEY CLUSTERED 
(
	[comment_id] ASC,
	[content_id] ASC,
	[account_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[content]    Script Date: 4/29/2019 1:15:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[content](
	[content_id] [varchar](50) NOT NULL,
	[content_title] [nvarchar](max) NULL,
	[content_post] [nvarchar](max) NULL,
	[account_id] [varchar](50) NULL,
	[status] [nvarchar](50) NULL,
	[faculty_id] [varchar](50) NULL,
	[date_post] [date] NULL,
	[date_public] [date] NULL,
	[date_end] [date] NULL,
	[date_final_end] [date] NULL,
 CONSTRAINT [PK_content] PRIMARY KEY CLUSTERED 
(
	[content_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[faculty]    Script Date: 4/29/2019 1:15:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[faculty](
	[faculty_id] [varchar](50) NOT NULL,
	[faculty_name] [nvarchar](50) NULL,
 CONSTRAINT [PK__faculty__7B00413C5D61ECDF] PRIMARY KEY CLUSTERED 
(
	[faculty_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[role]    Script Date: 4/29/2019 1:15:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[role](
	[role_id] [varchar](50) NOT NULL,
	[role_name] [nvarchar](50) NULL,
 CONSTRAINT [PK__role__760965CCC3C06467] PRIMARY KEY CLUSTERED 
(
	[role_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[account] ([account_id], [account_name], [password], [Dob], [phone], [email], [address], [sex], [account_date], [role_id], [avatar], [active], [falcuty_id]) VALUES (N'01', N'Cong', N'123', NULL, NULL, N'quandhgcs16552@fpt.edu.vn', NULL, NULL, NULL, N'AD', NULL, N'Activated', N'IT')
INSERT [dbo].[account] ([account_id], [account_name], [password], [Dob], [phone], [email], [address], [sex], [account_date], [role_id], [avatar], [active], [falcuty_id]) VALUES (N'MCIT07', N'Thuan', N'123', NULL, NULL, N'hoangquan1097@gmail.com', NULL, NULL, NULL, N'MM', NULL, N'Activated', N'IT')
INSERT [dbo].[account] ([account_id], [account_name], [password], [Dob], [phone], [email], [address], [sex], [account_date], [role_id], [avatar], [active], [falcuty_id]) VALUES (N'MCIT0707', N'Danh', N'123', NULL, NULL, NULL, NULL, NULL, NULL, N'ST', NULL, N'Activated', N'IT')
INSERT [dbo].[account] ([account_id], [account_name], [password], [Dob], [phone], [email], [address], [sex], [account_date], [role_id], [avatar], [active], [falcuty_id]) VALUES (N'MCIT07073', N'Nghia', N'123', NULL, NULL, N'TCS2001Send@gmail.com', NULL, NULL, NULL, N'MC', NULL, N'Activated', N'IT')
INSERT [dbo].[account] ([account_id], [account_name], [password], [Dob], [phone], [email], [address], [sex], [account_date], [role_id], [avatar], [active], [falcuty_id]) VALUES (N'STIT51124', N'Thang', N'123', NULL, 90512346, N'abc@gmail.com', N'7', NULL, NULL, N'ST', NULL, N'Activated', N'IT')
INSERT [dbo].[account] ([account_id], [account_name], [password], [Dob], [phone], [email], [address], [sex], [account_date], [role_id], [avatar], [active], [falcuty_id]) VALUES (N'STIT51125', N'Dung', N'123', NULL, NULL, NULL, NULL, NULL, NULL, N'MM', NULL, N'Activated', N'IT')
INSERT [dbo].[account] ([account_id], [account_name], [password], [Dob], [phone], [email], [address], [sex], [account_date], [role_id], [avatar], [active], [falcuty_id]) VALUES (N'STIT51126', N'Thanh', N'123', NULL, NULL, NULL, NULL, NULL, NULL, N'ST', NULL, N'Locked', N'GD')
INSERT [dbo].[closuredate] ([Year], [Closure_date], [Final_Closure_date]) VALUES (2017, CAST(N'2017-04-05' AS Date), CAST(N'2017-04-27' AS Date))
INSERT [dbo].[closuredate] ([Year], [Closure_date], [Final_Closure_date]) VALUES (2019, CAST(N'2019-04-30' AS Date), CAST(N'2019-05-16' AS Date))
SET IDENTITY_INSERT [dbo].[comment] ON 

INSERT [dbo].[comment] ([comment_id], [content_id], [comment_content], [account_id], [comment_date]) VALUES (4, N'BA29084', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.

Why do we use it?
It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ''lorem ipsum'' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).


Where does it come from?
Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.

The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.

Where can I get some?
There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don''t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn''t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', N'01', CAST(N'2019-04-23' AS Date))
INSERT [dbo].[comment] ([comment_id], [content_id], [comment_content], [account_id], [comment_date]) VALUES (5, N'BA29084', N'def', N'MCIT07073', CAST(N'2019-04-23' AS Date))
INSERT [dbo].[comment] ([comment_id], [content_id], [comment_content], [account_id], [comment_date]) VALUES (6, N'BA29084', N'1abc', N'MCIT07', CAST(N'2019-04-23' AS Date))
INSERT [dbo].[comment] ([comment_id], [content_id], [comment_content], [account_id], [comment_date]) VALUES (9, N'BA29084', N'qweqwe', N'MCIT0707', CAST(N'2019-04-23' AS Date))
INSERT [dbo].[comment] ([comment_id], [content_id], [comment_content], [account_id], [comment_date]) VALUES (10, N'BA29084', N'sasdasd', N'01', CAST(N'2019-04-23' AS Date))
INSERT [dbo].[comment] ([comment_id], [content_id], [comment_content], [account_id], [comment_date]) VALUES (11, N'BA29084', N'dasdaad', N'01', CAST(N'2019-04-24' AS Date))
INSERT [dbo].[comment] ([comment_id], [content_id], [comment_content], [account_id], [comment_date]) VALUES (12, N'BA29084', N'ascsc', N'01', CAST(N'2018-04-24' AS Date))
INSERT [dbo].[comment] ([comment_id], [content_id], [comment_content], [account_id], [comment_date]) VALUES (13, N'BA29084', N'123asdad', N'01', NULL)
INSERT [dbo].[comment] ([comment_id], [content_id], [comment_content], [account_id], [comment_date]) VALUES (14, N'BA29084', N'asdasd', N'01', CAST(N'2019-04-27' AS Date))
SET IDENTITY_INSERT [dbo].[comment] OFF
INSERT [dbo].[content] ([content_id], [content_title], [content_post], [account_id], [status], [faculty_id], [date_post], [date_public], [date_end], [date_final_end]) VALUES (N'BA10958', NULL, N'<p>dasdasd</p>
', N'MCIT0707', N'Processing', N'IT', CAST(N'2019-04-28' AS Date), NULL, CAST(N'2019-04-30' AS Date), CAST(N'2019-05-16' AS Date))
INSERT [dbo].[content] ([content_id], [content_title], [content_post], [account_id], [status], [faculty_id], [date_post], [date_public], [date_end], [date_final_end]) VALUES (N'BA15823', NULL, N'<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>
', N'MCIT0707', N'Enable', N'IT', CAST(N'2019-04-24' AS Date), NULL, NULL, NULL)
INSERT [dbo].[content] ([content_id], [content_title], [content_post], [account_id], [status], [faculty_id], [date_post], [date_public], [date_end], [date_final_end]) VALUES (N'BA29084', N'SamSung', N'<p>Tuy nhi&ecirc;n, khi cầm nắm th&igrave;&nbsp;<a href="https://www.thegioididong.com/dtdd" target="_blank" title="Tham khảo các dòng điện thoại tại Thegioididong.com" type="Tham khảo các dòng điện thoại tại Thegioididong.com">điện thoại</a>&nbsp;vẫn cho cảm gi&aacute;c chắc chắn v&agrave; cứng c&aacute;p nhờ v&agrave;o chất lượng gia c&ocirc;ng tỷ mỉ v&agrave; độ ho&agrave;n thiện cực k&igrave; cao.</p>

<p><a href="https://www.thegioididong.com/images/42/167150/nokia-61-plus-4.jpg" onclick="return false;"><img alt="Thiết kế điện thoại Nokia 6.1 Plus (Nokia X6 2018)" src="https://cdn.tgdd.vn/Products/Images/42/167150/nokia-61-plus-4.jpg" title="Thiết kế điện thoại Nokia 6.1 Plus (Nokia X6 2018)" /></a></p>

<p><em>Mặt k&iacute;nh cường lực&nbsp;<a href="https://www.thegioididong.com/tin-tuc/kinh-cuong-luc-la-gi--596319#gorillaglass3" target="_blank" title="Tìm hiểu kính cường lực Gorilla Glass 3" type="Tìm hiểu kính cường lực Gorilla Glass 3">Gorilla Glass 3</a>&nbsp;gi&uacute;p giảm trầy xước đ&aacute;ng kể</em></p>

<p>Ở mặt lưng, cụm camera, cảm biến v&acirc;n tay v&agrave; logo của h&atilde;ng c&ugrave;ng nằm tr&ecirc;n một đường thẳng tạo n&ecirc;n một điểm nhấn ri&ecirc;ng biệt trong thiết kế khiến bạn kh&oacute; c&oacute; thể lầm tưởng với c&aacute;c thiết bị kh&aacute;c.</p>

<h3>M&agrave;n h&igrave;nh tai thỏ sắc n&eacute;t chất lượng</h3>

<p>Nhờ v&agrave;o tỷ lệ m&agrave;n h&igrave;nh 19:9 thời thượng c&ugrave;ng tai thỏ quyến rũ đ&atilde; gi&uacute;p cho&nbsp;Nokia 6.1 Plus c&oacute; một kh&ocirc;ng gian trải nghiệm v&ocirc; c&ugrave;ng thoải m&aacute;i tr&ecirc;n k&iacute;ch thước m&agrave;n h&igrave;nh 5.8 inch nhưng cũng rất vừa vặn khi cầm tr&ecirc;n tay.</p>

<p><a href="https://www.thegioididong.com/images/42/167150/nokia-61-plus-10.jpg" onclick="return false;"><img alt="Màn hình điện thoại Nokia 6.1 Plus (Nokia X6 2018)" src="https://cdn.tgdd.vn/Products/Images/42/167150/nokia-61-plus-10.jpg" title="Màn hình điện thoại Nokia 6.1 Plus (Nokia X6 2018)" /></a></p>

<p><em>Phần tai thỏ c&oacute; k&iacute;ch thước lớn gi&uacute;p m&aacute;y hiển thị nhiều th&ocirc;ng tin hơn</em></p>

<p>Kh&ocirc;ng những thế, với việc được trang bị tấm nền&nbsp;<a href="https://www.thegioididong.com/hoi-dap/man-hinh-ips-lcd-la-gi-905752" target="_blank" title="Tìm hiểu tấm nền IPS LCD" type="Tìm hiểu tấm nền IPS LCD">IPS LCD</a>&nbsp;v&agrave; độ ph&acirc;n giải Full HD+ đem lại một g&oacute;c nh&igrave;n rộng, độ s&aacute;ng cao v&agrave; m&agrave;u sắc hiển thị trung thực, ắt hẳn sẽ khiến bạn th&iacute;ch th&uacute; khi xem những bộ phim chất lượng cao.</p>

<h3>Hiệu năng ấn tượng v&agrave; mạnh mẽ</h3>

<p>Ngo&agrave;i việc c&oacute; một thiết kế đẹp,&nbsp;Nokia 6.1 Plus c&ograve;n c&oacute; một hiệu năng mạnh mẽ đến từ con chip&nbsp;<a href="https://www.thegioididong.com/tin-tuc/snapdragon-636hieu-nang-tang-40-ho-tro-man-hinh-ti-le-189-1033632" target="_blank" title="Tìm hiểu chip Qualcomm Snapdragon 636" type="Tìm hiểu chip Qualcomm Snapdragon 636">Qualcomm Snapdragon 636</a>, 4 GB RAM c&ugrave;ng 64 GB bộ nhớ trong.</p>
', N'MCIT0707', N'Public', N'IT', CAST(N'2018-04-21' AS Date), NULL, NULL, NULL)
INSERT [dbo].[content] ([content_id], [content_title], [content_post], [account_id], [status], [faculty_id], [date_post], [date_public], [date_end], [date_final_end]) VALUES (N'BA39690', NULL, N'<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.</p>
', N'MCIT0707', N'Processing', N'IT', CAST(N'2017-04-24' AS Date), NULL, NULL, NULL)
INSERT [dbo].[content] ([content_id], [content_title], [content_post], [account_id], [status], [faculty_id], [date_post], [date_public], [date_end], [date_final_end]) VALUES (N'BA59193', NULL, N'<h2>Why do we use it?</h2>

<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>
', N'MCIT0707', N'Disable', N'IT', CAST(N'2019-04-27' AS Date), NULL, CAST(N'2019-05-08' AS Date), NULL)
INSERT [dbo].[content] ([content_id], [content_title], [content_post], [account_id], [status], [faculty_id], [date_post], [date_public], [date_end], [date_final_end]) VALUES (N'BA98016', NULL, N'<h2>What is Lorem Ipsum?</h2>

<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>
', N'01', N'Public', N'IT', CAST(N'2019-04-26' AS Date), CAST(N'2019-04-26' AS Date), CAST(N'2019-05-10' AS Date), NULL)
INSERT [dbo].[faculty] ([faculty_id], [faculty_name]) VALUES (N'BA', N'Business Adminstration')
INSERT [dbo].[faculty] ([faculty_id], [faculty_name]) VALUES (N'GD', N'Graphic Design')
INSERT [dbo].[faculty] ([faculty_id], [faculty_name]) VALUES (N'IT', N'IT')
INSERT [dbo].[role] ([role_id], [role_name]) VALUES (N'AD', N'Admin')
INSERT [dbo].[role] ([role_id], [role_name]) VALUES (N'MC', N'Marketing Coordinator ')
INSERT [dbo].[role] ([role_id], [role_name]) VALUES (N'MM', N'Marketing Manager')
INSERT [dbo].[role] ([role_id], [role_name]) VALUES (N'ST', N'Student')
ALTER TABLE [dbo].[account]  WITH CHECK ADD  CONSTRAINT [FK_account_faculty] FOREIGN KEY([falcuty_id])
REFERENCES [dbo].[faculty] ([faculty_id])
GO
ALTER TABLE [dbo].[account] CHECK CONSTRAINT [FK_account_faculty]
GO
ALTER TABLE [dbo].[account]  WITH CHECK ADD  CONSTRAINT [FK_account_role] FOREIGN KEY([role_id])
REFERENCES [dbo].[role] ([role_id])
GO
ALTER TABLE [dbo].[account] CHECK CONSTRAINT [FK_account_role]
GO
ALTER TABLE [dbo].[comment]  WITH CHECK ADD  CONSTRAINT [FK_comment_account] FOREIGN KEY([account_id])
REFERENCES [dbo].[account] ([account_id])
GO
ALTER TABLE [dbo].[comment] CHECK CONSTRAINT [FK_comment_account]
GO
ALTER TABLE [dbo].[comment]  WITH CHECK ADD  CONSTRAINT [FK_comment_content] FOREIGN KEY([content_id])
REFERENCES [dbo].[content] ([content_id])
GO
ALTER TABLE [dbo].[comment] CHECK CONSTRAINT [FK_comment_content]
GO
ALTER TABLE [dbo].[content]  WITH CHECK ADD  CONSTRAINT [FK_content_account] FOREIGN KEY([account_id])
REFERENCES [dbo].[account] ([account_id])
GO
ALTER TABLE [dbo].[content] CHECK CONSTRAINT [FK_content_account]
GO
ALTER TABLE [dbo].[content]  WITH CHECK ADD  CONSTRAINT [FK_content_major] FOREIGN KEY([faculty_id])
REFERENCES [dbo].[faculty] ([faculty_id])
GO
ALTER TABLE [dbo].[content] CHECK CONSTRAINT [FK_content_major]
GO
USE [master]
GO
ALTER DATABASE [ETP] SET  READ_WRITE 
GO
