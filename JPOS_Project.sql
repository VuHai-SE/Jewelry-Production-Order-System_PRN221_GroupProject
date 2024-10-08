USE [master]
GO
/****** Object:  Database [JPOS_Project]    Script Date: 11/09/24 19:11:33 ******/
CREATE DATABASE [JPOS_Project]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'JPOS_Project', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.VUHAI\MSSQL\DATA\JPOS_Project.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'JPOS_Project_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.VUHAI\MSSQL\DATA\JPOS_Project_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [JPOS_Project] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [JPOS_Project].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [JPOS_Project] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [JPOS_Project] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [JPOS_Project] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [JPOS_Project] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [JPOS_Project] SET ARITHABORT OFF 
GO
ALTER DATABASE [JPOS_Project] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [JPOS_Project] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [JPOS_Project] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [JPOS_Project] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [JPOS_Project] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [JPOS_Project] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [JPOS_Project] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [JPOS_Project] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [JPOS_Project] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [JPOS_Project] SET  ENABLE_BROKER 
GO
ALTER DATABASE [JPOS_Project] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [JPOS_Project] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [JPOS_Project] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [JPOS_Project] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [JPOS_Project] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [JPOS_Project] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [JPOS_Project] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [JPOS_Project] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [JPOS_Project] SET  MULTI_USER 
GO
ALTER DATABASE [JPOS_Project] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [JPOS_Project] SET DB_CHAINING OFF 
GO
ALTER DATABASE [JPOS_Project] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [JPOS_Project] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [JPOS_Project] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [JPOS_Project] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [JPOS_Project] SET QUERY_STORE = OFF
GO
USE [JPOS_Project]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 11/09/24 19:11:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Blogs]    Script Date: 11/09/24 19:11:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Blogs](
	[BlogID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NULL,
	[Content] [nvarchar](max) NULL,
	[CreateDate] [datetime2](7) NULL,
	[CreateBy] [nvarchar](450) NULL,
 CONSTRAINT [PK_Blogs] PRIMARY KEY CLUSTERED 
(
	[BlogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 11/09/24 19:11:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[CatID] [int] IDENTITY(1,1) NOT NULL,
	[CatName] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[CatID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Designs]    Script Date: 11/09/24 19:11:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Designs](
	[DesignID] [int] IDENTITY(1,1) NOT NULL,
	[CreateBy] [nvarchar](max) NULL,
	[Picture] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[CreateDate] [datetime2](7) NULL,
 CONSTRAINT [PK_Designs] PRIMARY KEY CLUSTERED 
(
	[DesignID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Feedbacks]    Script Date: 11/09/24 19:11:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feedbacks](
	[FeedBackID] [int] IDENTITY(1,1) NOT NULL,
	[Content] [nvarchar](max) NULL,
	[Rate] [int] NULL,
	[UserID] [nvarchar](450) NOT NULL,
	[ProductID] [int] NOT NULL,
 CONSTRAINT [PK_Feedbacks] PRIMARY KEY CLUSTERED 
(
	[FeedBackID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Materials]    Script Date: 11/09/24 19:11:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Materials](
	[MaterialID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Price] [int] NULL,
	[Quantity] [int] NULL,
	[TotalPrice] [int] NULL,
	[Status] [nvarchar](max) NULL,
 CONSTRAINT [PK_Materials] PRIMARY KEY CLUSTERED 
(
	[MaterialID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Policies]    Script Date: 11/09/24 19:11:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Policies](
	[PolicyID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NULL,
	[Content] [nvarchar](max) NULL,
	[CreateDate] [datetime2](7) NULL,
	[CreateBy] [nvarchar](450) NULL,
 CONSTRAINT [PK_Policies] PRIMARY KEY CLUSTERED 
(
	[PolicyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductMaterials]    Script Date: 11/09/24 19:11:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductMaterials](
	[ProductMaterialID] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NOT NULL,
	[MaterialID] [int] NOT NULL,
	[Quantity] [int] NULL,
	[Price] [int] NULL,
 CONSTRAINT [PK_ProductMaterials] PRIMARY KEY CLUSTERED 
(
	[ProductMaterialID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 11/09/24 19:11:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[CreateBy] [nvarchar](max) NULL,
	[PriceMaterial] [int] NULL,
	[PriceDesign] [int] NULL,
	[ProcessPrice] [int] NULL,
	[CategoryID] [int] NULL,
	[DesignID] [int] NULL,
	[CreateDate] [datetime2](7) NULL,
	[Status] [nvarchar](max) NULL,
	[Image] [nvarchar](max) NULL,
	[ProductName] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Requests]    Script Date: 11/09/24 19:11:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Requests](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [nvarchar](450) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[CreateDate] [datetime2](7) NULL,
	[Status] [nvarchar](max) NULL,
	[ProductID] [int] NULL,
	[Image] [nvarchar](max) NULL,
	[Type] [int] NULL,
 CONSTRAINT [PK_Requests] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 11/09/24 19:11:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[RoleID] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](max) NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Transactions]    Script Date: 11/09/24 19:11:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Transactions](
	[TransactionID] [int] IDENTITY(1,1) NOT NULL,
	[RequestID] [nvarchar](max) NULL,
	[UserID] [nvarchar](450) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[CreatedDate] [datetime2](7) NULL,
 CONSTRAINT [PK_Transactions] PRIMARY KEY CLUSTERED 
(
	[TransactionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 11/09/24 19:11:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserID] [nvarchar](450) NOT NULL,
	[Username] [nvarchar](max) NOT NULL,
	[Password] [nvarchar](max) NOT NULL,
	[FullName] [nvarchar](max) NULL,
	[PhoneNum] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
	[RoleID] [int] NOT NULL,
	[CreateDate] [datetime2](7) NULL,
	[Status] [bit] NULL,
	[Email] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Blogs] ON 

INSERT [dbo].[Blogs] ([BlogID], [Title], [Content], [CreateDate], [CreateBy]) VALUES (2, N'First Blog Post', N'This is the content of the first blog post. This is the content of the first blog post. This is the content of the first blog post.', CAST(N'2024-07-09T15:51:08.1366667' AS DateTime2), N'1')
INSERT [dbo].[Blogs] ([BlogID], [Title], [Content], [CreateDate], [CreateBy]) VALUES (3, N'Second Blog Post', N'This is the content of the second blog post.', CAST(N'2024-07-09T15:51:08.1366667' AS DateTime2), N'2')
INSERT [dbo].[Blogs] ([BlogID], [Title], [Content], [CreateDate], [CreateBy]) VALUES (4, N'Third Blog Post', N'This is the content of the fifth blog post.', CAST(N'2024-07-09T15:52:09.9066667' AS DateTime2), N'3')
INSERT [dbo].[Blogs] ([BlogID], [Title], [Content], [CreateDate], [CreateBy]) VALUES (5, N'Fourth Blog Post', N'This is the content of the fourth blog post.', CAST(N'2024-07-09T15:52:09.9066667' AS DateTime2), N'4')
INSERT [dbo].[Blogs] ([BlogID], [Title], [Content], [CreateDate], [CreateBy]) VALUES (6, N'Fifth Blog Post', N'This is the content of the fifth blog post.', CAST(N'2024-07-09T15:52:09.9066667' AS DateTime2), N'5')
INSERT [dbo].[Blogs] ([BlogID], [Title], [Content], [CreateDate], [CreateBy]) VALUES (13, N'Jewelry Trends 2024', N'Exploring the latest trends in the jewelry industry for 2024...', CAST(N'2024-01-15T00:00:00.0000000' AS DateTime2), N'US00002')
SET IDENTITY_INSERT [dbo].[Blogs] OFF
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([CatID], [CatName], [Description]) VALUES (1, N'Rings', N'Diamond and Gold Rings')
INSERT [dbo].[Categories] ([CatID], [CatName], [Description]) VALUES (2, N'Necklaces', N'Gold and Silver Necklaces')
INSERT [dbo].[Categories] ([CatID], [CatName], [Description]) VALUES (3, N'Rings', N'Diamond and Gold Rings')
INSERT [dbo].[Categories] ([CatID], [CatName], [Description]) VALUES (4, N'Necklaces', N'Gold and Silver Necklaces')
INSERT [dbo].[Categories] ([CatID], [CatName], [Description]) VALUES (5, N'Bracelets', N'Gold and Silver Bracelets')
INSERT [dbo].[Categories] ([CatID], [CatName], [Description]) VALUES (6, N'Earring', N'Diamond and Gold Earrings')
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[Designs] ON 

INSERT [dbo].[Designs] ([DesignID], [CreateBy], [Picture], [Description], [CreateDate]) VALUES (1, N'user1', N'https://i.pinimg.com/originals/fa/a2/1e/faa21ee7403e93ba90195a4369513615.jpg', N'Sample design 1', CAST(N'2024-07-09T15:50:54.4933333' AS DateTime2))
INSERT [dbo].[Designs] ([DesignID], [CreateBy], [Picture], [Description], [CreateDate]) VALUES (2, N'user2', N'https://i.pinimg.com/originals/fa/a2/1e/faa21ee7403e93ba90195a4369513615.jpg', N'Sample design 2', CAST(N'2024-07-09T15:50:54.4933333' AS DateTime2))
INSERT [dbo].[Designs] ([DesignID], [CreateBy], [Picture], [Description], [CreateDate]) VALUES (3, N'user1', N'https://i.pinimg.com/originals/fa/a2/1e/faa21ee7403e93ba90195a4369513615.jpg', N'Sample design 1', CAST(N'2024-07-09T15:51:13.6433333' AS DateTime2))
INSERT [dbo].[Designs] ([DesignID], [CreateBy], [Picture], [Description], [CreateDate]) VALUES (4, N'user2', N'https://i.pinimg.com/originals/fa/a2/1e/faa21ee7403e93ba90195a4369513615.jpg', N'Sample design 2', CAST(N'2024-07-09T15:51:13.6433333' AS DateTime2))
INSERT [dbo].[Designs] ([DesignID], [CreateBy], [Picture], [Description], [CreateDate]) VALUES (5, N'user3', N'https://i.pinimg.com/originals/fa/a2/1e/faa21ee7403e93ba90195a4369513615.jpg', N'Sample design 3', CAST(N'2024-07-09T15:52:09.9066667' AS DateTime2))
INSERT [dbo].[Designs] ([DesignID], [CreateBy], [Picture], [Description], [CreateDate]) VALUES (6, N'user4', N'https://i.pinimg.com/originals/fa/a2/1e/faa21ee7403e93ba90195a4369513615.jpg', N'Sample design 4', CAST(N'2024-07-09T15:52:09.9066667' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Designs] OFF
GO
SET IDENTITY_INSERT [dbo].[Feedbacks] ON 

INSERT [dbo].[Feedbacks] ([FeedBackID], [Content], [Rate], [UserID], [ProductID]) VALUES (2, N'Great product!', 5, N'1', 1)
INSERT [dbo].[Feedbacks] ([FeedBackID], [Content], [Rate], [UserID], [ProductID]) VALUES (3, N'Not satisfied with the quality.', 2, N'2', 2)
INSERT [dbo].[Feedbacks] ([FeedBackID], [Content], [Rate], [UserID], [ProductID]) VALUES (4, N'Amazing quality!', 5, N'3', 3)
INSERT [dbo].[Feedbacks] ([FeedBackID], [Content], [Rate], [UserID], [ProductID]) VALUES (5, N'Would buy again.', 4, N'4', 4)
INSERT [dbo].[Feedbacks] ([FeedBackID], [Content], [Rate], [UserID], [ProductID]) VALUES (6, N'Could be better.', 3, N'5', 5)
SET IDENTITY_INSERT [dbo].[Feedbacks] OFF
GO
SET IDENTITY_INSERT [dbo].[Materials] ON 

INSERT [dbo].[Materials] ([MaterialID], [Name], [Price], [Quantity], [TotalPrice], [Status]) VALUES (1, N'Gold', 1500, 10, 15000, N'Available')
INSERT [dbo].[Materials] ([MaterialID], [Name], [Price], [Quantity], [TotalPrice], [Status]) VALUES (2, N'Diamond', 5000, 5, 25000, N'Available')
INSERT [dbo].[Materials] ([MaterialID], [Name], [Price], [Quantity], [TotalPrice], [Status]) VALUES (3, N'Gold 24K', 1500, 10, 15000, N'Available')
INSERT [dbo].[Materials] ([MaterialID], [Name], [Price], [Quantity], [TotalPrice], [Status]) VALUES (4, N'Ruby', 5000, 5, 25000, N'Available')
INSERT [dbo].[Materials] ([MaterialID], [Name], [Price], [Quantity], [TotalPrice], [Status]) VALUES (5, N'Silver', 1000, 20, 20000, N'Available')
INSERT [dbo].[Materials] ([MaterialID], [Name], [Price], [Quantity], [TotalPrice], [Status]) VALUES (13, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Materials] OFF
GO
SET IDENTITY_INSERT [dbo].[Policies] ON 

INSERT [dbo].[Policies] ([PolicyID], [Title], [Content], [CreateDate], [CreateBy]) VALUES (2, N'Return Policy', N'You can return products within 30 days.', CAST(N'2024-07-09T15:51:23.4633333' AS DateTime2), N'1')
INSERT [dbo].[Policies] ([PolicyID], [Title], [Content], [CreateDate], [CreateBy]) VALUES (3, N'Shipping Policy', N'Free shipping for orders over $100.', CAST(N'2024-07-09T15:51:23.4633333' AS DateTime2), N'2')
INSERT [dbo].[Policies] ([PolicyID], [Title], [Content], [CreateDate], [CreateBy]) VALUES (4, N'Privacy Policy', N'Your data is secure with us.', CAST(N'2024-07-09T15:52:09.9066667' AS DateTime2), N'3')
INSERT [dbo].[Policies] ([PolicyID], [Title], [Content], [CreateDate], [CreateBy]) VALUES (5, N'Terms of Service', N'Please read the terms of service carefully.', CAST(N'2024-07-09T15:52:09.9066667' AS DateTime2), N'4')
SET IDENTITY_INSERT [dbo].[Policies] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductMaterials] ON 

INSERT [dbo].[ProductMaterials] ([ProductMaterialID], [ProductID], [MaterialID], [Quantity], [Price]) VALUES (1, 1, 1, 1, 1500)
INSERT [dbo].[ProductMaterials] ([ProductMaterialID], [ProductID], [MaterialID], [Quantity], [Price]) VALUES (2, 2, 2, 1, 5000)
INSERT [dbo].[ProductMaterials] ([ProductMaterialID], [ProductID], [MaterialID], [Quantity], [Price]) VALUES (3, 1, 1, 1, 1500)
INSERT [dbo].[ProductMaterials] ([ProductMaterialID], [ProductID], [MaterialID], [Quantity], [Price]) VALUES (4, 2, 2, 1, 5000)
INSERT [dbo].[ProductMaterials] ([ProductMaterialID], [ProductID], [MaterialID], [Quantity], [Price]) VALUES (5, 3, 3, 2, 2000)
INSERT [dbo].[ProductMaterials] ([ProductMaterialID], [ProductID], [MaterialID], [Quantity], [Price]) VALUES (6, 4, 4, 1, 3000)
INSERT [dbo].[ProductMaterials] ([ProductMaterialID], [ProductID], [MaterialID], [Quantity], [Price]) VALUES (9, 11, 13, 1, 1000)
SET IDENTITY_INSERT [dbo].[ProductMaterials] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([ProductID], [CreateBy], [PriceMaterial], [PriceDesign], [ProcessPrice], [CategoryID], [DesignID], [CreateDate], [Status], [Image], [ProductName], [Description]) VALUES (1, N'user1', 1500, 500, 200, 1, 1, CAST(N'2024-07-09T15:50:54.4933333' AS DateTime2), N'Available', N'https://cdn.pnj.io/images/detailed/206/sp-gnddddw013072-nhan-kim-cuong-vang-trang-14k-pnj-1.png', N'Diamond Ring', N'14K White Gold Diamond Ring')
INSERT [dbo].[Products] ([ProductID], [CreateBy], [PriceMaterial], [PriceDesign], [ProcessPrice], [CategoryID], [DesignID], [CreateDate], [Status], [Image], [ProductName], [Description]) VALUES (2, N'user2', 2000, 700, 300, 2, 2, CAST(N'2024-07-09T15:50:54.4933333' AS DateTime2), N'Sold Out', N'https://cdn.pnj.io/images/detailed/206/sp-gnddddw013072-nhan-kim-cuong-vang-trang-14k-pnj-1.png', N'Gold Necklace', N'18K Gold Necklace')
INSERT [dbo].[Products] ([ProductID], [CreateBy], [PriceMaterial], [PriceDesign], [ProcessPrice], [CategoryID], [DesignID], [CreateDate], [Status], [Image], [ProductName], [Description]) VALUES (3, N'user1', 1500, 500, 200, 1, 1, CAST(N'2024-07-09T15:51:28.1766667' AS DateTime2), N'Available', N'https://cdn.pnj.io/images/detailed/206/sp-gnddddw013072-nhan-kim-cuong-vang-trang-14k-pnj-1.png', N'Diamond Ring', N'14K White Gold Diamond Ring')
INSERT [dbo].[Products] ([ProductID], [CreateBy], [PriceMaterial], [PriceDesign], [ProcessPrice], [CategoryID], [DesignID], [CreateDate], [Status], [Image], [ProductName], [Description]) VALUES (4, N'user2', 2000, 700, 300, 2, 2, CAST(N'2024-07-09T15:51:28.1766667' AS DateTime2), N'Sold Out', N'https://cdn.pnj.io/images/detailed/206/sp-gnddddw013072-nhan-kim-cuong-vang-trang-14k-pnj-1.png', N'Gold Necklace', N'18K Gold Necklace')
INSERT [dbo].[Products] ([ProductID], [CreateBy], [PriceMaterial], [PriceDesign], [ProcessPrice], [CategoryID], [DesignID], [CreateDate], [Status], [Image], [ProductName], [Description]) VALUES (5, N'user3', 1200, 400, 150, 3, 3, CAST(N'2024-07-09T15:52:09.9066667' AS DateTime2), N'Available', N'https://cdn.pnj.io/images/detailed/206/sp-gnddddw013072-nhan-kim-cuong-vang-trang-14k-pnj-1.png', N'Silver Bracelet', N'Beautiful Silver Bracelet')
INSERT [dbo].[Products] ([ProductID], [CreateBy], [PriceMaterial], [PriceDesign], [ProcessPrice], [CategoryID], [DesignID], [CreateDate], [Status], [Image], [ProductName], [Description]) VALUES (10, N'Admin', 18000, 100, 100, 1, 5, CAST(N'2024-07-16T16:32:12.6198473' AS DateTime2), N'Done', N'http://res.cloudinary.com/dkyv1vp1c/image/upload/v1721122332/hreg1bymkkke4bsuralp.jpg', N'Gold Ring 18K', N'Gold ring with 18K gold')
INSERT [dbo].[Products] ([ProductID], [CreateBy], [PriceMaterial], [PriceDesign], [ProcessPrice], [CategoryID], [DesignID], [CreateDate], [Status], [Image], [ProductName], [Description]) VALUES (11, N'Admin', 1000, 20, 20, 1, 5, CAST(N'2024-07-16T16:48:24.9419413' AS DateTime2), N'Done', N'http://res.cloudinary.com/dkyv1vp1c/image/upload/v1721123304/rysonvwecpxmga7i35rc.jpg', N'Bracelet', N'Bracelet')
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[Requests] ON 

INSERT [dbo].[Requests] ([ID], [UserID], [Description], [CreateDate], [Status], [ProductID], [Image], [Type]) VALUES (2, N'1', N'New request made', CAST(N'2024-07-09T15:51:34.4660000' AS DateTime2), N'Pending', 2, N'https://cdn.pnj.io/images/detailed/206/sp-gnddddw013072-nhan-kim-cuong-vang-trang-14k-pnj-1.png', 8)
INSERT [dbo].[Requests] ([ID], [UserID], [Description], [CreateDate], [Status], [ProductID], [Image], [Type]) VALUES (3, N'2', N'Request for a custom necklace.', CAST(N'2024-07-09T15:51:34.4666667' AS DateTime2), N'Completed', 2, N'https://cdn.pnj.io/images/detailed/206/sp-gnddddw013072-nhan-kim-cuong-vang-trang-14k-pnj-1.png', 2)
INSERT [dbo].[Requests] ([ID], [UserID], [Description], [CreateDate], [Status], [ProductID], [Image], [Type]) VALUES (4, N'3', N'Request for a custom bracelet.', CAST(N'2024-07-09T15:52:09.9100000' AS DateTime2), N'Pending', 3, N'https://cdn.pnj.io/images/detailed/206/sp-gnddddw013072-nhan-kim-cuong-vang-trang-14k-pnj-1.png', 1)
INSERT [dbo].[Requests] ([ID], [UserID], [Description], [CreateDate], [Status], [ProductID], [Image], [Type]) VALUES (5, N'4', N'Request for custom earrings.', CAST(N'2024-07-09T15:52:09.9100000' AS DateTime2), N'Completed', 4, N'https://cdn.pnj.io/images/detailed/206/sp-gnddddw013072-nhan-kim-cuong-vang-trang-14k-pnj-1.png', 2)
INSERT [dbo].[Requests] ([ID], [UserID], [Description], [CreateDate], [Status], [ProductID], [Image], [Type]) VALUES (6, N'US00002', N'Request for custom ring.', CAST(N'2024-07-15T10:00:00.0000000' AS DateTime2), N'Finished', 1, N'https://th.bing.com/th/id/OIP.eCFwaRtKwqEfcAdkVUElpgHaHa?rs=1&pid=ImgDetMain', 3)
INSERT [dbo].[Requests] ([ID], [UserID], [Description], [CreateDate], [Status], [ProductID], [Image], [Type]) VALUES (7, N'US00002', N'Request for a custom pendant.', CAST(N'2024-07-15T10:05:00.0000000' AS DateTime2), N'Pending', 2, N'https://th.bing.com/th/id/OIP.eCFwaRtKwqEfcAdkVUElpgHaHa?rs=1&pid=ImgDetMain', 1)
INSERT [dbo].[Requests] ([ID], [UserID], [Description], [CreateDate], [Status], [ProductID], [Image], [Type]) VALUES (8, N'US00002', N'Request for custom anklet.', CAST(N'2024-07-15T10:10:00.0000000' AS DateTime2), N'Processing', 3, N'https://th.bing.com/th/id/OIP.eCFwaRtKwqEfcAdkVUElpgHaHa?rs=1&pid=ImgDetMain', 5)
INSERT [dbo].[Requests] ([ID], [UserID], [Description], [CreateDate], [Status], [ProductID], [Image], [Type]) VALUES (9, N'US00002', N'Request for custom brooch.', CAST(N'2024-07-15T10:15:00.0000000' AS DateTime2), N'Pending', 4, N'https://th.bing.com/th/id/OIP.eCFwaRtKwqEfcAdkVUElpgHaHa?rs=1&pid=ImgDetMain', 6)
INSERT [dbo].[Requests] ([ID], [UserID], [Description], [CreateDate], [Status], [ProductID], [Image], [Type]) VALUES (10, N'US00002', N'Request for custom hairpin.', CAST(N'2024-07-15T10:20:00.0000000' AS DateTime2), N'Finished', 5, N'https://th.bing.com/th/id/OIP.eCFwaRtKwqEfcAdkVUElpgHaHa?rs=1&pid=ImgDetMain', 7)
INSERT [dbo].[Requests] ([ID], [UserID], [Description], [CreateDate], [Status], [ProductID], [Image], [Type]) VALUES (11, N'US00002', N'Request for custom toe ring.', CAST(N'2024-07-15T10:25:00.0000000' AS DateTime2), N'Pending', 2, N'https://th.bing.com/th/id/OIP.eCFwaRtKwqEfcAdkVUElpgHaHa?rs=1&pid=ImgDetMain', 8)
INSERT [dbo].[Requests] ([ID], [UserID], [Description], [CreateDate], [Status], [ProductID], [Image], [Type]) VALUES (54, N'US00005', N'Request for a custom ring.', CAST(N'2024-07-15T10:00:00.0000000' AS DateTime2), N'Pending', 3, N'https://cdn.pnj.io/images/detailed/206/sp-gnddtddw010049-1.jpg', 1)
INSERT [dbo].[Requests] ([ID], [UserID], [Description], [CreateDate], [Status], [ProductID], [Image], [Type]) VALUES (55, N'US00002', N'Request for a custom pendant.', CAST(N'2024-07-15T10:05:00.0000000' AS DateTime2), N'Processing', 2, N'https://cdn.pnj.io/images/detailed/206/sp-gnddtddw010049-2.jpg', 2)
INSERT [dbo].[Requests] ([ID], [UserID], [Description], [CreateDate], [Status], [ProductID], [Image], [Type]) VALUES (56, N'US00003', N'Request for a custom anklet.', CAST(N'2024-07-15T10:10:00.0000000' AS DateTime2), N'Completed', 3, N'https://cdn.pnj.io/images/detailed/206/sp-gnddtddw010049-3.jpg', 3)
INSERT [dbo].[Requests] ([ID], [UserID], [Description], [CreateDate], [Status], [ProductID], [Image], [Type]) VALUES (57, N'US00004', N'Request for a custom brooch.', CAST(N'2024-07-15T10:15:00.0000000' AS DateTime2), N'Pending', 4, N'https://cdn.pnj.io/images/detailed/206/sp-gnddtddw010049-4.jpg', 1)
INSERT [dbo].[Requests] ([ID], [UserID], [Description], [CreateDate], [Status], [ProductID], [Image], [Type]) VALUES (58, N'US00005', N'Request for a custom hairpin.', CAST(N'2024-07-15T10:20:00.0000000' AS DateTime2), N'Processing', 5, N'https://cdn.pnj.io/images/detailed/206/sp-gnddtddw010049-5.jpg', 2)
INSERT [dbo].[Requests] ([ID], [UserID], [Description], [CreateDate], [Status], [ProductID], [Image], [Type]) VALUES (59, N'US00006', N'Request for a custom toe ring.', CAST(N'2024-07-15T10:25:00.0000000' AS DateTime2), N'Completed', 2, N'https://cdn.pnj.io/images/detailed/206/sp-gnddtddw010049-6.jpg', 3)
INSERT [dbo].[Requests] ([ID], [UserID], [Description], [CreateDate], [Status], [ProductID], [Image], [Type]) VALUES (60, N'US00006', N'Request for a custom bracelet.', CAST(N'2024-07-15T10:30:00.0000000' AS DateTime2), N'Pending', 3, N'https://cdn.pnj.io/images/detailed/206/sp-gnddtddw010049-7.jpg', 1)
INSERT [dbo].[Requests] ([ID], [UserID], [Description], [CreateDate], [Status], [ProductID], [Image], [Type]) VALUES (61, N'US00002', N'Request for a custom necklace.', CAST(N'2024-07-15T10:35:00.0000000' AS DateTime2), N'Processing', 5, N'https://cdn.pnj.io/images/detailed/206/sp-gnddtddw010049-8.jpg', 2)
INSERT [dbo].[Requests] ([ID], [UserID], [Description], [CreateDate], [Status], [ProductID], [Image], [Type]) VALUES (62, N'US00003', N'Request for a custom earrings.', CAST(N'2024-07-15T10:40:00.0000000' AS DateTime2), N'Completed', 4, N'https://cdn.pnj.io/images/detailed/206/sp-gnddtddw010049-9.jpg', 3)
INSERT [dbo].[Requests] ([ID], [UserID], [Description], [CreateDate], [Status], [ProductID], [Image], [Type]) VALUES (63, N'US00004', N'Request for a custom brooch.', CAST(N'2024-07-15T10:45:00.0000000' AS DateTime2), N'Pending', 3, N'https://cdn.pnj.io/images/detailed/206/sp-gnddtddw010049-10.jpg', 1)
INSERT [dbo].[Requests] ([ID], [UserID], [Description], [CreateDate], [Status], [ProductID], [Image], [Type]) VALUES (64, N'US00005', N'Request for a custom ring.', CAST(N'2024-07-15T10:50:00.0000000' AS DateTime2), N'Processing', 2, N'https://cdn.pnj.io/images/detailed/206/sp-gnddtddw010049-11.jpg', 2)
INSERT [dbo].[Requests] ([ID], [UserID], [Description], [CreateDate], [Status], [ProductID], [Image], [Type]) VALUES (65, N'US00006', N'Request for a custom pendant.', CAST(N'2024-07-15T10:55:00.0000000' AS DateTime2), N'Completed', 1, N'https://cdn.pnj.io/images/detailed/206/sp-gnddtddw010049-12.jpg', 3)
INSERT [dbo].[Requests] ([ID], [UserID], [Description], [CreateDate], [Status], [ProductID], [Image], [Type]) VALUES (66, N'US00002', N'Request for a custom ring.', CAST(N'2024-01-15T10:00:00.0000000' AS DateTime2), N'Pending', 1, N'https://cdn.pnj.io/images/detailed/206/sp-gnddtddw010049-1.jpg', 1)
INSERT [dbo].[Requests] ([ID], [UserID], [Description], [CreateDate], [Status], [ProductID], [Image], [Type]) VALUES (67, N'US00002', N'Request for a custom pendant.', CAST(N'2024-02-15T10:05:00.0000000' AS DateTime2), N'Processing', 2, N'https://cdn.pnj.io/images/detailed/206/sp-gnddtddw010049-2.jpg', 2)
INSERT [dbo].[Requests] ([ID], [UserID], [Description], [CreateDate], [Status], [ProductID], [Image], [Type]) VALUES (68, N'US00003', N'Request for a custom anklet.', CAST(N'2024-03-15T10:10:00.0000000' AS DateTime2), N'Completed', 3, N'https://cdn.pnj.io/images/detailed/206/sp-gnddtddw010049-3.jpg', 3)
INSERT [dbo].[Requests] ([ID], [UserID], [Description], [CreateDate], [Status], [ProductID], [Image], [Type]) VALUES (69, N'US00004', N'Request for a custom brooch.', CAST(N'2024-04-15T10:15:00.0000000' AS DateTime2), N'Pending', 4, N'https://cdn.pnj.io/images/detailed/206/sp-gnddtddw010049-4.jpg', 1)
INSERT [dbo].[Requests] ([ID], [UserID], [Description], [CreateDate], [Status], [ProductID], [Image], [Type]) VALUES (70, N'US00005', N'Request for a custom hairpin.', CAST(N'2024-05-15T10:20:00.0000000' AS DateTime2), N'Processing', 5, N'https://cdn.pnj.io/images/detailed/206/sp-gnddtddw010049-5.jpg', 2)
INSERT [dbo].[Requests] ([ID], [UserID], [Description], [CreateDate], [Status], [ProductID], [Image], [Type]) VALUES (71, N'US00006', N'Request for a custom toe ring.', CAST(N'2024-06-15T10:25:00.0000000' AS DateTime2), N'Completed', 2, N'https://cdn.pnj.io/images/detailed/206/sp-gnddtddw010049-6.jpg', 3)
INSERT [dbo].[Requests] ([ID], [UserID], [Description], [CreateDate], [Status], [ProductID], [Image], [Type]) VALUES (72, N'US00003', N'Request for a custom bracelet.', CAST(N'2024-08-15T10:30:00.0000000' AS DateTime2), N'Pending', 3, N'https://cdn.pnj.io/images/detailed/206/sp-gnddtddw010049-7.jpg', 1)
INSERT [dbo].[Requests] ([ID], [UserID], [Description], [CreateDate], [Status], [ProductID], [Image], [Type]) VALUES (73, N'US00002', N'Request for a custom necklace.', CAST(N'2024-09-15T10:35:00.0000000' AS DateTime2), N'Processing', 5, N'https://cdn.pnj.io/images/detailed/206/sp-gnddtddw010049-8.jpg', 2)
INSERT [dbo].[Requests] ([ID], [UserID], [Description], [CreateDate], [Status], [ProductID], [Image], [Type]) VALUES (74, N'US00003', N'Request for a custom earrings.', CAST(N'2024-10-15T10:40:00.0000000' AS DateTime2), N'Completed', 4, N'https://cdn.pnj.io/images/detailed/206/sp-gnddtddw010049-9.jpg', 3)
INSERT [dbo].[Requests] ([ID], [UserID], [Description], [CreateDate], [Status], [ProductID], [Image], [Type]) VALUES (75, N'US00004', N'Request for a custom brooch.', CAST(N'2024-11-15T10:45:00.0000000' AS DateTime2), N'Pending', 3, N'https://cdn.pnj.io/images/detailed/206/sp-gnddtddw010049-10.jpg', 1)
INSERT [dbo].[Requests] ([ID], [UserID], [Description], [CreateDate], [Status], [ProductID], [Image], [Type]) VALUES (76, N'US00005', N'Request for a custom ring.', CAST(N'2024-12-15T10:50:00.0000000' AS DateTime2), N'Processing', 2, N'https://cdn.pnj.io/images/detailed/206/sp-gnddtddw010049-11.jpg', 2)
INSERT [dbo].[Requests] ([ID], [UserID], [Description], [CreateDate], [Status], [ProductID], [Image], [Type]) VALUES (77, N'US00006', N'Request for a custom pendant.', CAST(N'2024-01-15T10:55:00.0000000' AS DateTime2), N'Completed', 1, N'https://cdn.pnj.io/images/detailed/206/sp-gnddtddw010049-12.jpg', 3)
INSERT [dbo].[Requests] ([ID], [UserID], [Description], [CreateDate], [Status], [ProductID], [Image], [Type]) VALUES (78, N'US00002', N'Request for a custom ring.', CAST(N'2024-03-15T10:00:00.0000000' AS DateTime2), N'Pending', 1, N'https://cdn.pnj.io/images/detailed/206/sp-gnddtddw010049-1.jpg', 1)
INSERT [dbo].[Requests] ([ID], [UserID], [Description], [CreateDate], [Status], [ProductID], [Image], [Type]) VALUES (79, N'US00002', N'Request for a custom pendant.', CAST(N'2024-04-15T10:05:00.0000000' AS DateTime2), N'Processing', 2, N'https://cdn.pnj.io/images/detailed/206/sp-gnddtddw010049-2.jpg', 2)
INSERT [dbo].[Requests] ([ID], [UserID], [Description], [CreateDate], [Status], [ProductID], [Image], [Type]) VALUES (80, N'US00003', N'Request for a custom anklet.', CAST(N'2024-05-15T10:10:00.0000000' AS DateTime2), N'Completed', 3, N'https://cdn.pnj.io/images/detailed/206/sp-gnddtddw010049-3.jpg', 3)
INSERT [dbo].[Requests] ([ID], [UserID], [Description], [CreateDate], [Status], [ProductID], [Image], [Type]) VALUES (81, N'US00004', N'Request for a custom brooch.', CAST(N'2024-06-15T10:15:00.0000000' AS DateTime2), N'Pending', 4, N'https://cdn.pnj.io/images/detailed/206/sp-gnddtddw010049-4.jpg', 1)
INSERT [dbo].[Requests] ([ID], [UserID], [Description], [CreateDate], [Status], [ProductID], [Image], [Type]) VALUES (82, N'US00005', N'Request for a custom hairpin.', CAST(N'2024-07-15T10:20:00.0000000' AS DateTime2), N'Processing', 5, N'https://cdn.pnj.io/images/detailed/206/sp-gnddtddw010049-5.jpg', 2)
INSERT [dbo].[Requests] ([ID], [UserID], [Description], [CreateDate], [Status], [ProductID], [Image], [Type]) VALUES (83, N'US00006', N'Request for a custom toe ring.', CAST(N'2024-08-15T10:25:00.0000000' AS DateTime2), N'Completed', 2, N'https://cdn.pnj.io/images/detailed/206/sp-gnddtddw010049-6.jpg', 3)
INSERT [dbo].[Requests] ([ID], [UserID], [Description], [CreateDate], [Status], [ProductID], [Image], [Type]) VALUES (84, N'US00003', N'Request for a custom bracelet.', CAST(N'2024-09-15T10:30:00.0000000' AS DateTime2), N'Pending', 3, N'https://cdn.pnj.io/images/detailed/206/sp-gnddtddw010049-7.jpg', 1)
INSERT [dbo].[Requests] ([ID], [UserID], [Description], [CreateDate], [Status], [ProductID], [Image], [Type]) VALUES (85, N'US00002', N'Request for a custom necklace.', CAST(N'2024-10-15T10:35:00.0000000' AS DateTime2), N'Processing', 5, N'https://cdn.pnj.io/images/detailed/206/sp-gnddtddw010049-8.jpg', 2)
INSERT [dbo].[Requests] ([ID], [UserID], [Description], [CreateDate], [Status], [ProductID], [Image], [Type]) VALUES (86, N'US00003', N'Request for a custom earrings.', CAST(N'2024-11-15T10:40:00.0000000' AS DateTime2), N'Completed', 4, N'https://cdn.pnj.io/images/detailed/206/sp-gnddtddw010049-9.jpg', 3)
INSERT [dbo].[Requests] ([ID], [UserID], [Description], [CreateDate], [Status], [ProductID], [Image], [Type]) VALUES (87, N'US00004', N'Request for a custom brooch.', CAST(N'2024-12-15T10:45:00.0000000' AS DateTime2), N'Pending', 3, N'https://cdn.pnj.io/images/detailed/206/sp-gnddtddw010049-10.jpg', 1)
INSERT [dbo].[Requests] ([ID], [UserID], [Description], [CreateDate], [Status], [ProductID], [Image], [Type]) VALUES (88, N'US00005', N'Request for a custom ring.', CAST(N'2024-01-15T10:50:00.0000000' AS DateTime2), N'Processing', 2, N'https://cdn.pnj.io/images/detailed/206/sp-gnddtddw010049-11.jpg', 2)
INSERT [dbo].[Requests] ([ID], [UserID], [Description], [CreateDate], [Status], [ProductID], [Image], [Type]) VALUES (89, N'US00006', N'Request for a custom pendant.', CAST(N'2024-02-15T10:55:00.0000000' AS DateTime2), N'Completed', 1, N'https://cdn.pnj.io/images/detailed/206/sp-gnddtddw010049-12.jpg', 3)
INSERT [dbo].[Requests] ([ID], [UserID], [Description], [CreateDate], [Status], [ProductID], [Image], [Type]) VALUES (90, N'US00002', N'Request for a custom ring.', CAST(N'2021-03-15T10:00:00.0000000' AS DateTime2), N'Pending', 1, N'https://cdn.pnj.io/images/detailed/206/sp-gnddtddw010049-1.jpg', 1)
INSERT [dbo].[Requests] ([ID], [UserID], [Description], [CreateDate], [Status], [ProductID], [Image], [Type]) VALUES (91, N'US00002', N'Request for a custom pendant.', CAST(N'2022-04-15T10:05:00.0000000' AS DateTime2), N'Processing', 2, N'https://cdn.pnj.io/images/detailed/206/sp-gnddtddw010049-2.jpg', 2)
INSERT [dbo].[Requests] ([ID], [UserID], [Description], [CreateDate], [Status], [ProductID], [Image], [Type]) VALUES (92, N'US00003', N'Request for a custom anklet.', CAST(N'2020-05-15T10:10:00.0000000' AS DateTime2), N'Completed', 3, N'https://cdn.pnj.io/images/detailed/206/sp-gnddtddw010049-3.jpg', 3)
INSERT [dbo].[Requests] ([ID], [UserID], [Description], [CreateDate], [Status], [ProductID], [Image], [Type]) VALUES (93, N'US00004', N'Request for a custom brooch.', CAST(N'2019-06-15T10:15:00.0000000' AS DateTime2), N'Pending', 4, N'https://cdn.pnj.io/images/detailed/206/sp-gnddtddw010049-4.jpg', 1)
INSERT [dbo].[Requests] ([ID], [UserID], [Description], [CreateDate], [Status], [ProductID], [Image], [Type]) VALUES (94, N'US00005', N'Request for a custom hairpin.', CAST(N'2021-07-15T10:20:00.0000000' AS DateTime2), N'Processing', 5, N'https://cdn.pnj.io/images/detailed/206/sp-gnddtddw010049-5.jpg', 2)
INSERT [dbo].[Requests] ([ID], [UserID], [Description], [CreateDate], [Status], [ProductID], [Image], [Type]) VALUES (95, N'US00006', N'Request for a custom toe ring.', CAST(N'2020-08-15T10:25:00.0000000' AS DateTime2), N'Completed', 2, N'https://cdn.pnj.io/images/detailed/206/sp-gnddtddw010049-6.jpg', 3)
INSERT [dbo].[Requests] ([ID], [UserID], [Description], [CreateDate], [Status], [ProductID], [Image], [Type]) VALUES (96, N'US00003', N'Request for a custom bracelet.', CAST(N'2021-09-15T10:30:00.0000000' AS DateTime2), N'Pending', 3, N'https://cdn.pnj.io/images/detailed/206/sp-gnddtddw010049-7.jpg', 1)
INSERT [dbo].[Requests] ([ID], [UserID], [Description], [CreateDate], [Status], [ProductID], [Image], [Type]) VALUES (97, N'US00002', N'Request for a custom necklace.', CAST(N'2022-10-15T10:35:00.0000000' AS DateTime2), N'Processing', 5, N'https://cdn.pnj.io/images/detailed/206/sp-gnddtddw010049-8.jpg', 2)
INSERT [dbo].[Requests] ([ID], [UserID], [Description], [CreateDate], [Status], [ProductID], [Image], [Type]) VALUES (98, N'US00003', N'Request for a custom earrings.', CAST(N'2023-11-15T10:40:00.0000000' AS DateTime2), N'Completed', 4, N'https://cdn.pnj.io/images/detailed/206/sp-gnddtddw010049-9.jpg', 3)
INSERT [dbo].[Requests] ([ID], [UserID], [Description], [CreateDate], [Status], [ProductID], [Image], [Type]) VALUES (99, N'US00004', N'Request for a custom brooch.', CAST(N'2023-12-15T10:45:00.0000000' AS DateTime2), N'Pending', 3, N'https://cdn.pnj.io/images/detailed/206/sp-gnddtddw010049-10.jpg', 1)
INSERT [dbo].[Requests] ([ID], [UserID], [Description], [CreateDate], [Status], [ProductID], [Image], [Type]) VALUES (100, N'US00005', N'Request for a custom ring.', CAST(N'2022-01-15T10:50:00.0000000' AS DateTime2), N'Processing', 2, N'https://cdn.pnj.io/images/detailed/206/sp-gnddtddw010049-11.jpg', 2)
INSERT [dbo].[Requests] ([ID], [UserID], [Description], [CreateDate], [Status], [ProductID], [Image], [Type]) VALUES (101, N'US00006', N'Request for a custom pendant.', CAST(N'2023-02-15T10:55:00.0000000' AS DateTime2), N'Completed', 1, N'https://cdn.pnj.io/images/detailed/206/sp-gnddtddw010049-12.jpg', 3)
INSERT [dbo].[Requests] ([ID], [UserID], [Description], [CreateDate], [Status], [ProductID], [Image], [Type]) VALUES (102, N'US00002', NULL, CAST(N'2024-07-16T13:49:59.3445896' AS DateTime2), N'Pending', NULL, NULL, 1)
INSERT [dbo].[Requests] ([ID], [UserID], [Description], [CreateDate], [Status], [ProductID], [Image], [Type]) VALUES (103, N'US00007', NULL, CAST(N'2024-07-16T16:29:33.3179507' AS DateTime2), N'Pending', NULL, NULL, 1)
INSERT [dbo].[Requests] ([ID], [UserID], [Description], [CreateDate], [Status], [ProductID], [Image], [Type]) VALUES (104, N'US00002', NULL, CAST(N'2024-07-16T16:32:59.7903369' AS DateTime2), N'Pending', NULL, NULL, 1)
INSERT [dbo].[Requests] ([ID], [UserID], [Description], [CreateDate], [Status], [ProductID], [Image], [Type]) VALUES (105, N'US00007', NULL, CAST(N'2024-07-16T16:35:45.3088129' AS DateTime2), N'Pending', NULL, NULL, 1)
INSERT [dbo].[Requests] ([ID], [UserID], [Description], [CreateDate], [Status], [ProductID], [Image], [Type]) VALUES (106, N'US00002', NULL, CAST(N'2024-07-16T16:38:36.9220223' AS DateTime2), N'Pending', NULL, NULL, 1)
INSERT [dbo].[Requests] ([ID], [UserID], [Description], [CreateDate], [Status], [ProductID], [Image], [Type]) VALUES (107, N'US00002', NULL, CAST(N'2024-07-16T16:48:55.1245636' AS DateTime2), N'Completed', NULL, NULL, 1)
INSERT [dbo].[Requests] ([ID], [UserID], [Description], [CreateDate], [Status], [ProductID], [Image], [Type]) VALUES (108, N'US00002', NULL, CAST(N'2024-07-23T15:22:33.3839369' AS DateTime2), N'Pending', NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[Requests] OFF
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (1, N'Admin')
INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (2, N'Manager')
INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (3, N'Sale')
INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (4, N'Product Manager')
INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (5, N'Designer')
INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (6, N'Customer')
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[Transactions] ON 

INSERT [dbo].[Transactions] ([TransactionID], [RequestID], [UserID], [Description], [CreatedDate]) VALUES (2, N'1', N'1', N'Payment for custom ring request', CAST(N'2024-07-09T15:51:38.8066667' AS DateTime2))
INSERT [dbo].[Transactions] ([TransactionID], [RequestID], [UserID], [Description], [CreatedDate]) VALUES (3, N'2', N'2', N'Payment for custom necklace request', CAST(N'2024-07-09T15:51:38.8066667' AS DateTime2))
INSERT [dbo].[Transactions] ([TransactionID], [RequestID], [UserID], [Description], [CreatedDate]) VALUES (4, N'3', N'3', N'Payment for custom bracelet request', CAST(N'2024-07-09T15:52:09.9100000' AS DateTime2))
INSERT [dbo].[Transactions] ([TransactionID], [RequestID], [UserID], [Description], [CreatedDate]) VALUES (5, N'4', N'4', N'Payment for custom earrings request', CAST(N'2024-07-09T15:52:09.9100000' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Transactions] OFF
GO
INSERT [dbo].[Users] ([UserID], [Username], [Password], [FullName], [PhoneNum], [Address], [RoleID], [CreateDate], [Status], [Email]) VALUES (N'1', N'user1', N'password1', N'John Doe', N'123456789', N'123 Elm Street', 1, CAST(N'2024-07-09T15:51:04.9600000' AS DateTime2), 1, N'john.doe@example.com')
INSERT [dbo].[Users] ([UserID], [Username], [Password], [FullName], [PhoneNum], [Address], [RoleID], [CreateDate], [Status], [Email]) VALUES (N'2', N'user2', N'password2', N'Jane Smith', N'987654321', N'456 Maple Avenue', 2, CAST(N'2024-07-09T15:51:04.9600000' AS DateTime2), 1, N'jane.smith@example.com')
INSERT [dbo].[Users] ([UserID], [Username], [Password], [FullName], [PhoneNum], [Address], [RoleID], [CreateDate], [Status], [Email]) VALUES (N'3', N'user3', N'password3', N'Alice Johnson', N'123123123', N'789 Birch Road', 1, CAST(N'2024-07-09T15:52:03.7933333' AS DateTime2), 1, N'alice.johnson@example.com')
INSERT [dbo].[Users] ([UserID], [Username], [Password], [FullName], [PhoneNum], [Address], [RoleID], [CreateDate], [Status], [Email]) VALUES (N'4', N'user4', N'password4', N'Bob Brown', N'321321321', N'1010 Cedar Lane', 2, NULL, 1, N'bob.brown@example.com')
INSERT [dbo].[Users] ([UserID], [Username], [Password], [FullName], [PhoneNum], [Address], [RoleID], [CreateDate], [Status], [Email]) VALUES (N'5', N'user5', N'password5', N'test', N'012345', N'1111 Pine Streets', 2, NULL, 1, N'charlie.green@gmail.com')
INSERT [dbo].[Users] ([UserID], [Username], [Password], [FullName], [PhoneNum], [Address], [RoleID], [CreateDate], [Status], [Email]) VALUES (N'US00002', N'admin', N'202cb962ac59075b', N'haha', N'0123456', N'hcm', 1, CAST(N'2024-07-15T23:25:15.0858101' AS DateTime2), 1, N'haivv')
INSERT [dbo].[Users] ([UserID], [Username], [Password], [FullName], [PhoneNum], [Address], [RoleID], [CreateDate], [Status], [Email]) VALUES (N'US00003', N'a', N'0cc175b9c0f1b6a8', N'a', N'a', N'a', 2, CAST(N'2024-07-16T02:15:51.5364343' AS DateTime2), 1, N'a')
INSERT [dbo].[Users] ([UserID], [Username], [Password], [FullName], [PhoneNum], [Address], [RoleID], [CreateDate], [Status], [Email]) VALUES (N'US00004', N'b', N'92eb5ffee6ae2fec', N'b', N'b', N'b', 2, CAST(N'2024-07-16T02:17:46.4372453' AS DateTime2), 1, N'b')
INSERT [dbo].[Users] ([UserID], [Username], [Password], [FullName], [PhoneNum], [Address], [RoleID], [CreateDate], [Status], [Email]) VALUES (N'US00005', N'c', N'4a8a08f09d37b737', N'c', N'c', N'c', 5, CAST(N'2024-07-16T02:17:58.1448933' AS DateTime2), 1, N'c')
INSERT [dbo].[Users] ([UserID], [Username], [Password], [FullName], [PhoneNum], [Address], [RoleID], [CreateDate], [Status], [Email]) VALUES (N'US00006', N'd', N'8277e0910d750195', N'd', N'd', N'd', 1, CAST(N'2024-07-16T02:18:12.9919358' AS DateTime2), 1, N'd')
INSERT [dbo].[Users] ([UserID], [Username], [Password], [FullName], [PhoneNum], [Address], [RoleID], [CreateDate], [Status], [Email]) VALUES (N'US00007', N'haivv', N'202cb962ac59075b', N'haivv', N'0123456', N'hcm', 6, CAST(N'2024-07-16T16:23:04.5809288' AS DateTime2), 0, N'abc@gmail.com')
INSERT [dbo].[Users] ([UserID], [Username], [Password], [FullName], [PhoneNum], [Address], [RoleID], [CreateDate], [Status], [Email]) VALUES (N'US00008', N'done', N'4e4d6c332b6fe62a', N'passlahaha', N'1234567890', N'1', 2, CAST(N'2024-09-11T18:49:46.7107153' AS DateTime2), 1, N'haha@gmail.com')
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT (N'') FOR [Email]
GO
ALTER TABLE [dbo].[Blogs]  WITH CHECK ADD  CONSTRAINT [FK_Blogs_Users_CreateBy] FOREIGN KEY([CreateBy])
REFERENCES [dbo].[Users] ([UserID])
GO
ALTER TABLE [dbo].[Blogs] CHECK CONSTRAINT [FK_Blogs_Users_CreateBy]
GO
ALTER TABLE [dbo].[Feedbacks]  WITH CHECK ADD  CONSTRAINT [FK_Feedbacks_Users_UserID] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([UserID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Feedbacks] CHECK CONSTRAINT [FK_Feedbacks_Users_UserID]
GO
ALTER TABLE [dbo].[Policies]  WITH CHECK ADD  CONSTRAINT [FK_Policies_Users_CreateBy] FOREIGN KEY([CreateBy])
REFERENCES [dbo].[Users] ([UserID])
GO
ALTER TABLE [dbo].[Policies] CHECK CONSTRAINT [FK_Policies_Users_CreateBy]
GO
ALTER TABLE [dbo].[ProductMaterials]  WITH CHECK ADD  CONSTRAINT [FK_ProductMaterials_Materials_MaterialID] FOREIGN KEY([MaterialID])
REFERENCES [dbo].[Materials] ([MaterialID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProductMaterials] CHECK CONSTRAINT [FK_ProductMaterials_Materials_MaterialID]
GO
ALTER TABLE [dbo].[ProductMaterials]  WITH CHECK ADD  CONSTRAINT [FK_ProductMaterials_Products_ProductID] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ProductID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProductMaterials] CHECK CONSTRAINT [FK_ProductMaterials_Products_ProductID]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories_CategoryID] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Categories] ([CatID])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categories_CategoryID]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Designs_DesignID] FOREIGN KEY([DesignID])
REFERENCES [dbo].[Designs] ([DesignID])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Designs_DesignID]
GO
ALTER TABLE [dbo].[Requests]  WITH CHECK ADD  CONSTRAINT [FK_Requests_Products_ProductID] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ProductID])
GO
ALTER TABLE [dbo].[Requests] CHECK CONSTRAINT [FK_Requests_Products_ProductID]
GO
ALTER TABLE [dbo].[Requests]  WITH CHECK ADD  CONSTRAINT [FK_Requests_Users_UserID] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([UserID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Requests] CHECK CONSTRAINT [FK_Requests_Users_UserID]
GO
ALTER TABLE [dbo].[Transactions]  WITH CHECK ADD  CONSTRAINT [FK_Transactions_Users_UserID] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([UserID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Transactions] CHECK CONSTRAINT [FK_Transactions_Users_UserID]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Role_RoleID] FOREIGN KEY([RoleID])
REFERENCES [dbo].[Role] ([RoleID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Role_RoleID]
GO
USE [master]
GO
ALTER DATABASE [JPOS_Project] SET  READ_WRITE 
GO
