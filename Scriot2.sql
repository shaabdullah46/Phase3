USE [master]
GO
/****** Object:  Database [Category]    Script Date: 01/09/2021 05:23:42 ******/
CREATE DATABASE [Category]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Category', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\Category.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Category_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\Category_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Category] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Category].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Category] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Category] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Category] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Category] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Category] SET ARITHABORT OFF 
GO
ALTER DATABASE [Category] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Category] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Category] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Category] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Category] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Category] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Category] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Category] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Category] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Category] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Category] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Category] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Category] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Category] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Category] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Category] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Category] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Category] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Category] SET  MULTI_USER 
GO
ALTER DATABASE [Category] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Category] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Category] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Category] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Category] SET DELAYED_DURABILITY = DISABLED 
GO
USE [Category]
GO
/****** Object:  Table [dbo].[CategoryTB]    Script Date: 01/09/2021 05:23:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CategoryTB](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NULL,
	[company] [varchar](50) NULL,
	[price] [int] NULL,
 CONSTRAINT [PK_CategoryTB] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[CategoryTB] ON 

INSERT [dbo].[CategoryTB] ([CategoryID], [name], [company], [price]) VALUES (2, N'HP Victus 16-e0003nx Gaming Laptop', N'HP', 5900)
INSERT [dbo].[CategoryTB] ([CategoryID], [name], [company], [price]) VALUES (3, N'Dell Vostro 14 5401 Laptop', N'Dell', 2999)
SET IDENTITY_INSERT [dbo].[CategoryTB] OFF
USE [master]
GO
ALTER DATABASE [Category] SET  READ_WRITE 
GO
