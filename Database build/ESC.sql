USE [master]
GO
/****** Object:  Database [ESC]    Script Date: 1/17/2016 2:57:53 PM ******/
CREATE DATABASE [ESC]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ESC', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\ESC.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'ESC_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\ESC_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [ESC] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ESC].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ESC] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ESC] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ESC] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ESC] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ESC] SET ARITHABORT OFF 
GO
ALTER DATABASE [ESC] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ESC] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ESC] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ESC] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ESC] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ESC] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ESC] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ESC] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ESC] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ESC] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ESC] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ESC] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ESC] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ESC] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ESC] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ESC] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ESC] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ESC] SET RECOVERY FULL 
GO
ALTER DATABASE [ESC] SET  MULTI_USER 
GO
ALTER DATABASE [ESC] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ESC] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ESC] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ESC] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [ESC] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'ESC', N'ON'
GO
USE [ESC]
GO
/****** Object:  Table [dbo].[Administrator]    Script Date: 1/17/2016 2:57:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Administrator](
	[Username] [varchar](50) NOT NULL,
	[Password] [varchar](1000) NULL,
	[FirstName] [varchar](50) NULL,
	[LastName] [varchar](50) NULL,
	[Position] [varchar](50) NULL,
	[EmailAddress] [varchar](50) NULL,
	[Picture] [image] NULL,
 CONSTRAINT [PK_Administrator] PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Announcements]    Script Date: 1/17/2016 2:57:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Announcements](
	[id] [varchar](10) NOT NULL,
	[title] [varchar](max) NULL,
	[body] [varchar](max) NULL,
 CONSTRAINT [PK_Announcements] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[StudentEntries]    Script Date: 1/17/2016 2:57:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[StudentEntries](
	[LastName] [varchar](50) NULL,
	[FirstName] [varchar](50) NULL,
	[MiddleName] [varchar](50) NULL,
	[YearLevelAndSection] [varchar](50) NULL,
	[StudentNumber] [varchar](50) NULL,
	[EmailAddress] [varchar](50) NULL,
	[Category] [varchar](50) NULL,
	[ConcernsAndComplaints] [varchar](8000) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Students]    Script Date: 1/17/2016 2:57:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Students](
	[Name] [varchar](50) NULL,
	[StudentNumber] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Students] PRIMARY KEY CLUSTERED 
(
	[StudentNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[StudentEntries]  WITH CHECK ADD  CONSTRAINT [FK_StudentEntries_Students] FOREIGN KEY([StudentNumber])
REFERENCES [dbo].[Students] ([StudentNumber])
GO
ALTER TABLE [dbo].[StudentEntries] CHECK CONSTRAINT [FK_StudentEntries_Students]
GO
USE [master]
GO
ALTER DATABASE [ESC] SET  READ_WRITE 
GO
