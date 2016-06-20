USE [master]
GO
/****** Object:  Database [NatureRepublicDB]    Script Date: 2016-06-21 오전 2:40:54 ******/
CREATE DATABASE [NatureRepublicDB] ON  PRIMARY 
( NAME = N'NatureRepublicDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\NatureRepublicDB.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'NatureRepublicDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\NatureRepublicDB_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [NatureRepublicDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [NatureRepublicDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [NatureRepublicDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [NatureRepublicDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [NatureRepublicDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [NatureRepublicDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [NatureRepublicDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [NatureRepublicDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [NatureRepublicDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [NatureRepublicDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [NatureRepublicDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [NatureRepublicDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [NatureRepublicDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [NatureRepublicDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [NatureRepublicDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [NatureRepublicDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [NatureRepublicDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [NatureRepublicDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [NatureRepublicDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [NatureRepublicDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [NatureRepublicDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [NatureRepublicDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [NatureRepublicDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [NatureRepublicDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [NatureRepublicDB] SET  MULTI_USER 
GO
ALTER DATABASE [NatureRepublicDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [NatureRepublicDB] SET DB_CHAINING OFF 
GO
USE [NatureRepublicDB]
GO
/****** Object:  Table [dbo].[tableAdmin]    Script Date: 2016-06-21 오전 2:40:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tableAdmin](
	[adminID] [varchar](20) NOT NULL,
	[adminPW] [varchar](20) NOT NULL,
	[adminName] [varchar](10) NOT NULL,
	[adminTel] [varchar](13) NOT NULL,
 CONSTRAINT [PK_tableAdmin] PRIMARY KEY CLUSTERED 
(
	[adminID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tableBasket]    Script Date: 2016-06-21 오전 2:40:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tableBasket](
	[basketNumber] [char](5) NOT NULL,
	[memberID] [varchar](20) NOT NULL,
	[itemNumber] [char](5) NOT NULL,
	[basketCount] [varchar](3) NOT NULL,
	[basketDeadline] [varchar](10) NOT NULL,
 CONSTRAINT [PK_tableBasket] PRIMARY KEY CLUSTERED 
(
	[basketNumber] ASC,
	[memberID] ASC,
	[itemNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tableComment]    Script Date: 2016-06-21 오전 2:40:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tableComment](
	[commentNumber] [char](5) NOT NULL,
	[memberID] [varchar](20) NOT NULL,
	[itemNumber] [char](5) NOT NULL,
	[commentTitle] [varchar](80) NOT NULL,
	[commentSkinType] [varchar](4) NOT NULL,
	[commentRating] [varchar](5) NOT NULL,
	[commentMemo] [varchar](1000) NOT NULL,
 CONSTRAINT [PK_tableComment] PRIMARY KEY CLUSTERED 
(
	[commentNumber] ASC,
	[memberID] ASC,
	[itemNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tableInterest]    Script Date: 2016-06-21 오전 2:40:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tableInterest](
	[interestNumber] [char](5) NOT NULL,
	[memberID] [varchar](20) NOT NULL,
	[itemNumber] [char](5) NOT NULL,
	[itemDeadLine] [char](10) NULL,
 CONSTRAINT [PK_tableInterest] PRIMARY KEY CLUSTERED 
(
	[interestNumber] ASC,
	[memberID] ASC,
	[itemNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tableItem]    Script Date: 2016-06-21 오전 2:40:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tableItem](
	[itemNumber] [char](5) NOT NULL,
	[adminID] [varchar](20) NOT NULL,
	[itemType] [varchar](10) NOT NULL,
	[itemName] [varchar](30) NOT NULL,
	[itemImage] [varchar](40) NOT NULL,
	[itemPrice] [varchar](20) NOT NULL,
	[itemSize] [varchar](6) NOT NULL,
	[itemSkinType] [varchar](4) NOT NULL,
	[itemPoint] [varchar](20) NOT NULL,
	[itemRest] [varchar](10) NOT NULL,
	[itemDeadline] [varchar](10) NOT NULL,
	[itemMadeby] [varchar](20) NOT NULL,
	[itemMadein] [varchar](20) NOT NULL,
 CONSTRAINT [PK_tableItem] PRIMARY KEY CLUSTERED 
(
	[itemNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tableMember]    Script Date: 2016-06-21 오전 2:40:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tableMember](
	[memberID] [varchar](20) NOT NULL,
	[memberPW] [varchar](20) NOT NULL,
	[memberName] [varchar](10) NOT NULL,
	[memberBirth] [char](10) NOT NULL,
	[memberAddr] [varchar](100) NOT NULL,
	[memberTel] [varchar](13) NOT NULL,
	[memberEmail] [varchar](40) NOT NULL,
	[memberSkin] [varchar](8) NOT NULL,
	[memberPoint] [varchar](13) NOT NULL,
 CONSTRAINT [PK_tableMember] PRIMARY KEY CLUSTERED 
(
	[memberID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tableOrder]    Script Date: 2016-06-21 오전 2:40:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tableOrder](
	[orderNumber] [char](5) NOT NULL,
	[memberID] [varchar](20) NOT NULL,
	[orderDate] [char](10) NOT NULL,
	[orderAddr] [varchar](100) NOT NULL,
	[orderReceiver] [varchar](10) NOT NULL,
	[orderPhone] [varchar](13) NOT NULL,
	[orderMemo] [varchar](80) NULL,
	[orderPrice] [varchar](10) NOT NULL,
 CONSTRAINT [PK_tableOrder] PRIMARY KEY CLUSTERED 
(
	[orderNumber] ASC,
	[memberID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tablePayment]    Script Date: 2016-06-21 오전 2:40:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tablePayment](
	[paymentNumber] [char](5) NOT NULL,
	[memberID] [varchar](20) NOT NULL,
	[orderNumber] [char](5) NOT NULL,
	[paymentHow] [varchar](30) NOT NULL,
	[paymentResult] [varchar](30) NOT NULL,
 CONSTRAINT [PK_tablePayment] PRIMARY KEY CLUSTERED 
(
	[paymentNumber] ASC,
	[memberID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[tableAdmin] ([adminID], [adminPW], [adminName], [adminTel]) VALUES (N'admin', N'1234', N'염광호', N'010-5636-4312')
INSERT [dbo].[tableBasket] ([basketNumber], [memberID], [itemNumber], [basketCount], [basketDeadline]) VALUES (N'B0001', N'alsgh123455', N'00001', N'5', N'2016-06-28')
INSERT [dbo].[tableBasket] ([basketNumber], [memberID], [itemNumber], [basketCount], [basketDeadline]) VALUES (N'B0002', N'alsgh123455', N'00001', N'1', N'2016-06-28')
INSERT [dbo].[tableBasket] ([basketNumber], [memberID], [itemNumber], [basketCount], [basketDeadline]) VALUES (N'B0003', N'alsgh123455', N'00001', N'1', N'2016-06-28')
INSERT [dbo].[tableBasket] ([basketNumber], [memberID], [itemNumber], [basketCount], [basketDeadline]) VALUES (N'B0004', N'alsgh123455', N'00001', N'1', N'2016-06-28')
INSERT [dbo].[tableInterest] ([interestNumber], [memberID], [itemNumber], [itemDeadLine]) VALUES (N'I1001', N'rhkdgh93', N'00001', N'2016-07-19')
INSERT [dbo].[tableItem] ([itemNumber], [adminID], [itemType], [itemName], [itemImage], [itemPrice], [itemSize], [itemSkinType], [itemPoint], [itemRest], [itemDeadline], [itemMadeby], [itemMadein]) VALUES (N'00001', N'admin', N'Cleansing', N'제주 탄산 폼 클렌저 300ml', N'./images/item/Cleansing', N'15000', N'300', N'all', N'0', N'99', N'201807', N'한국콜마(주)', N'한국')
INSERT [dbo].[tableMember] ([memberID], [memberPW], [memberName], [memberBirth], [memberAddr], [memberTel], [memberEmail], [memberSkin], [memberPoint]) VALUES (N'alsgh123455', N'234234', N'염민호', N'1979      ', N'경상남도 진주시 봉래동 85 - 32', N'010-5636-4312', N'alsgh123455@naver.com', N'지성', N'20000')
INSERT [dbo].[tableMember] ([memberID], [memberPW], [memberName], [memberBirth], [memberAddr], [memberTel], [memberEmail], [memberSkin], [memberPoint]) VALUES (N'cherry527', N'asdf123', N'김채린', N'1963      ', N'서울 노원구 공릉로 232 서울과학기술대학교 성림학사 메롱', N'010-4706-3850', N'igoldqueen@naver.com', N'아리따움', N'0')
INSERT [dbo].[tableMember] ([memberID], [memberPW], [memberName], [memberBirth], [memberAddr], [memberTel], [memberEmail], [memberSkin], [memberPoint]) VALUES (N'rhkdgh93', N'123123', N'염광호', N'1983      ', N'경상남도 진주시 봉래동 85 -  32 헿해ㅇㄴㄹㅇㄹ', N'010-5636-4312', N'rhkdgh93@naver.com', N'악건성', N'200')
INSERT [dbo].[tableOrder] ([orderNumber], [memberID], [orderDate], [orderAddr], [orderReceiver], [orderPhone], [orderMemo], [orderPrice]) VALUES (N'O0002', N'alsgh123455', N'2016-06-21', N'경상남도 진주시 봉래동 85 - 32', N'염민호', N'010-5636-4312', N'어서오세요.', N'45000')
INSERT [dbo].[tableOrder] ([orderNumber], [memberID], [orderDate], [orderAddr], [orderReceiver], [orderPhone], [orderMemo], [orderPrice]) VALUES (N'O0004', N'rhkdgh93', N'2016-06-20', N'경상남도 진주시 봉래동 85 -  32 헿해ㅇㄴㄹㅇㄹ', N'염광호', N'010-5636-4312', N'', N'120000')
INSERT [dbo].[tablePayment] ([paymentNumber], [memberID], [orderNumber], [paymentHow], [paymentResult]) VALUES (N'P0003', N'alsgh123455', N'O0002', N'dd', N'39000')
ALTER TABLE [dbo].[tableBasket]  WITH CHECK ADD  CONSTRAINT [FK_tableBasket_tableItem] FOREIGN KEY([itemNumber])
REFERENCES [dbo].[tableItem] ([itemNumber])
GO
ALTER TABLE [dbo].[tableBasket] CHECK CONSTRAINT [FK_tableBasket_tableItem]
GO
ALTER TABLE [dbo].[tableBasket]  WITH CHECK ADD  CONSTRAINT [FK_tableBasket_tableMember] FOREIGN KEY([memberID])
REFERENCES [dbo].[tableMember] ([memberID])
GO
ALTER TABLE [dbo].[tableBasket] CHECK CONSTRAINT [FK_tableBasket_tableMember]
GO
ALTER TABLE [dbo].[tableComment]  WITH CHECK ADD  CONSTRAINT [FK_tableComment_tableItem] FOREIGN KEY([itemNumber])
REFERENCES [dbo].[tableItem] ([itemNumber])
GO
ALTER TABLE [dbo].[tableComment] CHECK CONSTRAINT [FK_tableComment_tableItem]
GO
ALTER TABLE [dbo].[tableComment]  WITH CHECK ADD  CONSTRAINT [FK_tableComment_tableMember] FOREIGN KEY([memberID])
REFERENCES [dbo].[tableMember] ([memberID])
GO
ALTER TABLE [dbo].[tableComment] CHECK CONSTRAINT [FK_tableComment_tableMember]
GO
ALTER TABLE [dbo].[tableInterest]  WITH CHECK ADD  CONSTRAINT [FK_tableInterest_tableItem] FOREIGN KEY([itemNumber])
REFERENCES [dbo].[tableItem] ([itemNumber])
GO
ALTER TABLE [dbo].[tableInterest] CHECK CONSTRAINT [FK_tableInterest_tableItem]
GO
ALTER TABLE [dbo].[tableInterest]  WITH CHECK ADD  CONSTRAINT [FK_tableInterest_tableMember] FOREIGN KEY([memberID])
REFERENCES [dbo].[tableMember] ([memberID])
GO
ALTER TABLE [dbo].[tableInterest] CHECK CONSTRAINT [FK_tableInterest_tableMember]
GO
ALTER TABLE [dbo].[tableItem]  WITH CHECK ADD  CONSTRAINT [FK_tableItem_tableAdmin] FOREIGN KEY([adminID])
REFERENCES [dbo].[tableAdmin] ([adminID])
GO
ALTER TABLE [dbo].[tableItem] CHECK CONSTRAINT [FK_tableItem_tableAdmin]
GO
ALTER TABLE [dbo].[tableMember]  WITH CHECK ADD  CONSTRAINT [FK_tableMember_tableMember1] FOREIGN KEY([memberID])
REFERENCES [dbo].[tableMember] ([memberID])
GO
ALTER TABLE [dbo].[tableMember] CHECK CONSTRAINT [FK_tableMember_tableMember1]
GO
ALTER TABLE [dbo].[tableMember]  WITH CHECK ADD  CONSTRAINT [FK_tableMember_tableMember2] FOREIGN KEY([memberID])
REFERENCES [dbo].[tableMember] ([memberID])
GO
ALTER TABLE [dbo].[tableMember] CHECK CONSTRAINT [FK_tableMember_tableMember2]
GO
ALTER TABLE [dbo].[tableMember]  WITH CHECK ADD  CONSTRAINT [FK_tableMember_tableMember3] FOREIGN KEY([memberID])
REFERENCES [dbo].[tableMember] ([memberID])
GO
ALTER TABLE [dbo].[tableMember] CHECK CONSTRAINT [FK_tableMember_tableMember3]
GO
ALTER TABLE [dbo].[tableMember]  WITH CHECK ADD  CONSTRAINT [FK_tableMember_tableMember4] FOREIGN KEY([memberID])
REFERENCES [dbo].[tableMember] ([memberID])
GO
ALTER TABLE [dbo].[tableMember] CHECK CONSTRAINT [FK_tableMember_tableMember4]
GO
ALTER TABLE [dbo].[tableMember]  WITH CHECK ADD  CONSTRAINT [FK_tableMember_tablePayment] FOREIGN KEY([memberID])
REFERENCES [dbo].[tableMember] ([memberID])
GO
ALTER TABLE [dbo].[tableMember] CHECK CONSTRAINT [FK_tableMember_tablePayment]
GO
ALTER TABLE [dbo].[tableOrder]  WITH CHECK ADD  CONSTRAINT [FK_tableOrder_tableMember] FOREIGN KEY([memberID])
REFERENCES [dbo].[tableMember] ([memberID])
GO
ALTER TABLE [dbo].[tableOrder] CHECK CONSTRAINT [FK_tableOrder_tableMember]
GO
ALTER TABLE [dbo].[tablePayment]  WITH CHECK ADD  CONSTRAINT [FK_tablePayment_tableMember] FOREIGN KEY([memberID])
REFERENCES [dbo].[tableMember] ([memberID])
GO
ALTER TABLE [dbo].[tablePayment] CHECK CONSTRAINT [FK_tablePayment_tableMember]
GO
USE [master]
GO
ALTER DATABASE [NatureRepublicDB] SET  READ_WRITE 
GO
