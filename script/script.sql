USE [master]
GO
/****** Object:  Database [NatureRepublicDB]    Script Date: 2016-06-22 오전 2:37:37 ******/
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
/****** Object:  Table [dbo].[tableAdmin]    Script Date: 2016-06-22 오전 2:37:37 ******/
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
/****** Object:  Table [dbo].[tableBasket]    Script Date: 2016-06-22 오전 2:37:37 ******/
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
/****** Object:  Table [dbo].[tableComment]    Script Date: 2016-06-22 오전 2:37:37 ******/
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
/****** Object:  Table [dbo].[tableInterest]    Script Date: 2016-06-22 오전 2:37:37 ******/
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
/****** Object:  Table [dbo].[tableItem]    Script Date: 2016-06-22 오전 2:37:37 ******/
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
/****** Object:  Table [dbo].[tableMember]    Script Date: 2016-06-22 오전 2:37:37 ******/
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
/****** Object:  Table [dbo].[tableOrder]    Script Date: 2016-06-22 오전 2:37:37 ******/
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
	[orderItem] [varchar](100) NOT NULL,
 CONSTRAINT [PK_tableOrder] PRIMARY KEY CLUSTERED 
(
	[orderNumber] ASC,
	[memberID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tablePayment]    Script Date: 2016-06-22 오전 2:37:37 ******/
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
INSERT [dbo].[tableBasket] ([basketNumber], [memberID], [itemNumber], [basketCount], [basketDeadline]) VALUES (N'B0001', N'rhkdgh93', N'B0003', N'6', N'2016-06-29')
INSERT [dbo].[tableBasket] ([basketNumber], [memberID], [itemNumber], [basketCount], [basketDeadline]) VALUES (N'B0002', N'rhkdgh93', N'B0003', N'3', N'2016-06-29')
INSERT [dbo].[tableInterest] ([interestNumber], [memberID], [itemNumber], [itemDeadLine]) VALUES (N'I0001', N'rhkdgh93', N'U0003', N'2016-07-21')
INSERT [dbo].[tableInterest] ([interestNumber], [memberID], [itemNumber], [itemDeadLine]) VALUES (N'I0002', N'rhkdgh93', N'C0003', N'2016-07-21')
INSERT [dbo].[tableInterest] ([interestNumber], [memberID], [itemNumber], [itemDeadLine]) VALUES (N'I0003', N'rhkdgh93', N'C0003', N'2016-07-21')
INSERT [dbo].[tableItem] ([itemNumber], [adminID], [itemType], [itemName], [itemImage], [itemPrice], [itemSize], [itemSkinType], [itemPoint], [itemRest], [itemDeadline], [itemMadeby], [itemMadein]) VALUES (N'B0001', N'admin', N'Body', N'아르간 에센셜 딥 케어 헤어', N'./images/item/Body/0001', N'8800', N'200', N'all', N'80', N'99', N'201807', N'서울화장품', N'한국')
INSERT [dbo].[tableItem] ([itemNumber], [adminID], [itemType], [itemName], [itemImage], [itemPrice], [itemSize], [itemSkinType], [itemPoint], [itemRest], [itemDeadline], [itemMadeby], [itemMadein]) VALUES (N'B0002', N'admin', N'Body', N'코튼 제모 크림', N'./images/item/Body/0002', N'6900', N'60', N'all', N'60', N'99', N'201807', N'한국콜마(주)', N'한국')
INSERT [dbo].[tableItem] ([itemNumber], [adminID], [itemType], [itemName], [itemImage], [itemPrice], [itemSize], [itemSkinType], [itemPoint], [itemRest], [itemDeadline], [itemMadeby], [itemMadein]) VALUES (N'B0003', N'admin', N'Body', N'매끈매끈 복숭아 때 샤워', N'./images/item/Body/0003', N'8900', N'250', N'all', N'250', N'99', N'201807', N'코스맥스(주)', N'한국')
INSERT [dbo].[tableItem] ([itemNumber], [adminID], [itemType], [itemName], [itemImage], [itemPrice], [itemSize], [itemSkinType], [itemPoint], [itemRest], [itemDeadline], [itemMadeby], [itemMadein]) VALUES (N'B0004', N'admin', N'Body', N'아르간 에센셜 딥 케어 에센스', N'./images/item/Body/0004', N'7500', N'60', N'all', N'60', N'99', N'201807', N'서울화장품', N'한국')
INSERT [dbo].[tableItem] ([itemNumber], [adminID], [itemType], [itemName], [itemImage], [itemPrice], [itemSize], [itemSkinType], [itemPoint], [itemRest], [itemDeadline], [itemMadeby], [itemMadein]) VALUES (N'C0001', N'admin', N'Cleansing', N'제주 탄산 폼 클렌저 300ml', N'./images/item/Cleansing/0001', N'15000', N'300', N'all', N'0', N'99', N'201807', N'한국콜마(주)', N'한국')
INSERT [dbo].[tableItem] ([itemNumber], [adminID], [itemType], [itemName], [itemImage], [itemPrice], [itemSize], [itemSkinType], [itemPoint], [itemRest], [itemDeadline], [itemMadeby], [itemMadein]) VALUES (N'C0002', N'admin', N'Cleansing', N'비베놈 클렌징 폼', N'./images/item/Cleansing/0002', N'10000', N'150', N'all', N'200', N'99', N'201807', N'코스맥스(주)', N'한국')
INSERT [dbo].[tableItem] ([itemNumber], [adminID], [itemType], [itemName], [itemImage], [itemPrice], [itemSize], [itemSkinType], [itemPoint], [itemRest], [itemDeadline], [itemMadeby], [itemMadein]) VALUES (N'C0003', N'admin', N'Cleansing', N'그린더마 마일드 필링 젤', N'./images/item/Cleansing/0003', N'12900', N'150', N'all', N'258', N'99', N'201807', N'코스맥스(주)', N'한국')
INSERT [dbo].[tableItem] ([itemNumber], [adminID], [itemType], [itemName], [itemImage], [itemPrice], [itemSize], [itemSkinType], [itemPoint], [itemRest], [itemDeadline], [itemMadeby], [itemMadein]) VALUES (N'C0004', N'admin', N'Cleansing', N'슈퍼 아쿠아 맥스 소프트 필링', N'./images/item/Cleansing/0004', N'8900', N'155', N'all', N'138', N'99', N'201807', N'코스메카코리아', N'한국')
INSERT [dbo].[tableItem] ([itemNumber], [adminID], [itemType], [itemName], [itemImage], [itemPrice], [itemSize], [itemSkinType], [itemPoint], [itemRest], [itemDeadline], [itemMadeby], [itemMadein]) VALUES (N'M0001', N'admin', N'Man', N'허브 트리 옴므 에멀젼', N'./images/item/Man/0001', N'25000', N'125', N'all', N'250', N'99', N'201807', N'한국콜마(주)', N'한국')
INSERT [dbo].[tableItem] ([itemNumber], [adminID], [itemType], [itemName], [itemImage], [itemPrice], [itemSize], [itemSkinType], [itemPoint], [itemRest], [itemDeadline], [itemMadeby], [itemMadein]) VALUES (N'M0002', N'admin', N'Man', N'아르간 옴므 스킨', N'./images/item/Man/0002', N'13000', N'130', N'all', N'130', N'99', N'201807', N'코스맥스(주)', N'한국')
INSERT [dbo].[tableItem] ([itemNumber], [adminID], [itemType], [itemName], [itemImage], [itemPrice], [itemSize], [itemSkinType], [itemPoint], [itemRest], [itemDeadline], [itemMadeby], [itemMadein]) VALUES (N'M0003', N'admin', N'Man', N'플레저 가든 위장 크림', N'./images/item/Man/0003', N'8000', N'10.8', N'all', N'80', N'99', N'201807', N'코스맥스(주)', N'한국')
INSERT [dbo].[tableItem] ([itemNumber], [adminID], [itemType], [itemName], [itemImage], [itemPrice], [itemSize], [itemSkinType], [itemPoint], [itemRest], [itemDeadline], [itemMadeby], [itemMadein]) VALUES (N'M0004', N'admin', N'Man', N'아프리카 모이스처라이저', N'./images/item/Man/0004', N'25000', N'150', N'dry', N'250', N'99', N'201807', N'한국콜마(주)', N'한국')
INSERT [dbo].[tableItem] ([itemNumber], [adminID], [itemType], [itemName], [itemImage], [itemPrice], [itemSize], [itemSkinType], [itemPoint], [itemRest], [itemDeadline], [itemMadeby], [itemMadein]) VALUES (N'P0001', N'admin', N'Pack', N'리얼 네이처 아쿠아 마스크', N'./images/item/Pack/0001', N'3000', N'28', N'all', N'30', N'99', N'201807', N'제닉', N'한국')
INSERT [dbo].[tableItem] ([itemNumber], [adminID], [itemType], [itemName], [itemImage], [itemPrice], [itemSize], [itemSkinType], [itemPoint], [itemRest], [itemDeadline], [itemMadeby], [itemMadein]) VALUES (N'P0002', N'admin', N'Pack', N'슈퍼 아쿠아 모이스처 팩', N'./images/item/Pack/0002', N'10900', N'100', N'all', N'110', N'99', N'201807', N'한국콜마(주)', N'한국')
INSERT [dbo].[tableItem] ([itemNumber], [adminID], [itemType], [itemName], [itemImage], [itemPrice], [itemSize], [itemSkinType], [itemPoint], [itemRest], [itemDeadline], [itemMadeby], [itemMadein]) VALUES (N'P0003', N'admin', N'Pack', N'허니 앤 허브 슬리핑 팩', N'./images/item/Pack/0003', N'9900', N'155', N'all', N'100', N'99', N'201807', N'한국콜마(주)', N'한국')
INSERT [dbo].[tableItem] ([itemNumber], [adminID], [itemType], [itemName], [itemImage], [itemPrice], [itemSize], [itemSkinType], [itemPoint], [itemRest], [itemDeadline], [itemMadeby], [itemMadein]) VALUES (N'P0004', N'admin', N'Pack', N'그린 요거트 팩', N'./images/item/Pack/0004', N'9900', N'130', N'all', N'100', N'99', N'201807', N'코스맥스(주)', N'한국')
INSERT [dbo].[tableItem] ([itemNumber], [adminID], [itemType], [itemName], [itemImage], [itemPrice], [itemSize], [itemSkinType], [itemPoint], [itemRest], [itemDeadline], [itemMadeby], [itemMadein]) VALUES (N'S0001', N'admin', N'Skin', N'비베놈 스팟 2종 기획 세트', N'./images/item/Skin/0001', N'17000', N'35', N'all', N'340', N'99', N'201807', N'코스맥스(주)', N'한국')
INSERT [dbo].[tableItem] ([itemNumber], [adminID], [itemType], [itemName], [itemImage], [itemPrice], [itemSize], [itemSkinType], [itemPoint], [itemRest], [itemDeadline], [itemMadeby], [itemMadein]) VALUES (N'S0002', N'admin', N'Skin', N'프로방스 카렌듈라 퍼펙트', N'./images/item/Skin/0002', N'15400', N'150', N'all', N'308', N'99', N'201807', N'코스온', N'한국')
INSERT [dbo].[tableItem] ([itemNumber], [adminID], [itemType], [itemName], [itemImage], [itemPrice], [itemSize], [itemSkinType], [itemPoint], [itemRest], [itemDeadline], [itemMadeby], [itemMadein]) VALUES (N'S0003', N'admin', N'Skin', N'리얼 네이처 앰플 허니', N'./images/item/Skin/0003', N'12500', N'30', N'all', N'333', N'99', N'201807', N'코스맥스(주)', N'한국')
INSERT [dbo].[tableItem] ([itemNumber], [adminID], [itemType], [itemName], [itemImage], [itemPrice], [itemSize], [itemSkinType], [itemPoint], [itemRest], [itemDeadline], [itemMadeby], [itemMadein]) VALUES (N'S0004', N'admin', N'Skin', N'콜라겐 드림 2종 기획 세트', N'./images/item/Skin/0004', N'41800', N'400', N'all', N'800', N'99', N'201807', N'한국콜마(주)', N'한국')
INSERT [dbo].[tableItem] ([itemNumber], [adminID], [itemType], [itemName], [itemImage], [itemPrice], [itemSize], [itemSkinType], [itemPoint], [itemRest], [itemDeadline], [itemMadeby], [itemMadein]) VALUES (N'U0001', N'admin', N'Makeup', N'퓨어 비비크림 23호 내추럴', N'./images/item/Makeup/0001', N'5500', N'15', N'all', N'50', N'99', N'201807', N'한국콜마(주)', N'한국')
INSERT [dbo].[tableItem] ([itemNumber], [adminID], [itemType], [itemName], [itemImage], [itemPrice], [itemSize], [itemSkinType], [itemPoint], [itemRest], [itemDeadline], [itemMadeby], [itemMadein]) VALUES (N'U0002', N'admin', N'Makeup', N'바이 플라워 트리플 볼륨 틴트', N'./images/item/Makeup/0002', N'10000', N'4', N'all', N'100', N'99', N'201807', N'코스맥스(주)', N'한국')
INSERT [dbo].[tableItem] ([itemNumber], [adminID], [itemType], [itemName], [itemImage], [itemPrice], [itemSize], [itemSkinType], [itemPoint], [itemRest], [itemDeadline], [itemMadeby], [itemMadein]) VALUES (N'U0003', N'admin', N'Makeup', N'모이스트 엔젤 립밤', N'./images/item/Makeup/0003', N'9900', N'3.3', N'all', N'100', N'99', N'201807', N'한국콜마(주)', N'한국')
INSERT [dbo].[tableItem] ([itemNumber], [adminID], [itemType], [itemName], [itemImage], [itemPrice], [itemSize], [itemSkinType], [itemPoint], [itemRest], [itemDeadline], [itemMadeby], [itemMadein]) VALUES (N'U0004', N'admin', N'Makeup', N'바이 플라워 아이섀도', N'./images/item/Makeup/0004', N'5500', N'3.3', N'all', N'100', N'99', N'201807', N'한국콜마(주)', N'한국')
INSERT [dbo].[tableItem] ([itemNumber], [adminID], [itemType], [itemName], [itemImage], [itemPrice], [itemSize], [itemSkinType], [itemPoint], [itemRest], [itemDeadline], [itemMadeby], [itemMadein]) VALUES (N'V0001', N'admin', N'Blo', N'자연의 꾸밈 면봉 300PCS', N'./images/item/Blo/0001', N'1000', N'300', N'all', N'50', N'99', N'201807', N'오리리 인터네셔널', N'한국')
INSERT [dbo].[tableItem] ([itemNumber], [adminID], [itemType], [itemName], [itemImage], [itemPrice], [itemSize], [itemSkinType], [itemPoint], [itemRest], [itemDeadline], [itemMadeby], [itemMadein]) VALUES (N'V0002', N'admin', N'Blo', N'자연의 꾸밈 내추럴 화장솜', N'./images/item/Blo/0002', N'1000', N'80', N'all', N'50', N'99', N'201807', N'동서위생', N'한국')
INSERT [dbo].[tableItem] ([itemNumber], [adminID], [itemType], [itemName], [itemImage], [itemPrice], [itemSize], [itemSkinType], [itemPoint], [itemRest], [itemDeadline], [itemMadeby], [itemMadein]) VALUES (N'V0003', N'admin', N'Blo', N'뷰티 툴 쿠션 CC 전용', N'./images/item/Blo/0003', N'5000', N'2', N'all', N'50', N'99', N'201807', N'이지파우더', N'한국')
INSERT [dbo].[tableItem] ([itemNumber], [adminID], [itemType], [itemName], [itemImage], [itemPrice], [itemSize], [itemSkinType], [itemPoint], [itemRest], [itemDeadline], [itemMadeby], [itemMadein]) VALUES (N'V0004', N'admin', N'Blo', N'자연의 꾸밈 고급 기름종이', N'./images/item/Blo/0004', N'3300', N'100', N'all', N'30', N'99', N'201807', N'이노코스', N'한국')
INSERT [dbo].[tableMember] ([memberID], [memberPW], [memberName], [memberBirth], [memberAddr], [memberTel], [memberEmail], [memberSkin], [memberPoint]) VALUES (N'alsgh123455', N'234234', N'염민호', N'1979      ', N'경상남도 진주시 봉래동 85 - 32', N'010-5636-4312', N'alsgh123455@naver.com', N'지성', N'20000')
INSERT [dbo].[tableMember] ([memberID], [memberPW], [memberName], [memberBirth], [memberAddr], [memberTel], [memberEmail], [memberSkin], [memberPoint]) VALUES (N'cherry527', N'asdf123', N'김채린', N'1963      ', N'서울 노원구 공릉로 232 서울과학기술대학교 성림학사 메롱', N'010-4706-3850', N'igoldqueen@naver.com', N'아리따움', N'0')
INSERT [dbo].[tableMember] ([memberID], [memberPW], [memberName], [memberBirth], [memberAddr], [memberTel], [memberEmail], [memberSkin], [memberPoint]) VALUES (N'rhkdgh93', N'123123', N'염광호', N'1983      ', N'경상남도 진주시 봉래동 85 -  32 헿해ㅇㄴㄹㅇㄹ', N'010-5636-4312', N'rhkdgh93@naver.com', N'악건성', N'22318')
INSERT [dbo].[tableOrder] ([orderNumber], [memberID], [orderDate], [orderAddr], [orderReceiver], [orderPhone], [orderMemo], [orderPrice], [orderItem]) VALUES (N'O0001', N'rhkdgh93', N'2016-06-21', N'경상남도 진주시 봉래동 85 -  32 헿해ㅇㄴㄹㅇㄹ', N'염광호', N'010-5636-4312', N'', N'25800', N'그린더마 마일드 필링 젤외2')
INSERT [dbo].[tableOrder] ([orderNumber], [memberID], [orderDate], [orderAddr], [orderReceiver], [orderPhone], [orderMemo], [orderPrice], [orderItem]) VALUES (N'O0002', N'rhkdgh93', N'2016-06-21', N'경상남도 진주시 봉래동 85 -  32 헿해ㅇㄴㄹㅇㄹ', N'염광호', N'010-5636-4312', N'', N'8900', N'')
INSERT [dbo].[tableOrder] ([orderNumber], [memberID], [orderDate], [orderAddr], [orderReceiver], [orderPhone], [orderMemo], [orderPrice], [orderItem]) VALUES (N'O0003', N'rhkdgh93', N'2016-06-22', N'경상남도 진주시 봉래동 85 -  32 헿해ㅇㄴㄹㅇㄹ', N'염광호', N'010-5636-4312', N'', N'22900', N'비베놈 클렌징 폼외2')
INSERT [dbo].[tablePayment] ([paymentNumber], [memberID], [orderNumber], [paymentHow], [paymentResult]) VALUES (N'P0001', N'rhkdgh93', N'O0002', N'dd', N'12,000')
INSERT [dbo].[tablePayment] ([paymentNumber], [memberID], [orderNumber], [paymentHow], [paymentResult]) VALUES (N'P0002', N'rhkdgh93', N'O0003', N'dd', N'12,000')
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
