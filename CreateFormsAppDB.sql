USE [master]
GO

/****** Object:  Database [RequestFormSQL]    Script Date: 11/15/2016 7:03:47 PM ******/
CREATE DATABASE [RequestFormSQL]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'RequestFormSQL', FILENAME = 'C:\DB\RequestFormSQL.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'RequestFormSQL_log', FILENAME = 'C:\DB\RequestFormSQL_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [RequestFormSQL] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [RequestFormSQL].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [RequestFormSQL] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [RequestFormSQL] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [RequestFormSQL] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [RequestFormSQL] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [RequestFormSQL] SET ARITHABORT OFF 
GO
ALTER DATABASE [RequestFormSQL] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [RequestFormSQL] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [RequestFormSQL] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [RequestFormSQL] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [RequestFormSQL] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [RequestFormSQL] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [RequestFormSQL] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [RequestFormSQL] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [RequestFormSQL] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [RequestFormSQL] SET  DISABLE_BROKER 
GO
ALTER DATABASE [RequestFormSQL] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [RequestFormSQL] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [RequestFormSQL] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [RequestFormSQL] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [RequestFormSQL] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [RequestFormSQL] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [RequestFormSQL] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [RequestFormSQL] SET RECOVERY FULL 
GO
ALTER DATABASE [RequestFormSQL] SET  MULTI_USER 
GO
ALTER DATABASE [RequestFormSQL] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [RequestFormSQL] SET DB_CHAINING OFF 
GO
ALTER DATABASE [RequestFormSQL] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [RequestFormSQL] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [RequestFormSQL] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'RequestFormSQL', N'ON'
GO
ALTER DATABASE [RequestFormSQL] SET QUERY_STORE = OFF
GO
USE [RequestFormSQL]
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO

USE [RequestFormSQL]

/****** Object:  Table [dbo].[FormApp]    Script Date: 11/15/2016 7:03:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FormApp](
	[Title_id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nchar](100) NULL,
	[Client] [nchar](10) NULL,
	[ClientPriority] [int] NULL,
	[TargetDate] [date] NULL,
	[ProductArea] [nchar](100) NULL,
 CONSTRAINT [PK_RequestFormApp] PRIMARY KEY CLUSTERED 
(
	[Title_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
USE [master]
GO
ALTER DATABASE [RequestFormSQL] SET  READ_WRITE 
GO

USE [RequestFormSQL]
GO

--add records
insert into FormApp (Description, Client, ClientPriority, TargetDate, ProductArea) values ('Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. ', 'Innojam', 6, '1/7/2016', 'Ronstring');
insert into FormApp (Description, Client, ClientPriority, TargetDate, ProductArea) values ('Duis aliquam convallis nunc. Proin at turpis a pede.', 'Rhynyx', 7, '12/7/2015', 'Cookley');
insert into FormApp (Description, Client, ClientPriority, TargetDate, ProductArea) values ('Fusce posuere felis sed lacus.', 'Reallinks', 3, '12/14/2015', 'Hatity');
insert into FormApp (Description, Client, ClientPriority, TargetDate, ProductArea) values ('Maecenas tristique, est et tempus semper, est quam', 'Rhyzio', 7, '1/9/2016', 'Bamity');
insert into FormApp (Description, Client, ClientPriority, TargetDate, ProductArea) values ('Nullam porttitor lacus at turpis.', 'Wikizz', 5, '1/24/2016', 'Voyatouch');
insert into FormApp (Description, Client, ClientPriority, TargetDate, ProductArea) values ('Integer tincidunt ante vel ipsum.', 'Lazz', 6, '12/14/2015', 'Holdlamis');
insert into FormApp (Description, Client, ClientPriority, TargetDate, ProductArea) values ('Nullam porttitor lacus at turpis. Donec posuere.', 'Wikivu', 6, '12/8/2015', 'Sonair');
insert into FormApp (Description, Client, ClientPriority, TargetDate, ProductArea) values ('Quisque porta volutpat erat.', 'Roombo', 9, '11/21/2015', 'Flowdesk');
insert into FormApp (Description, Client, ClientPriority, TargetDate, ProductArea) values ('In congue. Etiam justo.', 'Photolist', 9, '1/10/2016', 'Gembucket');
insert into FormApp (Description, Client, ClientPriority, TargetDate, ProductArea) values ('Cras non velit nec nisi vulputate nonummy.', 'Dabfeed', 4, '12/4/2015', 'Vagram');
insert into FormApp (Description, Client, ClientPriority, TargetDate, ProductArea) values ('Phasellus sit amet erat. Nulla tempus.', 'Browsetype', 7, '1/18/2016', 'Tampflex');
insert into FormApp (Description, Client, ClientPriority, TargetDate, ProductArea) values ('Proin interdum mauris non ligula pellentesque ultrices.', 'Rooxo', 6, '12/27/2015', 'Daltfresh');
insert into FormApp (Description, Client, ClientPriority, TargetDate, ProductArea) values ('Proin leo odio, porttitor id, consequatl enim sit amet.', 'Zoovu', 8, '12/11/2015', 'Greenlam');
insert into FormApp (Description, Client, ClientPriority, TargetDate, ProductArea) values ('Duis bibendum, felis sed interdum venenatis, turpis congue elementum.', 'Mybuzz', 3, '11/19/2015', 'Otcom');
insert into FormApp (Description, Client, ClientPriority, TargetDate, ProductArea) values ('Donec diam neque, vestibulum eget, v non, pretium quis, lectus.', 'Realmix', 10, '1/6/2016', 'Stronghold');
insert into FormApp (Description, Client, ClientPriority, TargetDate, ProductArea) values ('Integer tincidunt ante vel ipsum. Praesent du.', 'Twimbo', 10, '12/17/2015', 'Toughjoyfax');
insert into FormApp (Description, Client, ClientPriority, TargetDate, ProductArea) values ('Curabitur gravida nisi at nibh., lorem.', 'Browseblab', 6, '1/25/2016', 'Voltsillam');
insert into FormApp (Description, Client, ClientPriority, TargetDate, ProductArea) values ('Praesent id massaamus metus arcu, nisl.', 'Centizu', 3, '1/8/2016', 'Sonair');
insert into FormApp (Description, Client, ClientPriority, TargetDate, ProductArea) values ('Proin interdum mauris non ligula pellentesque dimentum.', 'Flipstorm', 3, '1/22/2016', 'Daltfresh');
insert into FormApp (Description, Client, ClientPriority, TargetDate, ProductArea) values ('Praesent id massa id nisl venenatis lonsectetuer adipiscing elit.', 'Gigabox', 6, '12/21/2015', 'Subin');
insert into FormApp (Description, Client, ClientPriority, TargetDate, ProductArea) values ('In hac habitasse platea dictumst. sapien placerat ante. Nulla justo.', 'Jarsphere', 8, '1/11/2016', 'Andalax');

