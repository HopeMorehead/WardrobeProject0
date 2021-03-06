USE [master]
GO
/****** Object:  Database [WardrobeProject1]    Script Date: 5/3/2017 2:42:22 PM ******/
CREATE DATABASE [WardrobeProject1]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'WardrobeProject1', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\WardrobeProject1.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'WardrobeProject1_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\WardrobeProject1_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [WardrobeProject1] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [WardrobeProject1].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [WardrobeProject1] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [WardrobeProject1] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [WardrobeProject1] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [WardrobeProject1] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [WardrobeProject1] SET ARITHABORT OFF 
GO
ALTER DATABASE [WardrobeProject1] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [WardrobeProject1] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [WardrobeProject1] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [WardrobeProject1] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [WardrobeProject1] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [WardrobeProject1] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [WardrobeProject1] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [WardrobeProject1] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [WardrobeProject1] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [WardrobeProject1] SET  DISABLE_BROKER 
GO
ALTER DATABASE [WardrobeProject1] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [WardrobeProject1] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [WardrobeProject1] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [WardrobeProject1] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [WardrobeProject1] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [WardrobeProject1] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [WardrobeProject1] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [WardrobeProject1] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [WardrobeProject1] SET  MULTI_USER 
GO
ALTER DATABASE [WardrobeProject1] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [WardrobeProject1] SET DB_CHAINING OFF 
GO
ALTER DATABASE [WardrobeProject1] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [WardrobeProject1] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [WardrobeProject1] SET DELAYED_DURABILITY = DISABLED 
GO
USE [WardrobeProject1]
GO
/****** Object:  Table [dbo].[Accessories]    Script Date: 5/3/2017 2:42:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accessories](
	[AccessoriesID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Photo] [nvarchar](50) NULL,
	[Type] [nvarchar](max) NULL,
	[Color] [nvarchar](max) NULL,
	[Season] [nvarchar](max) NULL,
	[Occasion] [nvarchar](max) NULL,
	[TopsID] [int] NOT NULL,
	[BottomsID] [int] NOT NULL,
	[ShoesID] [int] NOT NULL,
 CONSTRAINT [PK_Accessories] PRIMARY KEY CLUSTERED 
(
	[AccessoriesID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Bottoms]    Script Date: 5/3/2017 2:42:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bottoms](
	[BottomsID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Photo] [nvarchar](50) NULL,
	[Type] [nvarchar](max) NULL,
	[Color] [nvarchar](max) NULL,
	[Season] [nvarchar](max) NULL,
	[Occasion] [nvarchar](max) NULL,
 CONSTRAINT [PK_Bottoms] PRIMARY KEY CLUSTERED 
(
	[BottomsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Shoes]    Script Date: 5/3/2017 2:42:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shoes](
	[ShoesID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Photo] [nvarchar](50) NULL,
	[Type] [nvarchar](max) NULL,
	[Color] [nvarchar](max) NULL,
	[Season] [nvarchar](max) NULL,
	[Occasion] [nvarchar](max) NULL,
 CONSTRAINT [PK_Shoes] PRIMARY KEY CLUSTERED 
(
	[ShoesID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tops]    Script Date: 5/3/2017 2:42:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tops](
	[TopsID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Photo] [nvarchar](50) NULL,
	[Type] [nvarchar](max) NULL,
	[Color] [nvarchar](max) NULL,
	[Season] [nvarchar](max) NULL,
	[occasion] [nvarchar](max) NULL,
 CONSTRAINT [PK_Tops] PRIMARY KEY CLUSTERED 
(
	[TopsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Accessories] ON 

INSERT [dbo].[Accessories] ([AccessoriesID], [Name], [Photo], [Type], [Color], [Season], [Occasion], [TopsID], [BottomsID], [ShoesID]) VALUES (1, N'Lace Sock', N'\Content\images\indielace.jpg', N'Socks', N'White', N'Summer', N'Everyday', 2, 1, 1)
SET IDENTITY_INSERT [dbo].[Accessories] OFF
SET IDENTITY_INSERT [dbo].[Bottoms] ON 

INSERT [dbo].[Bottoms] ([BottomsID], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (1, N'Kalvin Klien', N'\Content\images\harempants.jpg', N'Harem Pants', N'White', N'Fall', N'Everyday')
SET IDENTITY_INSERT [dbo].[Bottoms] OFF
SET IDENTITY_INSERT [dbo].[Shoes] ON 

INSERT [dbo].[Shoes] ([ShoesID], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (1, N'Lace Shoes', N'\Content\images\indieshoes2.png', N'High Heels', N'White', N'Summer', N'Night Out')
SET IDENTITY_INSERT [dbo].[Shoes] OFF
SET IDENTITY_INSERT [dbo].[Tops] ON 

INSERT [dbo].[Tops] ([TopsID], [Name], [Photo], [Type], [Color], [Season], [occasion]) VALUES (2, N'Nordstrom', N'/Content/images/top1.jpg', N' Cotton Shirt', N'White', N'Fall', N'Everyday')
SET IDENTITY_INSERT [dbo].[Tops] OFF
ALTER TABLE [dbo].[Accessories]  WITH CHECK ADD  CONSTRAINT [FK_Accessories_Bottoms] FOREIGN KEY([BottomsID])
REFERENCES [dbo].[Bottoms] ([BottomsID])
GO
ALTER TABLE [dbo].[Accessories] CHECK CONSTRAINT [FK_Accessories_Bottoms]
GO
ALTER TABLE [dbo].[Accessories]  WITH CHECK ADD  CONSTRAINT [FK_Accessories_Shoes] FOREIGN KEY([ShoesID])
REFERENCES [dbo].[Shoes] ([ShoesID])
GO
ALTER TABLE [dbo].[Accessories] CHECK CONSTRAINT [FK_Accessories_Shoes]
GO
ALTER TABLE [dbo].[Accessories]  WITH CHECK ADD  CONSTRAINT [FK_Accessories_Tops] FOREIGN KEY([TopsID])
REFERENCES [dbo].[Tops] ([TopsID])
GO
ALTER TABLE [dbo].[Accessories] CHECK CONSTRAINT [FK_Accessories_Tops]
GO
USE [master]
GO
ALTER DATABASE [WardrobeProject1] SET  READ_WRITE 
GO
