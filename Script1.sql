USE [master]
GO
/****** Object:  Database [LoginDataBase]    Script Date: 01/09/2021 05:21:19 ******/
CREATE DATABASE [LoginDataBase]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'LoginDataBase', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\LoginDataBase.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'LoginDataBase_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\LoginDataBase_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [LoginDataBase] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [LoginDataBase].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [LoginDataBase] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [LoginDataBase] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [LoginDataBase] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [LoginDataBase] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [LoginDataBase] SET ARITHABORT OFF 
GO
ALTER DATABASE [LoginDataBase] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [LoginDataBase] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [LoginDataBase] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [LoginDataBase] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [LoginDataBase] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [LoginDataBase] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [LoginDataBase] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [LoginDataBase] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [LoginDataBase] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [LoginDataBase] SET  DISABLE_BROKER 
GO
ALTER DATABASE [LoginDataBase] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [LoginDataBase] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [LoginDataBase] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [LoginDataBase] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [LoginDataBase] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [LoginDataBase] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [LoginDataBase] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [LoginDataBase] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [LoginDataBase] SET  MULTI_USER 
GO
ALTER DATABASE [LoginDataBase] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [LoginDataBase] SET DB_CHAINING OFF 
GO
ALTER DATABASE [LoginDataBase] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [LoginDataBase] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [LoginDataBase] SET DELAYED_DURABILITY = DISABLED 
GO
USE [LoginDataBase]
GO
/****** Object:  Table [dbo].[User]    Script Date: 01/09/2021 05:21:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[User](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](50) NULL,
	[UserPassword] [varchar](50) NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([UserID], [UserName], [UserPassword]) VALUES (1, N'shahad', N'shahad1')
SET IDENTITY_INSERT [dbo].[User] OFF
USE [master]
GO
ALTER DATABASE [LoginDataBase] SET  READ_WRITE 
GO
