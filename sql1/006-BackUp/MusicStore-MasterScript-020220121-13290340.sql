USE [master]
GO
/****** Object:  Database [MusicStore]    Script Date: 21.01.2022 13:35:05 ******/
CREATE DATABASE [MusicStore]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MusicStore', FILENAME = N'D:\SQL Kurs\050-Projekt\db_MusicStore_Projekt.mdf' , SIZE = 65536KB , MAXSIZE = UNLIMITED, FILEGROWTH = 10%)
 LOG ON 
( NAME = N'MusicStore_log', FILENAME = N'D:\SQL Kurs\050-Projekt\db_MusicStore_Projekt_log.ldf' , SIZE = 65536KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [MusicStore] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MusicStore].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MusicStore] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MusicStore] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MusicStore] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MusicStore] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MusicStore] SET ARITHABORT OFF 
GO
ALTER DATABASE [MusicStore] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [MusicStore] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MusicStore] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MusicStore] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MusicStore] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MusicStore] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MusicStore] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MusicStore] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MusicStore] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MusicStore] SET  DISABLE_BROKER 
GO
ALTER DATABASE [MusicStore] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MusicStore] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MusicStore] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MusicStore] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MusicStore] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MusicStore] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [MusicStore] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MusicStore] SET RECOVERY FULL 
GO
ALTER DATABASE [MusicStore] SET  MULTI_USER 
GO
ALTER DATABASE [MusicStore] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MusicStore] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MusicStore] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MusicStore] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [MusicStore] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [MusicStore] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [MusicStore] SET QUERY_STORE = OFF
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [Reader]    Script Date: 21.01.2022 13:35:05 ******/
CREATE LOGIN [Reader] WITH PASSWORD=N'iG/VCSUjgt8MRfvbNXIyNY4RYO9Ra/2WBRZyfFXIIwk=', DEFAULT_DATABASE=[FirmaUebung], DEFAULT_LANGUAGE=[Deutsch], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [Reader] DISABLE
GO
/****** Object:  Login [NT-AUTORITÄT\SYSTEM]    Script Date: 21.01.2022 13:35:05 ******/
CREATE LOGIN [NT-AUTORITÄT\SYSTEM] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[Deutsch]
GO
/****** Object:  Login [NT SERVICE\Winmgmt]    Script Date: 21.01.2022 13:35:05 ******/
CREATE LOGIN [NT SERVICE\Winmgmt] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[Deutsch]
GO
/****** Object:  Login [NT SERVICE\SQLWriter]    Script Date: 21.01.2022 13:35:05 ******/
CREATE LOGIN [NT SERVICE\SQLWriter] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[Deutsch]
GO
/****** Object:  Login [NT SERVICE\SQLSERVERAGENT]    Script Date: 21.01.2022 13:35:05 ******/
CREATE LOGIN [NT SERVICE\SQLSERVERAGENT] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[Deutsch]
GO
/****** Object:  Login [NT Service\MSSQLSERVER]    Script Date: 21.01.2022 13:35:05 ******/
CREATE LOGIN [NT Service\MSSQLSERVER] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[Deutsch]
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [MusicStoreSchreibrechten]    Script Date: 21.01.2022 13:35:05 ******/
CREATE LOGIN [MusicStoreSchreibrechten] WITH PASSWORD=N'RKJ56rIRek1tLrqApmCt3pp6NfdDmcAx0z5O+NM6tD4=', DEFAULT_DATABASE=[MusicStore], DEFAULT_LANGUAGE=[Deutsch], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [MusicStoreSchreibrechten] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [MusicStoreLeserRechte]    Script Date: 21.01.2022 13:35:05 ******/
CREATE LOGIN [MusicStoreLeserRechte] WITH PASSWORD=N'1DhfVXYezKJYIIpdZGZ9NbFVA7sRpEU1wZvuwulHwwk=', DEFAULT_DATABASE=[MusicStore], DEFAULT_LANGUAGE=[Deutsch], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [MusicStoreLeserRechte] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [FirmaWriter]    Script Date: 21.01.2022 13:35:05 ******/
CREATE LOGIN [FirmaWriter] WITH PASSWORD=N'KNJ/yUFuHlFKAatH+IViIOUB0mmhsuqu9/KGx2k2iFw=', DEFAULT_DATABASE=[FirmaUebung], DEFAULT_LANGUAGE=[Deutsch], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [FirmaWriter] DISABLE
GO
/****** Object:  Login [\Jeder]    Script Date: 21.01.2022 13:35:05 ******/
CREATE LOGIN [\Jeder] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[Deutsch]
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [##MS_PolicyTsqlExecutionLogin##]    Script Date: 21.01.2022 13:35:05 ******/
CREATE LOGIN [##MS_PolicyTsqlExecutionLogin##] WITH PASSWORD=N'1pIh2tfqEdyJTQ4DUYEX5ENDsCFd/KANwa/IRseteCw=', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [##MS_PolicyTsqlExecutionLogin##] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [##MS_PolicyEventProcessingLogin##]    Script Date: 21.01.2022 13:35:05 ******/
CREATE LOGIN [##MS_PolicyEventProcessingLogin##] WITH PASSWORD=N'dOxnhJd8RH9P6uJ/Ct/OXm/XUTVCKaEnjhTc4X0h9oE=', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[Deutsch], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [##MS_PolicyEventProcessingLogin##] DISABLE
GO
ALTER AUTHORIZATION ON DATABASE::[MusicStore] TO [MZ-RPC-1x1\Alfa]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [NT SERVICE\Winmgmt]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [NT SERVICE\SQLWriter]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [NT SERVICE\SQLSERVERAGENT]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [NT Service\MSSQLSERVER]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [\Jeder]
GO
USE [MusicStore]
GO
/****** Object:  User [Schreiber]    Script Date: 21.01.2022 13:35:05 ******/
CREATE USER [Schreiber] FOR LOGIN [MusicStoreSchreibrechten] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [Leser]    Script Date: 21.01.2022 13:35:05 ******/
CREATE USER [Leser] FOR LOGIN [MusicStoreLeserRechte] WITH DEFAULT_SCHEMA=[dbo]
GO
GRANT CONNECT TO [Leser] AS [dbo]
GO
GRANT VIEW ANY COLUMN ENCRYPTION KEY DEFINITION TO [public] AS [dbo]
GO
GRANT VIEW ANY COLUMN MASTER KEY DEFINITION TO [public] AS [dbo]
GO
GRANT CONNECT TO [Schreiber] AS [dbo]
GO
/****** Object:  UserDefinedFunction [dbo].[sf_InstrumentenVerfuegbarkeit_ID]    Script Date: 21.01.2022 13:35:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		Gruppe D
-- Create date: 18.01.2022
-- Description:	Die LagerstatusID der Instrumenten wird angezeigt
-- =============================================
CREATE     FUNCTION [dbo].[sf_InstrumentenVerfuegbarkeit_ID]
(
	@InstrumentenID int

)
RETURNS int
AS
BEGIN
	
	DECLARE @Lagerstatus int;


	SET @Lagerstatus = (SELECT LagerstatusID 
						FROM tb_Instrumente
						WHERE InstrumentenID = @InstrumentenID);


	RETURN @Lagerstatus;

END
GO
ALTER AUTHORIZATION ON [dbo].[sf_InstrumentenVerfuegbarkeit_ID] TO  SCHEMA OWNER 
GO
/****** Object:  UserDefinedFunction [dbo].[sf_InstrumentenVerfuegbarkeit_Status]    Script Date: 21.01.2022 13:35:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Gruppe D
-- Create date: 18.01.2022
-- Description:	Der Lagerstatus der Instrumenten wird angezeigt
-- =============================================
CREATE      FUNCTION [dbo].[sf_InstrumentenVerfuegbarkeit_Status]
(
	@InstrumentenID int

)
RETURNS varchar(20)
AS
BEGIN
	
	DECLARE @Lagerstatus varchar(20);


	SET @Lagerstatus = (SELECT Status 
						FROM tb_Instrumente RIGHT JOIN
						tb_Lagerstatus ON
						tb_Instrumente.LagerstatusID = tb_Lagerstatus.LagerstatusID
						WHERE InstrumentenID = @InstrumentenID);


	RETURN @Lagerstatus;

END
GO
ALTER AUTHORIZATION ON [dbo].[sf_InstrumentenVerfuegbarkeit_Status] TO  SCHEMA OWNER 
GO
/****** Object:  UserDefinedFunction [dbo].[sf_MusInstr_Gesamtpreis_Pro_Bestellung]    Script Date: 21.01.2022 13:35:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Gruppe D
-- Create date: 19.01.2022
-- Description: Gesamtpreis der Instrumenten pro Bestellung
-- =============================================
CREATE   FUNCTION [dbo].[sf_MusInstr_Gesamtpreis_Pro_Bestellung] 
(
	@BestellungID int
)
RETURNS MONEY
AS
BEGIN
	
	DECLARE @Gesamtpreis_Instrumente MONEY;

-- Der Preis der Instrumente wird mit der bestellten Anzahl multipliziert  

	SET @Gesamtpreis_Instrumente = 
	(
		SELECT SUM(tb_Instrumente.VK * tb_InstrumentenVerkauf.Anzahl)
		FROM tb_Instrumente 
			INNER JOIN tb_InstrumentenVerkauf 
				ON tb_Instrumente.InstrumentenID = tb_InstrumentenVerkauf.InstrumentenID
		WHERE (tb_InstrumentenVerkauf.BestellungID = @BestellungID)
	)
/*Um nachher mehrere Preise aller Artikel zusammenzurechnen ist es wichtig den Wert auf 0 zu setzen,
falls kein Instrument bestellt wurde*/
	IF (@Gesamtpreis_Instrumente IS NULL)
		SET @Gesamtpreis_Instrumente = 0;

	RETURN @Gesamtpreis_Instrumente;

END
GO
ALTER AUTHORIZATION ON [dbo].[sf_MusInstr_Gesamtpreis_Pro_Bestellung] TO  SCHEMA OWNER 
GO
/****** Object:  UserDefinedFunction [dbo].[sf_MusNoten_Gesamtpreis_Pro_Bestellung]    Script Date: 21.01.2022 13:35:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Gruppe D
-- Create date: 19.01.2022
-- Description: Gesamtpreis der Noten pro Bestellung
-- =============================================
CREATE   FUNCTION [dbo].[sf_MusNoten_Gesamtpreis_Pro_Bestellung] 
(
	@BestellungID int
)
RETURNS MONEY
AS
BEGIN
	
	DECLARE @Gesamtpreis_Noten MONEY;

-- Der Preis der Noten wird mit der bestellten Anzahl multipliziert  
	SET @Gesamtpreis_Noten = 
	(
		SELECT SUM(tb_Noten.VK * tb_NotenVerkauf.Anzahl)
		FROM tb_Noten 
			INNER JOIN tb_NotenVerkauf 
				ON tb_Noten.NotenID = tb_NotenVerkauf.NotenID
		WHERE (tb_NotenVerkauf.NotenID = @BestellungID)
	)

-- Um nachher mehrere Preise aller Artikel zusammenzurechnen ist es wichtig den Wert auf 0 zu setzen falls keine Noten bestellt wurden
	IF (@Gesamtpreis_Noten IS NULL)
		SET @Gesamtpreis_Noten = 0;

	RETURN @Gesamtpreis_Noten;

END
GO
ALTER AUTHORIZATION ON [dbo].[sf_MusNoten_Gesamtpreis_Pro_Bestellung] TO  SCHEMA OWNER 
GO
/****** Object:  UserDefinedFunction [dbo].[sf_MusZubehoer_Gesamtpreis_Pro_Bestellung]    Script Date: 21.01.2022 13:35:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Gruppe D
-- Create date: 19.01.2022
-- Description: Gesamtpreis der Zubehoer pro Bestellung
-- =============================================
CREATE   FUNCTION [dbo].[sf_MusZubehoer_Gesamtpreis_Pro_Bestellung] 
(
	@BestellungID int
)
RETURNS MONEY
AS
BEGIN
	
	DECLARE @Gesamtpreis_Zubehoer MONEY;

-- Der Preis des Zubehoers wird mit der bestellten Anzahl multipliziert  
	SET @Gesamtpreis_Zubehoer = 
	(
		SELECT SUM(tb_Zubehoer.VK * tb_ZubehoerVerkauf.Anzahl)
		FROM tb_Zubehoer 
			INNER JOIN tb_ZubehoerVerkauf 
				ON tb_Zubehoer.ZubehoerID = tb_ZubehoerVerkauf.ZubehoerID
		WHERE (tb_ZubehoerVerkauf.ZubehoerID = @BestellungID)
	)

/*Um nachher mehrere Preise aller Artikel zusammenzurechnen ist es wichtig den Wert auf 0 zu setzen,
falls kein Zubehoer bestellt wurde*/
	IF (@Gesamtpreis_Zubehoer IS NULL)
		SET @Gesamtpreis_Zubehoer = 0;

	RETURN @Gesamtpreis_Zubehoer;

END
GO
ALTER AUTHORIZATION ON [dbo].[sf_MusZubehoer_Gesamtpreis_Pro_Bestellung] TO  SCHEMA OWNER 
GO
/****** Object:  UserDefinedFunction [dbo].[sf_Zeitstempel]    Script Date: 21.01.2022 13:35:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Gruppe D
-- Create date: 18.01.2022
-- Description:	Die Funktion generiert einen Zeitstempel im Format wie '18-01-2022 19:45:43'
-- =============================================
CREATE    FUNCTION [dbo].[sf_Zeitstempel] 
(
)
RETURNS char(18)
AS
BEGIN

	RETURN FORMAT(GETDATE(), 'yyyyyMMdd-HHmmssfff');

END
GO
ALTER AUTHORIZATION ON [dbo].[sf_Zeitstempel] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[tb_Kunden]    Script Date: 21.01.2022 13:35:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Kunden](
	[KundenID] [int] IDENTITY(1,1) NOT NULL,
	[Nachname] [nvarchar](50) NOT NULL,
	[Vorname] [nvarchar](50) NOT NULL,
	[Ort] [nvarchar](50) NOT NULL,
	[PLZ] [nchar](5) NOT NULL,
	[Strasse] [nvarchar](50) NOT NULL,
	[HausNr] [nvarchar](10) NOT NULL,
	[Tel] [nvarchar](50) NULL,
	[Mobil] [nvarchar](50) NULL,
	[Mail] [nvarchar](50) NULL,
	[GebDat] [date] NULL,
	[KundenstatusID] [int] NOT NULL,
	[Kommentar] [nvarchar](max) NULL,
 CONSTRAINT [PK_tb_Kunden] PRIMARY KEY CLUSTERED 
(
	[KundenID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[tb_Kunden] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[tb_Kunden] ([KundenID]) TO [Leser] AS [dbo]
GO
GRANT SELECT ON [dbo].[tb_Kunden] ([Ort]) TO [Leser] AS [dbo]
GO
GRANT SELECT ON [dbo].[tb_Kunden] ([KundenstatusID]) TO [Leser] AS [dbo]
GO
GRANT SELECT ON [dbo].[tb_Kunden] ([Kommentar]) TO [Leser] AS [dbo]
GO
/****** Object:  Table [dbo].[tb_Bestellung]    Script Date: 21.01.2022 13:35:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Bestellung](
	[BestellungID] [int] IDENTITY(1,1) NOT NULL,
	[KundenID] [int] NOT NULL,
	[BestellDatum] [date] NOT NULL,
 CONSTRAINT [PK_tb_Bestellung] PRIMARY KEY CLUSTERED 
(
	[BestellungID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[tb_Bestellung] TO  SCHEMA OWNER 
GO
GRANT INSERT ON [dbo].[tb_Bestellung] TO [Schreiber] AS [dbo]
GO
GRANT SELECT ON [dbo].[tb_Bestellung] TO [Schreiber] AS [dbo]
GO
GRANT UPDATE ON [dbo].[tb_Bestellung] TO [Schreiber] AS [dbo]
GO
/****** Object:  Table [dbo].[tb_Hersteller]    Script Date: 21.01.2022 13:35:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Hersteller](
	[HerstellerID] [int] IDENTITY(1,1) NOT NULL,
	[Hersteller] [nvarchar](50) NOT NULL,
	[Ansprechpartner] [nvarchar](50) NOT NULL,
	[Ort] [nvarchar](50) NOT NULL,
	[PLZ] [nchar](5) NOT NULL,
	[Strasse] [nvarchar](50) NOT NULL,
	[Hausnr] [nvarchar](10) NOT NULL,
	[Tel] [nvarchar](50) NULL,
	[Mobil] [nvarchar](50) NULL,
	[Mail] [nvarchar](50) NULL,
 CONSTRAINT [PK_tb_Hersteller] PRIMARY KEY CLUSTERED 
(
	[HerstellerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[tb_Hersteller] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[tb_Hersteller] ([HerstellerID]) TO [Leser] AS [dbo]
GO
GRANT SELECT ON [dbo].[tb_Hersteller] ([Ort]) TO [Leser] AS [dbo]
GO
/****** Object:  Table [dbo].[tb_Instrumente]    Script Date: 21.01.2022 13:35:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Instrumente](
	[InstrumentenID] [int] IDENTITY(1,1) NOT NULL,
	[Bezeichnung] [nvarchar](70) NOT NULL,
	[Gewicht] [int] NULL,
	[HerstellerID] [int] NOT NULL,
	[EK] [money] NOT NULL,
	[MWSt_19%] [int] NOT NULL,
	[VK] [money] NULL,
	[InstrumentenartID] [int] NOT NULL,
	[ZustandID] [int] NOT NULL,
	[LagerstatusID] [int] NOT NULL,
 CONSTRAINT [PK_tb_Instrumente] PRIMARY KEY CLUSTERED 
(
	[InstrumentenID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[tb_Instrumente] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[tb_Instrumente] TO [Leser] AS [dbo]
GO
/****** Object:  UserDefinedFunction [dbo].[tf_BestellungenKundeZeitraum]    Script Date: 21.01.2022 13:35:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Gruppe D
-- Create date: 19.01.22
-- Description:	Auswahl aller Bestellungen eines Kunden von Produkten eines best. Herstellers in einem best. Zeitraum
-- =============================================
CREATE   FUNCTION [dbo].[tf_BestellungenKundeZeitraum]
(	
	@DatumVon date,
	@DatumBis date,	
	@KundenID int, 
	@HerstellerID int
)
RETURNS TABLE 
AS
RETURN 
(
-- Auswahl der Spalten die die Tabelle haben soll
	SELECT TOP 100 Percent dbo.tb_Bestellung.BestellungID, 
	dbo.tb_Kunden.Nachname AS KuNN, 
	dbo.tb_Kunden.Vorname AS KuVN, 
	dbo.tb_Hersteller.HerstellerID, 
	dbo.tb_Hersteller.Hersteller, 
	dbo.tb_Bestellung.BestellDatum
FROM	dbo.tb_Kunden RIGHT OUTER JOIN
		dbo.tb_Bestellung ON dbo.tb_Kunden.KundenID = dbo.tb_Bestellung.KundenID CROSS JOIN
        dbo.tb_Hersteller INNER JOIN
		dbo.tb_Instrumente ON dbo.tb_Hersteller.HerstellerID = dbo.tb_Instrumente.HerstellerID
		
	WHERE tb_Bestellung.BestellDatum BETWEEN @DatumVon AND @DatumBis -- filtern nach Datum	
	AND tb_Kunden.KundenID = @KundenID -- filtern nach Kunde
	AND tb_Hersteller.HerstellerID = @HerstellerID -- filtern nach Hersteller

-- Nach Bestelldatum ordnen
	ORDER BY dbo.tb_Bestellung.BestellDatum DESC, KuNN, Hersteller
	
)
GO
ALTER AUTHORIZATION ON [dbo].[tf_BestellungenKundeZeitraum] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[tb_Zustand]    Script Date: 21.01.2022 13:35:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Zustand](
	[ZustandID] [int] IDENTITY(1,1) NOT NULL,
	[Zustand] [nvarchar](30) NOT NULL,
 CONSTRAINT [PK_tb_Zustand] PRIMARY KEY CLUSTERED 
(
	[ZustandID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[tb_Zustand] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[tb_Lagerstatus]    Script Date: 21.01.2022 13:35:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Lagerstatus](
	[LagerstatusID] [int] IDENTITY(1,1) NOT NULL,
	[Status] [nvarchar](30) NOT NULL,
 CONSTRAINT [PK_tb_Status] PRIMARY KEY CLUSTERED 
(
	[LagerstatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[tb_Lagerstatus] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[tb_Lagerstatus] TO [Leser] AS [dbo]
GO
/****** Object:  View [dbo].[View_aufLager]    Script Date: 21.01.2022 13:35:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_aufLager]
AS
SELECT        TOP (100) PERCENT dbo.tb_Instrumente.Bezeichnung, dbo.tb_Lagerstatus.Status, dbo.tb_Zustand.Zustand
FROM            dbo.tb_Instrumente INNER JOIN
                         dbo.tb_Lagerstatus ON dbo.tb_Instrumente.LagerstatusID = dbo.tb_Lagerstatus.LagerstatusID INNER JOIN
                         dbo.tb_Zustand ON dbo.tb_Instrumente.ZustandID = dbo.tb_Zustand.ZustandID
WHERE        (dbo.tb_Instrumente.LagerstatusID = 4)
ORDER BY dbo.tb_Instrumente.Bezeichnung
GO
ALTER AUTHORIZATION ON [dbo].[View_aufLager] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[tb_InstrumentenVerkauf]    Script Date: 21.01.2022 13:35:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_InstrumentenVerkauf](
	[InstrumentVID] [int] IDENTITY(1,1) NOT NULL,
	[InstrumentenID] [int] NOT NULL,
	[BestellungID] [int] NOT NULL,
	[Anzahl] [int] NOT NULL,
 CONSTRAINT [PK_tb_InstrumentenVerkauf] PRIMARY KEY CLUSTERED 
(
	[InstrumentVID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[tb_InstrumentenVerkauf] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[tb_InstrumentenVerkauf] TO [Leser] AS [dbo]
GO
/****** Object:  Table [dbo].[tb_Rechnung]    Script Date: 21.01.2022 13:35:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Rechnung](
	[RechnungID] [int] IDENTITY(1,1) NOT NULL,
	[Datum] [date] NOT NULL,
	[BestellungID] [int] NOT NULL,
	[PesonalID] [int] NOT NULL,
 CONSTRAINT [PK_tb_Rechnung] PRIMARY KEY CLUSTERED 
(
	[RechnungID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[tb_Rechnung] TO  SCHEMA OWNER 
GO
GRANT INSERT ON [dbo].[tb_Rechnung] TO [Schreiber] AS [dbo]
GO
GRANT SELECT ON [dbo].[tb_Rechnung] TO [Schreiber] AS [dbo]
GO
GRANT UPDATE ON [dbo].[tb_Rechnung] TO [Schreiber] AS [dbo]
GO
/****** Object:  Table [dbo].[tb_Personal]    Script Date: 21.01.2022 13:35:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Personal](
	[PersonalID] [int] IDENTITY(1,1) NOT NULL,
	[Nachname] [nvarchar](50) NOT NULL,
	[Vorname] [nvarchar](50) NOT NULL,
	[Ort] [nvarchar](50) NOT NULL,
	[PLZ] [nchar](5) NOT NULL,
	[Strasse] [nvarchar](50) NOT NULL,
	[HausNr] [nvarchar](10) NOT NULL,
	[Tel] [nvarchar](50) NULL,
	[Mobil] [nvarchar](50) NULL,
	[Mail] [nvarchar](50) NULL,
	[GebDat] [date] NULL,
	[PositionID] [int] NOT NULL,
	[Kommentar] [nvarchar](max) NULL,
 CONSTRAINT [PK_tb_Personal] PRIMARY KEY CLUSTERED 
(
	[PersonalID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[tb_Personal] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[tb_Personal] TO [Schreiber] AS [dbo]
GO
/****** Object:  View [dbo].[View_RechnnungUeberischt-Instrumente]    Script Date: 21.01.2022 13:35:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_RechnnungUeberischt-Instrumente]
AS
SELECT        dbo.tb_Rechnung.Datum AS Rechnungsdatum, dbo.tb_Bestellung.BestellungID, dbo.tb_Personal.PersonalID, dbo.tb_Instrumente.Bezeichnung AS Instrumente, dbo.tb_InstrumentenVerkauf.Anzahl AS [Anzahl Instrumente], 
                         dbo.tb_Kunden.Nachname AS KNachname, dbo.tb_Kunden.Vorname AS KVorname
FROM            dbo.tb_Instrumente INNER JOIN
                         dbo.tb_InstrumentenVerkauf ON dbo.tb_Instrumente.InstrumentenID = dbo.tb_InstrumentenVerkauf.InstrumentenID LEFT OUTER JOIN
                         dbo.tb_Bestellung INNER JOIN
                         dbo.tb_Rechnung ON dbo.tb_Bestellung.BestellungID = dbo.tb_Rechnung.BestellungID INNER JOIN
                         dbo.tb_Personal ON dbo.tb_Rechnung.PesonalID = dbo.tb_Personal.PersonalID INNER JOIN
                         dbo.tb_Kunden ON dbo.tb_Bestellung.KundenID = dbo.tb_Kunden.KundenID ON dbo.tb_InstrumentenVerkauf.BestellungID = dbo.tb_Bestellung.BestellungID
GO
ALTER AUTHORIZATION ON [dbo].[View_RechnnungUeberischt-Instrumente] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[tb_NotenVerkauf]    Script Date: 21.01.2022 13:35:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_NotenVerkauf](
	[NotenVID] [int] IDENTITY(1,1) NOT NULL,
	[NotenID] [int] NOT NULL,
	[BestellungID] [int] NOT NULL,
	[Anzahl] [int] NOT NULL,
 CONSTRAINT [PK_tb_NotenVerkauf] PRIMARY KEY CLUSTERED 
(
	[NotenVID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[tb_NotenVerkauf] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[tb_Noten]    Script Date: 21.01.2022 13:35:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Noten](
	[NotenID] [int] IDENTITY(1,1) NOT NULL,
	[Titel] [nvarchar](200) NOT NULL,
	[ISBN] [nvarchar](16) NOT NULL,
	[InstrumentenartID] [int] NOT NULL,
	[EK] [money] NOT NULL,
	[MWSt_7%] [int] NOT NULL,
	[VK] [money] NOT NULL,
	[LagerstatusID] [int] NOT NULL,
 CONSTRAINT [PK_tb_Noten] PRIMARY KEY CLUSTERED 
(
	[NotenID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[tb_Noten] TO  SCHEMA OWNER 
GO
/****** Object:  View [dbo].[View_RechungUebersicht-Noten]    Script Date: 21.01.2022 13:35:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_RechungUebersicht-Noten]
AS
SELECT        dbo.tb_Rechnung.Datum AS Rechnungsdatum, dbo.tb_Bestellung.BestellungID, dbo.tb_Personal.PersonalID, dbo.tb_Noten.Titel AS Noten, dbo.tb_NotenVerkauf.Anzahl, dbo.tb_Kunden.Nachname AS KNachname, 
                         dbo.tb_Kunden.Vorname AS KVorname
FROM            dbo.tb_Noten INNER JOIN
                         dbo.tb_NotenVerkauf ON dbo.tb_Noten.NotenID = dbo.tb_NotenVerkauf.NotenID LEFT OUTER JOIN
                         dbo.tb_Bestellung INNER JOIN
                         dbo.tb_Rechnung ON dbo.tb_Bestellung.BestellungID = dbo.tb_Rechnung.BestellungID INNER JOIN
                         dbo.tb_Personal ON dbo.tb_Rechnung.PesonalID = dbo.tb_Personal.PersonalID INNER JOIN
                         dbo.tb_Kunden ON dbo.tb_Bestellung.KundenID = dbo.tb_Kunden.KundenID ON dbo.tb_NotenVerkauf.BestellungID = dbo.tb_Bestellung.BestellungID
GO
ALTER AUTHORIZATION ON [dbo].[View_RechungUebersicht-Noten] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[tb_ZubehoerVerkauf]    Script Date: 21.01.2022 13:35:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_ZubehoerVerkauf](
	[ZubehoerVID] [int] IDENTITY(1,1) NOT NULL,
	[ZubehoerID] [int] NOT NULL,
	[Anzahl] [int] NOT NULL,
	[BestellungID] [int] NOT NULL,
 CONSTRAINT [PK_tb_ZubehoerVerkauf] PRIMARY KEY CLUSTERED 
(
	[ZubehoerVID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[tb_ZubehoerVerkauf] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[tb_Zubehoer]    Script Date: 21.01.2022 13:35:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Zubehoer](
	[ZubehoerID] [int] IDENTITY(1,1) NOT NULL,
	[Zubehoer] [nvarchar](200) NOT NULL,
	[EK] [money] NULL,
	[MWSt_19%] [int] NULL,
	[VK] [money] NULL,
	[LagerstatusID] [int] NOT NULL,
	[InstrumentenartID] [int] NOT NULL,
 CONSTRAINT [PK_tb_Zubehoer] PRIMARY KEY CLUSTERED 
(
	[ZubehoerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[tb_Zubehoer] TO  SCHEMA OWNER 
GO
/****** Object:  View [dbo].[View_RechnungUebersicht-Zubehoer]    Script Date: 21.01.2022 13:35:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_RechnungUebersicht-Zubehoer]
AS
SELECT        dbo.tb_Rechnung.Datum AS Rechnungsdatum, dbo.tb_Bestellung.BestellungID, dbo.tb_Personal.PersonalID, dbo.tb_Zubehoer.Zubehoer, dbo.tb_ZubehoerVerkauf.Anzahl, dbo.tb_Kunden.Nachname AS KNachname, 
                         dbo.tb_Kunden.Vorname AS KVorname
FROM            dbo.tb_Zubehoer INNER JOIN
                         dbo.tb_ZubehoerVerkauf ON dbo.tb_Zubehoer.ZubehoerID = dbo.tb_ZubehoerVerkauf.ZubehoerID LEFT OUTER JOIN
                         dbo.tb_Bestellung INNER JOIN
                         dbo.tb_Rechnung ON dbo.tb_Bestellung.BestellungID = dbo.tb_Rechnung.BestellungID INNER JOIN
                         dbo.tb_Personal ON dbo.tb_Rechnung.PesonalID = dbo.tb_Personal.PersonalID INNER JOIN
                         dbo.tb_Kunden ON dbo.tb_Bestellung.KundenID = dbo.tb_Kunden.KundenID ON dbo.tb_ZubehoerVerkauf.BestellungID = dbo.tb_Bestellung.BestellungID
GO
ALTER AUTHORIZATION ON [dbo].[View_RechnungUebersicht-Zubehoer] TO  SCHEMA OWNER 
GO
/****** Object:  View [dbo].[View_RechnungUebersicht_Null]    Script Date: 21.01.2022 13:35:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_RechnungUebersicht_Null]
AS
SELECT        dbo.tb_Rechnung.Datum AS Rechnungsdatum, dbo.tb_Bestellung.BestellungID, dbo.tb_Personal.PersonalID, dbo.tb_Instrumente.Bezeichnung AS Instrumente, dbo.tb_InstrumentenVerkauf.Anzahl AS [Anzahl Instrumente], 
                         dbo.tb_Noten.Titel AS Noten, dbo.tb_NotenVerkauf.Anzahl AS [Anzahl Noten], dbo.tb_Zubehoer.Zubehoer, dbo.tb_ZubehoerVerkauf.Anzahl AS [Anzahl Zubehoer], dbo.tb_Kunden.Nachname AS KNachname, 
                         dbo.tb_Kunden.Vorname AS KVorname, dbo.tb_Kunden.Ort
FROM            dbo.tb_Instrumente INNER JOIN
                         dbo.tb_InstrumentenVerkauf ON dbo.tb_Instrumente.InstrumentenID = dbo.tb_InstrumentenVerkauf.InstrumentenID RIGHT OUTER JOIN
                         dbo.tb_Noten INNER JOIN
                         dbo.tb_NotenVerkauf ON dbo.tb_Noten.NotenID = dbo.tb_NotenVerkauf.NotenID RIGHT OUTER JOIN
                         dbo.tb_Kunden INNER JOIN
                         dbo.tb_Bestellung ON dbo.tb_Kunden.KundenID = dbo.tb_Bestellung.KundenID INNER JOIN
                         dbo.tb_Personal INNER JOIN
                         dbo.tb_Rechnung ON dbo.tb_Personal.PersonalID = dbo.tb_Rechnung.PesonalID ON dbo.tb_Bestellung.BestellungID = dbo.tb_Rechnung.BestellungID ON dbo.tb_NotenVerkauf.BestellungID = dbo.tb_Bestellung.BestellungID ON 
                         dbo.tb_InstrumentenVerkauf.BestellungID = dbo.tb_Bestellung.BestellungID LEFT OUTER JOIN
                         dbo.tb_ZubehoerVerkauf INNER JOIN
                         dbo.tb_Zubehoer ON dbo.tb_ZubehoerVerkauf.ZubehoerID = dbo.tb_Zubehoer.ZubehoerID ON dbo.tb_Bestellung.BestellungID = dbo.tb_ZubehoerVerkauf.BestellungID
GO
ALTER AUTHORIZATION ON [dbo].[View_RechnungUebersicht_Null] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[tb_Instrumentenart]    Script Date: 21.01.2022 13:35:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Instrumentenart](
	[InstrumentenartID] [int] IDENTITY(1,1) NOT NULL,
	[InstrBezeichnung] [nvarchar](60) NOT NULL,
 CONSTRAINT [PK_tb_Instrumentenart] PRIMARY KEY CLUSTERED 
(
	[InstrumentenartID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[tb_Instrumentenart] TO  SCHEMA OWNER 
GO
/****** Object:  View [dbo].[View_InstrumenteUebersicht_Hersteller_Lagerstatus]    Script Date: 21.01.2022 13:35:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_InstrumenteUebersicht_Hersteller_Lagerstatus]
AS
SELECT        dbo.tb_Instrumentenart.InstrBezeichnung AS InstrGruppe, dbo.tb_Instrumente.Bezeichnung AS Intrument, dbo.tb_Instrumente.Gewicht, dbo.tb_Instrumente.VK, dbo.tb_Lagerstatus.Status, dbo.tb_Zustand.Zustand, 
                         dbo.tb_Hersteller.Ansprechpartner, dbo.tb_Hersteller.Ort, dbo.tb_Hersteller.PLZ, dbo.tb_Hersteller.Strasse, dbo.tb_Hersteller.Hausnr, dbo.tb_Hersteller.Tel, dbo.tb_Hersteller.Mobil, dbo.tb_Hersteller.Mail
FROM            dbo.tb_Instrumente INNER JOIN
                         dbo.tb_Instrumentenart ON dbo.tb_Instrumente.InstrumentenartID = dbo.tb_Instrumentenart.InstrumentenartID INNER JOIN
                         dbo.tb_Lagerstatus ON dbo.tb_Instrumente.LagerstatusID = dbo.tb_Lagerstatus.LagerstatusID INNER JOIN
                         dbo.tb_Zustand ON dbo.tb_Instrumente.ZustandID = dbo.tb_Zustand.ZustandID INNER JOIN
                         dbo.tb_Hersteller ON dbo.tb_Instrumente.HerstellerID = dbo.tb_Hersteller.HerstellerID
GO
ALTER AUTHORIZATION ON [dbo].[View_InstrumenteUebersicht_Hersteller_Lagerstatus] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[PreisInstrumenteLog]    Script Date: 21.01.2022 13:35:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PreisInstrumenteLog](
	[RecordID] [int] IDENTITY(1,1) NOT NULL,
	[Mode] [char](1) NOT NULL,
	[InstrumentenID] [int] NOT NULL,
	[Bezeichnung] [nvarchar](50) NOT NULL,
	[InstrumentenArtID] [int] NOT NULL,
	[HerstellerID] [int] NOT NULL,
	[VKAlt] [nvarchar](50) NULL,
	[VK] [nvarchar](50) NULL,
	[EditOn] [datetime] NOT NULL,
	[EditUser] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[RecordID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[PreisInstrumenteLog] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[tb_HerstellerUebersicht]    Script Date: 21.01.2022 13:35:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_HerstellerUebersicht](
	[HerstellerUebersichtID] [int] IDENTITY(1,1) NOT NULL,
	[InstrumentenartID] [int] NOT NULL,
	[HerstellerID] [int] NOT NULL,
 CONSTRAINT [PK_tb_HerstellerUebersicht] PRIMARY KEY CLUSTERED 
(
	[HerstellerUebersichtID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[tb_HerstellerUebersicht] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[tb_Kundenstatus]    Script Date: 21.01.2022 13:35:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Kundenstatus](
	[KundenstatusID] [int] IDENTITY(1,1) NOT NULL,
	[Kundenstatus] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_tb_Kundenstatus] PRIMARY KEY CLUSTERED 
(
	[KundenstatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[tb_Kundenstatus] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[tb_Position]    Script Date: 21.01.2022 13:35:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Position](
	[PostitionID] [int] IDENTITY(1,1) NOT NULL,
	[Position] [nvarchar](30) NOT NULL,
 CONSTRAINT [PK_tb_Position] PRIMARY KEY CLUSTERED 
(
	[PostitionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[tb_Position] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[tb_Position] TO [Schreiber] AS [dbo]
GO
SET IDENTITY_INSERT [dbo].[tb_Bestellung] ON 

INSERT [dbo].[tb_Bestellung] ([BestellungID], [KundenID], [BestellDatum]) VALUES (1, 1, CAST(N'2021-10-04' AS Date))
INSERT [dbo].[tb_Bestellung] ([BestellungID], [KundenID], [BestellDatum]) VALUES (2, 2, CAST(N'2021-12-20' AS Date))
INSERT [dbo].[tb_Bestellung] ([BestellungID], [KundenID], [BestellDatum]) VALUES (3, 3, CAST(N'2022-01-16' AS Date))
INSERT [dbo].[tb_Bestellung] ([BestellungID], [KundenID], [BestellDatum]) VALUES (4, 4, CAST(N'2022-01-01' AS Date))
INSERT [dbo].[tb_Bestellung] ([BestellungID], [KundenID], [BestellDatum]) VALUES (5, 5, CAST(N'2021-12-18' AS Date))
INSERT [dbo].[tb_Bestellung] ([BestellungID], [KundenID], [BestellDatum]) VALUES (6, 6, CAST(N'2021-12-12' AS Date))
INSERT [dbo].[tb_Bestellung] ([BestellungID], [KundenID], [BestellDatum]) VALUES (7, 1, CAST(N'2022-01-05' AS Date))
INSERT [dbo].[tb_Bestellung] ([BestellungID], [KundenID], [BestellDatum]) VALUES (8, 2, CAST(N'2021-12-28' AS Date))
INSERT [dbo].[tb_Bestellung] ([BestellungID], [KundenID], [BestellDatum]) VALUES (9, 1, CAST(N'2022-01-18' AS Date))
INSERT [dbo].[tb_Bestellung] ([BestellungID], [KundenID], [BestellDatum]) VALUES (10, 4, CAST(N'2022-01-10' AS Date))
INSERT [dbo].[tb_Bestellung] ([BestellungID], [KundenID], [BestellDatum]) VALUES (11, 1, CAST(N'2021-11-02' AS Date))
INSERT [dbo].[tb_Bestellung] ([BestellungID], [KundenID], [BestellDatum]) VALUES (12, 6, CAST(N'2022-01-09' AS Date))
INSERT [dbo].[tb_Bestellung] ([BestellungID], [KundenID], [BestellDatum]) VALUES (13, 3, CAST(N'2021-12-05' AS Date))
INSERT [dbo].[tb_Bestellung] ([BestellungID], [KundenID], [BestellDatum]) VALUES (15, 2, CAST(N'2022-01-06' AS Date))
SET IDENTITY_INSERT [dbo].[tb_Bestellung] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_Hersteller] ON 

INSERT [dbo].[tb_Hersteller] ([HerstellerID], [Hersteller], [Ansprechpartner], [Ort], [PLZ], [Strasse], [Hausnr], [Tel], [Mobil], [Mail]) VALUES (1, N'Blender Guitars GmbH', N'Lumpp Stella', N'Pfarrkirchen', N'84347', N'Talweg', N'83', N'08561/20495144', N'0160/1355202', N's_lumpp@anymail.none')
INSERT [dbo].[tb_Hersteller] ([HerstellerID], [Hersteller], [Ansprechpartner], [Ort], [PLZ], [Strasse], [Hausnr], [Tel], [Mobil], [Mail]) VALUES (2, N'Steinweg Klaviere OHG', N'Andrae Elisabetha', N'Marburg', N'35039', N'Hövel', N'32', N'06421/72394235', N'0165/5160832', N'')
INSERT [dbo].[tb_Hersteller] ([HerstellerID], [Hersteller], [Ansprechpartner], [Ort], [PLZ], [Strasse], [Hausnr], [Tel], [Mobil], [Mail]) VALUES (3, N'Mayaha Instruments und CoKg', N'Schachner Theolinde', N'Kalt', N'56294', N'Siedenberger Straße', N'194', N'02654/64359877', N'', N'theolinde-schachner@private.none')
INSERT [dbo].[tb_Hersteller] ([HerstellerID], [Hersteller], [Ansprechpartner], [Ort], [PLZ], [Strasse], [Hausnr], [Tel], [Mobil], [Mail]) VALUES (4, N'Tonor Instrumente GmbH', N'Steinbach Lorenz', N'Todtnau', N'79674', N'Im Grünen Winkel', N'59', N'07671/63406863', N'0158/2492769', N'lorenz.16@spam-mail.none')
INSERT [dbo].[tb_Hersteller] ([HerstellerID], [Hersteller], [Ansprechpartner], [Ort], [PLZ], [Strasse], [Hausnr], [Tel], [Mobil], [Mail]) VALUES (5, N'MATA Schlagzeuge OHG', N'Krebber Bernhild', N'Wattenheim', N'67319', N'Beethovenweg', N'72', N'06351/62095936', N'0169/3016884', N'')
INSERT [dbo].[tb_Hersteller] ([HerstellerID], [Hersteller], [Ansprechpartner], [Ort], [PLZ], [Strasse], [Hausnr], [Tel], [Mobil], [Mail]) VALUES (6, N'Habicht Klarinetten GmbH', N'Breit Schorsch', N'Hilchenbach', N'57271', N'Obstwiese', N'158', N'02733/54330944', N'0178/9519207', N'schorsch.1910@kitty.none')
INSERT [dbo].[tb_Hersteller] ([HerstellerID], [Hersteller], [Ansprechpartner], [Ort], [PLZ], [Strasse], [Hausnr], [Tel], [Mobil], [Mail]) VALUES (7, N'Pechstein Claviere OHG', N'Ellinghaus Rebekka Damaris', N'Frankfurt', N'15234', N'Hasenstraße', N'62', N'0335/72295412', N'0173/3912684', N'')
INSERT [dbo].[tb_Hersteller] ([HerstellerID], [Hersteller], [Ansprechpartner], [Ort], [PLZ], [Strasse], [Hausnr], [Tel], [Mobil], [Mail]) VALUES (8, N'Bickenracker Gitarren Co KG', N'Wiegelmann Sigurd', N'Sontra', N'36205', N'Fercher Straße', N'180', N'05653/92174658', N'0169/2160551', N'sigurdwiegelmann@live-mail.none')
INSERT [dbo].[tb_Hersteller] ([HerstellerID], [Hersteller], [Ansprechpartner], [Ort], [PLZ], [Strasse], [Hausnr], [Tel], [Mobil], [Mail]) VALUES (9, N'CHEF Instrumente GmbH', N'Röhricht Hansjochen', N'Braunschweig', N'38126', N'Baerler Straße', N'168', N'0531/62152617', N'0169/5739409', N'hroehricht@kitty.none')
SET IDENTITY_INSERT [dbo].[tb_Hersteller] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_HerstellerUebersicht] ON 

INSERT [dbo].[tb_HerstellerUebersicht] ([HerstellerUebersichtID], [InstrumentenartID], [HerstellerID]) VALUES (1, 1, 1)
INSERT [dbo].[tb_HerstellerUebersicht] ([HerstellerUebersichtID], [InstrumentenartID], [HerstellerID]) VALUES (2, 2, 9)
INSERT [dbo].[tb_HerstellerUebersicht] ([HerstellerUebersichtID], [InstrumentenartID], [HerstellerID]) VALUES (3, 3, 3)
INSERT [dbo].[tb_HerstellerUebersicht] ([HerstellerUebersichtID], [InstrumentenartID], [HerstellerID]) VALUES (4, 4, 6)
INSERT [dbo].[tb_HerstellerUebersicht] ([HerstellerUebersichtID], [InstrumentenartID], [HerstellerID]) VALUES (5, 5, 2)
INSERT [dbo].[tb_HerstellerUebersicht] ([HerstellerUebersichtID], [InstrumentenartID], [HerstellerID]) VALUES (6, 7, 7)
INSERT [dbo].[tb_HerstellerUebersicht] ([HerstellerUebersichtID], [InstrumentenartID], [HerstellerID]) VALUES (7, 6, 4)
INSERT [dbo].[tb_HerstellerUebersicht] ([HerstellerUebersichtID], [InstrumentenartID], [HerstellerID]) VALUES (8, 8, 8)
INSERT [dbo].[tb_HerstellerUebersicht] ([HerstellerUebersichtID], [InstrumentenartID], [HerstellerID]) VALUES (9, 9, 5)
INSERT [dbo].[tb_HerstellerUebersicht] ([HerstellerUebersichtID], [InstrumentenartID], [HerstellerID]) VALUES (10, 10, 1)
INSERT [dbo].[tb_HerstellerUebersicht] ([HerstellerUebersichtID], [InstrumentenartID], [HerstellerID]) VALUES (11, 11, 9)
SET IDENTITY_INSERT [dbo].[tb_HerstellerUebersicht] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_Instrumente] ON 

INSERT [dbo].[tb_Instrumente] ([InstrumentenID], [Bezeichnung], [Gewicht], [HerstellerID], [EK], [MWSt_19%], [VK], [InstrumentenartID], [ZustandID], [LagerstatusID]) VALUES (1, N'Blender 12-String Gitarre', 2, 1, 150.0000, 19, 200.0000, 1, 1, 4)
INSERT [dbo].[tb_Instrumente] ([InstrumentenID], [Bezeichnung], [Gewicht], [HerstellerID], [EK], [MWSt_19%], [VK], [InstrumentenartID], [ZustandID], [LagerstatusID]) VALUES (2, N'Steinweg Flügel, schwarz', 570, 2, 10000.0000, 19, 15000.0000, 5, 2, 4)
INSERT [dbo].[tb_Instrumente] ([InstrumentenID], [Bezeichnung], [Gewicht], [HerstellerID], [EK], [MWSt_19%], [VK], [InstrumentenartID], [ZustandID], [LagerstatusID]) VALUES (3, N'Bickenracker Stahlgitarre', 3, 8, 350.0000, 19, 500.0000, 8, 3, 2)
INSERT [dbo].[tb_Instrumente] ([InstrumentenID], [Bezeichnung], [Gewicht], [HerstellerID], [EK], [MWSt_19%], [VK], [InstrumentenartID], [ZustandID], [LagerstatusID]) VALUES (4, N'Bb Klarinette Classic CLK-9', 750, 6, 140.0000, 19, 280.0000, 4, 4, 4)
INSERT [dbo].[tb_Instrumente] ([InstrumentenID], [Bezeichnung], [Gewicht], [HerstellerID], [EK], [MWSt_19%], [VK], [InstrumentenartID], [ZustandID], [LagerstatusID]) VALUES (5, N'Harvey Deluxe Bass', 5, 1, 110.0000, 19, 190.0000, 10, 4, 4)
INSERT [dbo].[tb_Instrumente] ([InstrumentenID], [Bezeichnung], [Gewicht], [HerstellerID], [EK], [MWSt_19%], [VK], [InstrumentenartID], [ZustandID], [LagerstatusID]) VALUES (6, N'Millennium Drum Set Schwarz', 54, 5, 580.0000, 19, 880.0000, 3, 4, 3)
INSERT [dbo].[tb_Instrumente] ([InstrumentenID], [Bezeichnung], [Gewicht], [HerstellerID], [EK], [MWSt_19%], [VK], [InstrumentenartID], [ZustandID], [LagerstatusID]) VALUES (7, N'Youngster Drum Set Green', 68, 5, 80.0000, 19, 140.0000, 3, 1, 4)
INSERT [dbo].[tb_Instrumente] ([InstrumentenID], [Bezeichnung], [Gewicht], [HerstellerID], [EK], [MWSt_19%], [VK], [InstrumentenartID], [ZustandID], [LagerstatusID]) VALUES (8, N'Blackbox Cajon', 5, 3, 10.0000, 19, 18.0000, 2, 4, 4)
INSERT [dbo].[tb_Instrumente] ([InstrumentenID], [Bezeichnung], [Gewicht], [HerstellerID], [EK], [MWSt_19%], [VK], [InstrumentenartID], [ZustandID], [LagerstatusID]) VALUES (9, N'Fun Piano AK-1', 5, 7, 220.0000, 19, 370.0000, 2, 1, 4)
INSERT [dbo].[tb_Instrumente] ([InstrumentenID], [Bezeichnung], [Gewicht], [HerstellerID], [EK], [MWSt_19%], [VK], [InstrumentenartID], [ZustandID], [LagerstatusID]) VALUES (10, N'Hammer Klavier', 250, 2, 3200.0000, 19, 4000.0000, 5, 3, 1)
SET IDENTITY_INSERT [dbo].[tb_Instrumente] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_Instrumentenart] ON 

INSERT [dbo].[tb_Instrumentenart] ([InstrumentenartID], [InstrBezeichnung]) VALUES (8, N'Akustikgitarre')
INSERT [dbo].[tb_Instrumentenart] ([InstrumentenartID], [InstrBezeichnung]) VALUES (10, N'Bass')
INSERT [dbo].[tb_Instrumentenart] ([InstrumentenartID], [InstrBezeichnung]) VALUES (9, N'Cajon')
INSERT [dbo].[tb_Instrumentenart] ([InstrumentenartID], [InstrBezeichnung]) VALUES (7, N'Cembalo')
INSERT [dbo].[tb_Instrumentenart] ([InstrumentenartID], [InstrBezeichnung]) VALUES (3, N'Drumset')
INSERT [dbo].[tb_Instrumentenart] ([InstrumentenartID], [InstrBezeichnung]) VALUES (5, N'Flügel')
INSERT [dbo].[tb_Instrumentenart] ([InstrumentenartID], [InstrBezeichnung]) VALUES (1, N'Gitarre')
INSERT [dbo].[tb_Instrumentenart] ([InstrumentenartID], [InstrBezeichnung]) VALUES (2, N'Keyboard')
INSERT [dbo].[tb_Instrumentenart] ([InstrumentenartID], [InstrBezeichnung]) VALUES (4, N'Klarinette')
INSERT [dbo].[tb_Instrumentenart] ([InstrumentenartID], [InstrBezeichnung]) VALUES (11, N'Orgel')
INSERT [dbo].[tb_Instrumentenart] ([InstrumentenartID], [InstrBezeichnung]) VALUES (6, N'Percussion Set')
SET IDENTITY_INSERT [dbo].[tb_Instrumentenart] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_InstrumentenVerkauf] ON 

INSERT [dbo].[tb_InstrumentenVerkauf] ([InstrumentVID], [InstrumentenID], [BestellungID], [Anzahl]) VALUES (1, 1, 1, 2)
INSERT [dbo].[tb_InstrumentenVerkauf] ([InstrumentVID], [InstrumentenID], [BestellungID], [Anzahl]) VALUES (2, 2, 2, 3)
INSERT [dbo].[tb_InstrumentenVerkauf] ([InstrumentVID], [InstrumentenID], [BestellungID], [Anzahl]) VALUES (3, 3, 2, 1)
INSERT [dbo].[tb_InstrumentenVerkauf] ([InstrumentVID], [InstrumentenID], [BestellungID], [Anzahl]) VALUES (4, 1, 3, 2)
INSERT [dbo].[tb_InstrumentenVerkauf] ([InstrumentVID], [InstrumentenID], [BestellungID], [Anzahl]) VALUES (5, 5, 6, 1)
INSERT [dbo].[tb_InstrumentenVerkauf] ([InstrumentVID], [InstrumentenID], [BestellungID], [Anzahl]) VALUES (6, 7, 7, 1)
INSERT [dbo].[tb_InstrumentenVerkauf] ([InstrumentVID], [InstrumentenID], [BestellungID], [Anzahl]) VALUES (7, 6, 7, 2)
INSERT [dbo].[tb_InstrumentenVerkauf] ([InstrumentVID], [InstrumentenID], [BestellungID], [Anzahl]) VALUES (8, 4, 8, 2)
INSERT [dbo].[tb_InstrumentenVerkauf] ([InstrumentVID], [InstrumentenID], [BestellungID], [Anzahl]) VALUES (9, 8, 9, 10)
INSERT [dbo].[tb_InstrumentenVerkauf] ([InstrumentVID], [InstrumentenID], [BestellungID], [Anzahl]) VALUES (10, 9, 9, 4)
INSERT [dbo].[tb_InstrumentenVerkauf] ([InstrumentVID], [InstrumentenID], [BestellungID], [Anzahl]) VALUES (11, 5, 11, 7)
INSERT [dbo].[tb_InstrumentenVerkauf] ([InstrumentVID], [InstrumentenID], [BestellungID], [Anzahl]) VALUES (12, 1, 12, 1)
INSERT [dbo].[tb_InstrumentenVerkauf] ([InstrumentVID], [InstrumentenID], [BestellungID], [Anzahl]) VALUES (13, 7, 11, 2)
INSERT [dbo].[tb_InstrumentenVerkauf] ([InstrumentVID], [InstrumentenID], [BestellungID], [Anzahl]) VALUES (14, 4, 13, 1)
INSERT [dbo].[tb_InstrumentenVerkauf] ([InstrumentVID], [InstrumentenID], [BestellungID], [Anzahl]) VALUES (15, 1, 15, 1)
SET IDENTITY_INSERT [dbo].[tb_InstrumentenVerkauf] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_Kunden] ON 

INSERT [dbo].[tb_Kunden] ([KundenID], [Nachname], [Vorname], [Ort], [PLZ], [Strasse], [HausNr], [Tel], [Mobil], [Mail], [GebDat], [KundenstatusID], [Kommentar]) VALUES (1, N'Weber', N'Bernd', N'Duisburg', N'45479', N'Rosenweg', N'4', N'12346789', N'98654321', N'wb80@gmail.com', CAST(N'1980-07-31' AS Date), 1, NULL)
INSERT [dbo].[tb_Kunden] ([KundenID], [Nachname], [Vorname], [Ort], [PLZ], [Strasse], [HausNr], [Tel], [Mobil], [Mail], [GebDat], [KundenstatusID], [Kommentar]) VALUES (2, N'Mustermann', N'Max', N'Berlin', N'10115', N'Sachsenstrasse', N'5', N'', N'015655544466', N'mm@gmail.com', CAST(N'1978-07-05' AS Date), 3, NULL)
INSERT [dbo].[tb_Kunden] ([KundenID], [Nachname], [Vorname], [Ort], [PLZ], [Strasse], [HausNr], [Tel], [Mobil], [Mail], [GebDat], [KundenstatusID], [Kommentar]) VALUES (3, N'Scarlet', N'Richard', N'Stuttgart', N'70174', N'Nullastrasse', N'2', N'', N'0132848879', N'', CAST(N'1991-01-01' AS Date), 2, NULL)
INSERT [dbo].[tb_Kunden] ([KundenID], [Nachname], [Vorname], [Ort], [PLZ], [Strasse], [HausNr], [Tel], [Mobil], [Mail], [GebDat], [KundenstatusID], [Kommentar]) VALUES (4, N'Hopper', N'Alice', N'Finmark', N'75581', N'Augustus Str.', N'45', N'023588554', N'06241145887', N'alice@hoppers.com', CAST(N'1967-04-05' AS Date), 2, NULL)
INSERT [dbo].[tb_Kunden] ([KundenID], [Nachname], [Vorname], [Ort], [PLZ], [Strasse], [HausNr], [Tel], [Mobil], [Mail], [GebDat], [KundenstatusID], [Kommentar]) VALUES (5, N'Carpenter', N'Amber', N'Dresden', N'01067', N'Traubenstr.', N'56', N'', N'0587466885', N'', CAST(N'1999-09-09' AS Date), 1, NULL)
INSERT [dbo].[tb_Kunden] ([KundenID], [Nachname], [Vorname], [Ort], [PLZ], [Strasse], [HausNr], [Tel], [Mobil], [Mail], [GebDat], [KundenstatusID], [Kommentar]) VALUES (6, N'Lena', N'Friedrich', N'München', N'80331', N'Bier Allee', N'25', N'', N'', N'', CAST(N'1998-07-18' AS Date), 2, NULL)
SET IDENTITY_INSERT [dbo].[tb_Kunden] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_Kundenstatus] ON 

INSERT [dbo].[tb_Kundenstatus] ([KundenstatusID], [Kundenstatus]) VALUES (3, N'Geschäftskunde')
INSERT [dbo].[tb_Kundenstatus] ([KundenstatusID], [Kundenstatus]) VALUES (2, N'Kunde')
INSERT [dbo].[tb_Kundenstatus] ([KundenstatusID], [Kundenstatus]) VALUES (1, N'Neukunde')
SET IDENTITY_INSERT [dbo].[tb_Kundenstatus] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_Lagerstatus] ON 

INSERT [dbo].[tb_Lagerstatus] ([LagerstatusID], [Status]) VALUES (4, N'auf Lager')
INSERT [dbo].[tb_Lagerstatus] ([LagerstatusID], [Status]) VALUES (1, N'ausverkauft')
INSERT [dbo].[tb_Lagerstatus] ([LagerstatusID], [Status]) VALUES (3, N'bestellt')
INSERT [dbo].[tb_Lagerstatus] ([LagerstatusID], [Status]) VALUES (2, N'nicht verfügbar')
SET IDENTITY_INSERT [dbo].[tb_Lagerstatus] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_Noten] ON 

INSERT [dbo].[tb_Noten] ([NotenID], [Titel], [ISBN], [InstrumentenartID], [EK], [MWSt_7%], [VK], [LagerstatusID]) VALUES (1, N'Frühlingslieder', N'3270051805000806', 5, 25.0000, 7, 53.8000, 1)
INSERT [dbo].[tb_Noten] ([NotenID], [Titel], [ISBN], [InstrumentenartID], [EK], [MWSt_7%], [VK], [LagerstatusID]) VALUES (2, N'Gitarre für Anfänger', N'5176350000000255', 1, 15.0000, 7, 30.0000, 4)
INSERT [dbo].[tb_Noten] ([NotenID], [Titel], [ISBN], [InstrumentenartID], [EK], [MWSt_7%], [VK], [LagerstatusID]) VALUES (3, N'Bass Techniken', N'4054250010000262', 10, 23.0000, 7, 46.0000, 2)
INSERT [dbo].[tb_Noten] ([NotenID], [Titel], [ISBN], [InstrumentenartID], [EK], [MWSt_7%], [VK], [LagerstatusID]) VALUES (4, N'100 Instrumental Songs', N'6824060300000044', 2, 27.0000, 7, 55.0000, 3)
INSERT [dbo].[tb_Noten] ([NotenID], [Titel], [ISBN], [InstrumentenartID], [EK], [MWSt_7%], [VK], [LagerstatusID]) VALUES (5, N'Fröhliche Weihnachtszeit', N'4466270001000559', 4, 13.0000, 7, 27.0000, 3)
INSERT [dbo].[tb_Noten] ([NotenID], [Titel], [ISBN], [InstrumentenartID], [EK], [MWSt_7%], [VK], [LagerstatusID]) VALUES (6, N'Cajon und Rhythm Basics', N'1752052154000831', 9, 25.0000, 7, 53.8000, 4)
INSERT [dbo].[tb_Noten] ([NotenID], [Titel], [ISBN], [InstrumentenartID], [EK], [MWSt_7%], [VK], [LagerstatusID]) VALUES (7, N'Trumpet Pro', N'6464361359000897', 5, 44.9000, 7, 76.0000, 2)
SET IDENTITY_INSERT [dbo].[tb_Noten] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_NotenVerkauf] ON 

INSERT [dbo].[tb_NotenVerkauf] ([NotenVID], [NotenID], [BestellungID], [Anzahl]) VALUES (1, 1, 2, 2)
INSERT [dbo].[tb_NotenVerkauf] ([NotenVID], [NotenID], [BestellungID], [Anzahl]) VALUES (2, 2, 2, 3)
INSERT [dbo].[tb_NotenVerkauf] ([NotenVID], [NotenID], [BestellungID], [Anzahl]) VALUES (3, 3, 1, 2)
INSERT [dbo].[tb_NotenVerkauf] ([NotenVID], [NotenID], [BestellungID], [Anzahl]) VALUES (4, 5, 3, 1)
INSERT [dbo].[tb_NotenVerkauf] ([NotenVID], [NotenID], [BestellungID], [Anzahl]) VALUES (5, 1, 6, 1)
INSERT [dbo].[tb_NotenVerkauf] ([NotenVID], [NotenID], [BestellungID], [Anzahl]) VALUES (6, 7, 6, 1)
INSERT [dbo].[tb_NotenVerkauf] ([NotenVID], [NotenID], [BestellungID], [Anzahl]) VALUES (7, 5, 8, 1)
INSERT [dbo].[tb_NotenVerkauf] ([NotenVID], [NotenID], [BestellungID], [Anzahl]) VALUES (8, 1, 8, 1)
INSERT [dbo].[tb_NotenVerkauf] ([NotenVID], [NotenID], [BestellungID], [Anzahl]) VALUES (9, 6, 9, 7)
INSERT [dbo].[tb_NotenVerkauf] ([NotenVID], [NotenID], [BestellungID], [Anzahl]) VALUES (10, 3, 11, 10)
INSERT [dbo].[tb_NotenVerkauf] ([NotenVID], [NotenID], [BestellungID], [Anzahl]) VALUES (11, 1, 13, 1)
INSERT [dbo].[tb_NotenVerkauf] ([NotenVID], [NotenID], [BestellungID], [Anzahl]) VALUES (12, 2, 15, 3)
INSERT [dbo].[tb_NotenVerkauf] ([NotenVID], [NotenID], [BestellungID], [Anzahl]) VALUES (13, 4, 15, 2)
SET IDENTITY_INSERT [dbo].[tb_NotenVerkauf] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_Personal] ON 

INSERT [dbo].[tb_Personal] ([PersonalID], [Nachname], [Vorname], [Ort], [PLZ], [Strasse], [HausNr], [Tel], [Mobil], [Mail], [GebDat], [PositionID], [Kommentar]) VALUES (1, N'Blaschke', N'Reinwald', N'Frankfurt am Main', N'60486', N'Bergwerkstraße', N'73', N'069/99997527', N'', N'', CAST(N'1920-03-11' AS Date), 1, NULL)
INSERT [dbo].[tb_Personal] ([PersonalID], [Nachname], [Vorname], [Ort], [PLZ], [Strasse], [HausNr], [Tel], [Mobil], [Mail], [GebDat], [PositionID], [Kommentar]) VALUES (2, N'Siekmann', N'Katrein', N'Bad Karlshafen', N'34385', N'Am Damm', N'61', N'05672/49794597', N'0165/3899494', N'', CAST(N'1900-01-01' AS Date), 3, NULL)
INSERT [dbo].[tb_Personal] ([PersonalID], [Nachname], [Vorname], [Ort], [PLZ], [Strasse], [HausNr], [Tel], [Mobil], [Mail], [GebDat], [PositionID], [Kommentar]) VALUES (3, N'Seide', N'Catharina', N'Beckedorf', N'31699', N'Witzelstraße', N'93', N'05725/48828714', N'0167/2955247', N'catharina-seide@web.none', CAST(N'1909-01-10' AS Date), 5, NULL)
INSERT [dbo].[tb_Personal] ([PersonalID], [Nachname], [Vorname], [Ort], [PLZ], [Strasse], [HausNr], [Tel], [Mobil], [Mail], [GebDat], [PositionID], [Kommentar]) VALUES (4, N'Hopkins', N'Jolantha', N'Meisburg', N'54570', N'Kronackerstraße', N'86', N'06592/35956321', N'', N'jolantha.hopkins@justmail.none', CAST(N'2006-06-10' AS Date), 1, NULL)
INSERT [dbo].[tb_Personal] ([PersonalID], [Nachname], [Vorname], [Ort], [PLZ], [Strasse], [HausNr], [Tel], [Mobil], [Mail], [GebDat], [PositionID], [Kommentar]) VALUES (5, N'Schumann', N'Sieghilde', N'Bahlingen am Kaiserstuhl', N'79353', N'Riege', N'126', N'07663/93208324', N'0177/9112626', N'sieghilde.schumann@bestmail.none', CAST(N'1955-11-20' AS Date), 4, NULL)
INSERT [dbo].[tb_Personal] ([PersonalID], [Nachname], [Vorname], [Ort], [PLZ], [Strasse], [HausNr], [Tel], [Mobil], [Mail], [GebDat], [PositionID], [Kommentar]) VALUES (6, N'Schnitzler', N'Noah', N'Lemgo', N'32657', N'Ostlandstraße', N'41', N'05261/2641868', N'', N'', CAST(N'1900-01-01' AS Date), 2, NULL)
INSERT [dbo].[tb_Personal] ([PersonalID], [Nachname], [Vorname], [Ort], [PLZ], [Strasse], [HausNr], [Tel], [Mobil], [Mail], [GebDat], [PositionID], [Kommentar]) VALUES (7, N'Heyen', N'Lenard', N'Gries', N'66903', N'Hechinger Straße', N'139', N'06373/78501352', N'0173/1673304', N'', CAST(N'1930-04-25' AS Date), 1, NULL)
INSERT [dbo].[tb_Personal] ([PersonalID], [Nachname], [Vorname], [Ort], [PLZ], [Strasse], [HausNr], [Tel], [Mobil], [Mail], [GebDat], [PositionID], [Kommentar]) VALUES (8, N'Flechsig', N'Burgel', N'Hohenleipisch', N'04934', N'Albert-Schweitzer-Weg', N'140', N'03533/62616031', N'', N'bflechsig@bestmail.none', CAST(N'2000-04-26' AS Date), 6, NULL)
INSERT [dbo].[tb_Personal] ([PersonalID], [Nachname], [Vorname], [Ort], [PLZ], [Strasse], [HausNr], [Tel], [Mobil], [Mail], [GebDat], [PositionID], [Kommentar]) VALUES (9, N'Kotulla', N'Hanswerner', N'Ramstein-Miesenbach', N'66877', N'Moltkestraße', N'191', N'06371/74302770', N'0155/1395791', N'h_kotulla@private.none', CAST(N'1900-01-01' AS Date), 1, NULL)
SET IDENTITY_INSERT [dbo].[tb_Personal] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_Position] ON 

INSERT [dbo].[tb_Position] ([PostitionID], [Position]) VALUES (4, N'Buchhalter')
INSERT [dbo].[tb_Position] ([PostitionID], [Position]) VALUES (2, N'Inhaber')
INSERT [dbo].[tb_Position] ([PostitionID], [Position]) VALUES (3, N'Lagerist')
INSERT [dbo].[tb_Position] ([PostitionID], [Position]) VALUES (5, N'Marketingmitarbeiter')
INSERT [dbo].[tb_Position] ([PostitionID], [Position]) VALUES (6, N'Service')
INSERT [dbo].[tb_Position] ([PostitionID], [Position]) VALUES (1, N'Verkäufer')
SET IDENTITY_INSERT [dbo].[tb_Position] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_Rechnung] ON 

INSERT [dbo].[tb_Rechnung] ([RechnungID], [Datum], [BestellungID], [PesonalID]) VALUES (1, CAST(N'2021-10-04' AS Date), 1, 1)
INSERT [dbo].[tb_Rechnung] ([RechnungID], [Datum], [BestellungID], [PesonalID]) VALUES (2, CAST(N'2021-12-20' AS Date), 2, 4)
INSERT [dbo].[tb_Rechnung] ([RechnungID], [Datum], [BestellungID], [PesonalID]) VALUES (3, CAST(N'2022-01-16' AS Date), 3, 4)
INSERT [dbo].[tb_Rechnung] ([RechnungID], [Datum], [BestellungID], [PesonalID]) VALUES (4, CAST(N'2022-01-01' AS Date), 4, 7)
INSERT [dbo].[tb_Rechnung] ([RechnungID], [Datum], [BestellungID], [PesonalID]) VALUES (5, CAST(N'2021-12-18' AS Date), 5, 9)
INSERT [dbo].[tb_Rechnung] ([RechnungID], [Datum], [BestellungID], [PesonalID]) VALUES (6, CAST(N'2021-12-12' AS Date), 6, 3)
INSERT [dbo].[tb_Rechnung] ([RechnungID], [Datum], [BestellungID], [PesonalID]) VALUES (7, CAST(N'2022-01-05' AS Date), 7, 2)
INSERT [dbo].[tb_Rechnung] ([RechnungID], [Datum], [BestellungID], [PesonalID]) VALUES (8, CAST(N'2021-12-28' AS Date), 8, 3)
INSERT [dbo].[tb_Rechnung] ([RechnungID], [Datum], [BestellungID], [PesonalID]) VALUES (9, CAST(N'2022-01-19' AS Date), 9, 1)
INSERT [dbo].[tb_Rechnung] ([RechnungID], [Datum], [BestellungID], [PesonalID]) VALUES (11, CAST(N'2022-01-10' AS Date), 10, 1)
INSERT [dbo].[tb_Rechnung] ([RechnungID], [Datum], [BestellungID], [PesonalID]) VALUES (12, CAST(N'2022-01-09' AS Date), 12, 2)
INSERT [dbo].[tb_Rechnung] ([RechnungID], [Datum], [BestellungID], [PesonalID]) VALUES (13, CAST(N'2021-03-05' AS Date), 13, 1)
INSERT [dbo].[tb_Rechnung] ([RechnungID], [Datum], [BestellungID], [PesonalID]) VALUES (18, CAST(N'2022-01-06' AS Date), 15, 5)
INSERT [dbo].[tb_Rechnung] ([RechnungID], [Datum], [BestellungID], [PesonalID]) VALUES (19, CAST(N'2021-11-02' AS Date), 11, 2)
SET IDENTITY_INSERT [dbo].[tb_Rechnung] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_Zubehoer] ON 

INSERT [dbo].[tb_Zubehoer] ([ZubehoerID], [Zubehoer], [EK], [MWSt_19%], [VK], [LagerstatusID], [InstrumentenartID]) VALUES (1, N'LED Pianoleuchte', 20.0000, 19, 28.0000, 1, 4)
INSERT [dbo].[tb_Zubehoer] ([ZubehoerID], [Zubehoer], [EK], [MWSt_19%], [VK], [LagerstatusID], [InstrumentenartID]) VALUES (2, N'Gitarrengurte', 30.0000, 19, 39.0000, 2, 1)
INSERT [dbo].[tb_Zubehoer] ([ZubehoerID], [Zubehoer], [EK], [MWSt_19%], [VK], [LagerstatusID], [InstrumentenartID]) VALUES (3, N'Patchkabel', 4.0000, 19, 7.0000, 2, 1)
INSERT [dbo].[tb_Zubehoer] ([ZubehoerID], [Zubehoer], [EK], [MWSt_19%], [VK], [LagerstatusID], [InstrumentenartID]) VALUES (4, N'Basspedale', 500.0000, 19, 759.0000, 3, 11)
INSERT [dbo].[tb_Zubehoer] ([ZubehoerID], [Zubehoer], [EK], [MWSt_19%], [VK], [LagerstatusID], [InstrumentenartID]) VALUES (5, N'Drum Shields', 900.0000, 19, 1130.0000, 4, 3)
INSERT [dbo].[tb_Zubehoer] ([ZubehoerID], [Zubehoer], [EK], [MWSt_19%], [VK], [LagerstatusID], [InstrumentenartID]) VALUES (6, N'Drum Sticks', 10.0000, 19, 15.0000, 3, 3)
INSERT [dbo].[tb_Zubehoer] ([ZubehoerID], [Zubehoer], [EK], [MWSt_19%], [VK], [LagerstatusID], [InstrumentenartID]) VALUES (7, N'Rosette aus Holz', 1.0000, 19, 3.0000, 2, 9)
INSERT [dbo].[tb_Zubehoer] ([ZubehoerID], [Zubehoer], [EK], [MWSt_19%], [VK], [LagerstatusID], [InstrumentenartID]) VALUES (8, N'Transporthölle', 40.0000, 19, 53.0000, 2, 9)
INSERT [dbo].[tb_Zubehoer] ([ZubehoerID], [Zubehoer], [EK], [MWSt_19%], [VK], [LagerstatusID], [InstrumentenartID]) VALUES (9, N'Bass Mechanik', 20.0000, 19, 29.0000, 3, 10)
SET IDENTITY_INSERT [dbo].[tb_Zubehoer] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_ZubehoerVerkauf] ON 

INSERT [dbo].[tb_ZubehoerVerkauf] ([ZubehoerVID], [ZubehoerID], [Anzahl], [BestellungID]) VALUES (1, 1, 1, 5)
INSERT [dbo].[tb_ZubehoerVerkauf] ([ZubehoerVID], [ZubehoerID], [Anzahl], [BestellungID]) VALUES (2, 3, 2, 4)
INSERT [dbo].[tb_ZubehoerVerkauf] ([ZubehoerVID], [ZubehoerID], [Anzahl], [BestellungID]) VALUES (3, 7, 1, 3)
INSERT [dbo].[tb_ZubehoerVerkauf] ([ZubehoerVID], [ZubehoerID], [Anzahl], [BestellungID]) VALUES (4, 9, 4, 1)
INSERT [dbo].[tb_ZubehoerVerkauf] ([ZubehoerVID], [ZubehoerID], [Anzahl], [BestellungID]) VALUES (5, 5, 1, 7)
INSERT [dbo].[tb_ZubehoerVerkauf] ([ZubehoerVID], [ZubehoerID], [Anzahl], [BestellungID]) VALUES (6, 6, 4, 7)
INSERT [dbo].[tb_ZubehoerVerkauf] ([ZubehoerVID], [ZubehoerID], [Anzahl], [BestellungID]) VALUES (7, 8, 8, 9)
INSERT [dbo].[tb_ZubehoerVerkauf] ([ZubehoerVID], [ZubehoerID], [Anzahl], [BestellungID]) VALUES (8, 4, 1, 10)
INSERT [dbo].[tb_ZubehoerVerkauf] ([ZubehoerVID], [ZubehoerID], [Anzahl], [BestellungID]) VALUES (9, 3, 1, 10)
INSERT [dbo].[tb_ZubehoerVerkauf] ([ZubehoerVID], [ZubehoerID], [Anzahl], [BestellungID]) VALUES (10, 9, 1, 10)
INSERT [dbo].[tb_ZubehoerVerkauf] ([ZubehoerVID], [ZubehoerID], [Anzahl], [BestellungID]) VALUES (11, 3, 7, 11)
INSERT [dbo].[tb_ZubehoerVerkauf] ([ZubehoerVID], [ZubehoerID], [Anzahl], [BestellungID]) VALUES (12, 9, 4, 11)
INSERT [dbo].[tb_ZubehoerVerkauf] ([ZubehoerVID], [ZubehoerID], [Anzahl], [BestellungID]) VALUES (13, 7, 1, 12)
INSERT [dbo].[tb_ZubehoerVerkauf] ([ZubehoerVID], [ZubehoerID], [Anzahl], [BestellungID]) VALUES (14, 2, 1, 12)
INSERT [dbo].[tb_ZubehoerVerkauf] ([ZubehoerVID], [ZubehoerID], [Anzahl], [BestellungID]) VALUES (15, 8, 1, 13)
INSERT [dbo].[tb_ZubehoerVerkauf] ([ZubehoerVID], [ZubehoerID], [Anzahl], [BestellungID]) VALUES (16, 2, 3, 15)
INSERT [dbo].[tb_ZubehoerVerkauf] ([ZubehoerVID], [ZubehoerID], [Anzahl], [BestellungID]) VALUES (17, 7, 7, 15)
SET IDENTITY_INSERT [dbo].[tb_ZubehoerVerkauf] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_Zustand] ON 

INSERT [dbo].[tb_Zustand] ([ZustandID], [Zustand]) VALUES (1, N'alt')
INSERT [dbo].[tb_Zustand] ([ZustandID], [Zustand]) VALUES (2, N'gebraucht')
INSERT [dbo].[tb_Zustand] ([ZustandID], [Zustand]) VALUES (3, N'nicht verkaufbar')
INSERT [dbo].[tb_Zustand] ([ZustandID], [Zustand]) VALUES (4, N'retour')
SET IDENTITY_INSERT [dbo].[tb_Zustand] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_tb_Hersteller]    Script Date: 21.01.2022 13:35:05 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_tb_Hersteller] ON [dbo].[tb_Hersteller]
(
	[Hersteller] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_tb_Instrumentenart]    Script Date: 21.01.2022 13:35:05 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_tb_Instrumentenart] ON [dbo].[tb_Instrumentenart]
(
	[InstrBezeichnung] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_tb_Kundenstatus]    Script Date: 21.01.2022 13:35:05 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_tb_Kundenstatus] ON [dbo].[tb_Kundenstatus]
(
	[Kundenstatus] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_tb_Lagerstatus]    Script Date: 21.01.2022 13:35:05 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_tb_Lagerstatus] ON [dbo].[tb_Lagerstatus]
(
	[Status] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_tb_Noten]    Script Date: 21.01.2022 13:35:05 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_tb_Noten] ON [dbo].[tb_Noten]
(
	[ISBN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_tb_Position]    Script Date: 21.01.2022 13:35:05 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_tb_Position] ON [dbo].[tb_Position]
(
	[Position] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_tb_Zubehoer]    Script Date: 21.01.2022 13:35:05 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_tb_Zubehoer] ON [dbo].[tb_Zubehoer]
(
	[Zubehoer] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_tb_Zustand]    Script Date: 21.01.2022 13:35:05 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_tb_Zustand] ON [dbo].[tb_Zustand]
(
	[Zustand] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PreisInstrumenteLog] ADD  DEFAULT (getdate()) FOR [EditOn]
GO
ALTER TABLE [dbo].[PreisInstrumenteLog] ADD  DEFAULT (original_login()) FOR [EditUser]
GO
ALTER TABLE [dbo].[tb_Instrumente] ADD  CONSTRAINT [DF_tb_Instrumente_MWSt_19%]  DEFAULT ('19') FOR [MWSt_19%]
GO
ALTER TABLE [dbo].[tb_Noten] ADD  DEFAULT ('7') FOR [MWSt_7%]
GO
ALTER TABLE [dbo].[tb_Zubehoer] ADD  CONSTRAINT [DF_tb_Zubehoer_MWSt_19%]  DEFAULT ('19') FOR [MWSt_19%]
GO
ALTER TABLE [dbo].[tb_Bestellung]  WITH CHECK ADD  CONSTRAINT [FK_tb_Bestellung_tb_Kunden] FOREIGN KEY([KundenID])
REFERENCES [dbo].[tb_Kunden] ([KundenID])
GO
ALTER TABLE [dbo].[tb_Bestellung] CHECK CONSTRAINT [FK_tb_Bestellung_tb_Kunden]
GO
ALTER TABLE [dbo].[tb_HerstellerUebersicht]  WITH CHECK ADD  CONSTRAINT [FK_tb_HerstellerUebersicht_tb_Hersteller] FOREIGN KEY([HerstellerID])
REFERENCES [dbo].[tb_Hersteller] ([HerstellerID])
GO
ALTER TABLE [dbo].[tb_HerstellerUebersicht] CHECK CONSTRAINT [FK_tb_HerstellerUebersicht_tb_Hersteller]
GO
ALTER TABLE [dbo].[tb_HerstellerUebersicht]  WITH CHECK ADD  CONSTRAINT [FK_tb_HerstellerUebersicht_tb_Instrumentenart] FOREIGN KEY([InstrumentenartID])
REFERENCES [dbo].[tb_Instrumentenart] ([InstrumentenartID])
GO
ALTER TABLE [dbo].[tb_HerstellerUebersicht] CHECK CONSTRAINT [FK_tb_HerstellerUebersicht_tb_Instrumentenart]
GO
ALTER TABLE [dbo].[tb_Instrumente]  WITH CHECK ADD  CONSTRAINT [FK_tb_Instrumente_tb_Hersteller] FOREIGN KEY([HerstellerID])
REFERENCES [dbo].[tb_Hersteller] ([HerstellerID])
GO
ALTER TABLE [dbo].[tb_Instrumente] CHECK CONSTRAINT [FK_tb_Instrumente_tb_Hersteller]
GO
ALTER TABLE [dbo].[tb_Instrumente]  WITH CHECK ADD  CONSTRAINT [FK_tb_Instrumente_tb_Instrumentenart] FOREIGN KEY([InstrumentenartID])
REFERENCES [dbo].[tb_Instrumentenart] ([InstrumentenartID])
GO
ALTER TABLE [dbo].[tb_Instrumente] CHECK CONSTRAINT [FK_tb_Instrumente_tb_Instrumentenart]
GO
ALTER TABLE [dbo].[tb_Instrumente]  WITH CHECK ADD  CONSTRAINT [FK_tb_Instrumente_tb_Lagerstatus] FOREIGN KEY([LagerstatusID])
REFERENCES [dbo].[tb_Lagerstatus] ([LagerstatusID])
GO
ALTER TABLE [dbo].[tb_Instrumente] CHECK CONSTRAINT [FK_tb_Instrumente_tb_Lagerstatus]
GO
ALTER TABLE [dbo].[tb_Instrumente]  WITH CHECK ADD  CONSTRAINT [FK_tb_Instrumente_tb_Zustand] FOREIGN KEY([ZustandID])
REFERENCES [dbo].[tb_Zustand] ([ZustandID])
GO
ALTER TABLE [dbo].[tb_Instrumente] CHECK CONSTRAINT [FK_tb_Instrumente_tb_Zustand]
GO
ALTER TABLE [dbo].[tb_InstrumentenVerkauf]  WITH CHECK ADD  CONSTRAINT [FK_tb_InstrumentenVerkauf_tb_Bestellung] FOREIGN KEY([BestellungID])
REFERENCES [dbo].[tb_Bestellung] ([BestellungID])
GO
ALTER TABLE [dbo].[tb_InstrumentenVerkauf] CHECK CONSTRAINT [FK_tb_InstrumentenVerkauf_tb_Bestellung]
GO
ALTER TABLE [dbo].[tb_InstrumentenVerkauf]  WITH CHECK ADD  CONSTRAINT [FK_tb_InstrumentenVerkauf_tb_Instrumente] FOREIGN KEY([InstrumentenID])
REFERENCES [dbo].[tb_Instrumente] ([InstrumentenID])
GO
ALTER TABLE [dbo].[tb_InstrumentenVerkauf] CHECK CONSTRAINT [FK_tb_InstrumentenVerkauf_tb_Instrumente]
GO
ALTER TABLE [dbo].[tb_Kunden]  WITH CHECK ADD  CONSTRAINT [FK_tb_Kunden_tb_Kundenstatus] FOREIGN KEY([KundenstatusID])
REFERENCES [dbo].[tb_Kundenstatus] ([KundenstatusID])
GO
ALTER TABLE [dbo].[tb_Kunden] CHECK CONSTRAINT [FK_tb_Kunden_tb_Kundenstatus]
GO
ALTER TABLE [dbo].[tb_Noten]  WITH CHECK ADD  CONSTRAINT [FK_tb_Noten_tb_Instrumentenart] FOREIGN KEY([InstrumentenartID])
REFERENCES [dbo].[tb_Instrumentenart] ([InstrumentenartID])
GO
ALTER TABLE [dbo].[tb_Noten] CHECK CONSTRAINT [FK_tb_Noten_tb_Instrumentenart]
GO
ALTER TABLE [dbo].[tb_Noten]  WITH CHECK ADD  CONSTRAINT [FK_tb_Noten_tb_Lagerstatus] FOREIGN KEY([LagerstatusID])
REFERENCES [dbo].[tb_Lagerstatus] ([LagerstatusID])
GO
ALTER TABLE [dbo].[tb_Noten] CHECK CONSTRAINT [FK_tb_Noten_tb_Lagerstatus]
GO
ALTER TABLE [dbo].[tb_NotenVerkauf]  WITH CHECK ADD  CONSTRAINT [FK_tb_NotenVerkauf_tb_Bestellung] FOREIGN KEY([BestellungID])
REFERENCES [dbo].[tb_Bestellung] ([BestellungID])
GO
ALTER TABLE [dbo].[tb_NotenVerkauf] CHECK CONSTRAINT [FK_tb_NotenVerkauf_tb_Bestellung]
GO
ALTER TABLE [dbo].[tb_NotenVerkauf]  WITH CHECK ADD  CONSTRAINT [FK_tb_NotenVerkauf_tb_Noten] FOREIGN KEY([NotenID])
REFERENCES [dbo].[tb_Noten] ([NotenID])
GO
ALTER TABLE [dbo].[tb_NotenVerkauf] CHECK CONSTRAINT [FK_tb_NotenVerkauf_tb_Noten]
GO
ALTER TABLE [dbo].[tb_Personal]  WITH CHECK ADD  CONSTRAINT [FK_tb_Personal_tb_Position] FOREIGN KEY([PositionID])
REFERENCES [dbo].[tb_Position] ([PostitionID])
GO
ALTER TABLE [dbo].[tb_Personal] CHECK CONSTRAINT [FK_tb_Personal_tb_Position]
GO
ALTER TABLE [dbo].[tb_Rechnung]  WITH CHECK ADD  CONSTRAINT [FK_tb_Rechnung_tb_Bestellung] FOREIGN KEY([BestellungID])
REFERENCES [dbo].[tb_Bestellung] ([BestellungID])
GO
ALTER TABLE [dbo].[tb_Rechnung] CHECK CONSTRAINT [FK_tb_Rechnung_tb_Bestellung]
GO
ALTER TABLE [dbo].[tb_Rechnung]  WITH CHECK ADD  CONSTRAINT [FK_tb_Rechnung_tb_Personal] FOREIGN KEY([PesonalID])
REFERENCES [dbo].[tb_Personal] ([PersonalID])
GO
ALTER TABLE [dbo].[tb_Rechnung] CHECK CONSTRAINT [FK_tb_Rechnung_tb_Personal]
GO
ALTER TABLE [dbo].[tb_Zubehoer]  WITH CHECK ADD  CONSTRAINT [FK_tb_Zubehoer_tb_Instrumentenart] FOREIGN KEY([InstrumentenartID])
REFERENCES [dbo].[tb_Instrumentenart] ([InstrumentenartID])
GO
ALTER TABLE [dbo].[tb_Zubehoer] CHECK CONSTRAINT [FK_tb_Zubehoer_tb_Instrumentenart]
GO
ALTER TABLE [dbo].[tb_Zubehoer]  WITH CHECK ADD  CONSTRAINT [FK_tb_Zubehoer_tb_Lagerstatus] FOREIGN KEY([LagerstatusID])
REFERENCES [dbo].[tb_Lagerstatus] ([LagerstatusID])
GO
ALTER TABLE [dbo].[tb_Zubehoer] CHECK CONSTRAINT [FK_tb_Zubehoer_tb_Lagerstatus]
GO
ALTER TABLE [dbo].[tb_ZubehoerVerkauf]  WITH CHECK ADD  CONSTRAINT [FK_tb_ZubehoerVerkauf_tb_Bestellung] FOREIGN KEY([BestellungID])
REFERENCES [dbo].[tb_Bestellung] ([BestellungID])
GO
ALTER TABLE [dbo].[tb_ZubehoerVerkauf] CHECK CONSTRAINT [FK_tb_ZubehoerVerkauf_tb_Bestellung]
GO
ALTER TABLE [dbo].[tb_ZubehoerVerkauf]  WITH CHECK ADD  CONSTRAINT [FK_tb_ZubehoerVerkauf_tb_Zubehoer] FOREIGN KEY([ZubehoerID])
REFERENCES [dbo].[tb_Zubehoer] ([ZubehoerID])
GO
ALTER TABLE [dbo].[tb_ZubehoerVerkauf] CHECK CONSTRAINT [FK_tb_ZubehoerVerkauf_tb_Zubehoer]
GO
ALTER TABLE [dbo].[tb_Bestellung]  WITH CHECK ADD  CONSTRAINT [CK_tb_Bestellung_Tag] CHECK  (([BestellDatum]<=getdate()))
GO
ALTER TABLE [dbo].[tb_Bestellung] CHECK CONSTRAINT [CK_tb_Bestellung_Tag]
GO
ALTER TABLE [dbo].[tb_Instrumente]  WITH CHECK ADD  CONSTRAINT [CK_tb_Instrumente] CHECK  (([EK]<[VK]))
GO
ALTER TABLE [dbo].[tb_Instrumente] CHECK CONSTRAINT [CK_tb_Instrumente]
GO
ALTER TABLE [dbo].[tb_Noten]  WITH CHECK ADD  CONSTRAINT [CK_tb_EK_VK] CHECK  (([EK]<[VK]))
GO
ALTER TABLE [dbo].[tb_Noten] CHECK CONSTRAINT [CK_tb_EK_VK]
GO
ALTER TABLE [dbo].[tb_Rechnung]  WITH CHECK ADD  CONSTRAINT [CK_tb_Rechnung_Tag] CHECK  (([Datum]<=getdate()))
GO
ALTER TABLE [dbo].[tb_Rechnung] CHECK CONSTRAINT [CK_tb_Rechnung_Tag]
GO
ALTER TABLE [dbo].[tb_Zubehoer]  WITH CHECK ADD  CONSTRAINT [CK_tb_Zubehoer] CHECK  (([EK]<[VK]))
GO
ALTER TABLE [dbo].[tb_Zubehoer] CHECK CONSTRAINT [CK_tb_Zubehoer]
GO
/****** Object:  StoredProcedure [dbo].[sp_Backup_MusicStore]    Script Date: 21.01.2022 13:35:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Gruppe D
-- Create date: 18.01.2022
-- Description:	BackUP the database MusicStore
-- =============================================
CREATE   PROCEDURE [dbo].[sp_Backup_MusicStore]
AS 
BEGIN

	SET NOCOUNT ON;

    BACKUP DATABASE [MusicStore] TO DISK = 
	'D:\SQL Kurs\050-Projekt\SQL-Projektbezeichnung-Gruppe-D\006-BackUp\MusicStore-last-backup.bak';

END 
GO
ALTER AUTHORIZATION ON [dbo].[sp_Backup_MusicStore] TO  SCHEMA OWNER 
GO
/****** Object:  StoredProcedure [dbo].[sp_Backup_MusicStore_mit_Zeitstempel]    Script Date: 21.01.2022 13:35:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Gruppe D
-- Create date: 19.01.2022
-- Description:	BackUP mit Zeiteingabe
-- =============================================
CREATE   PROCEDURE [dbo].[sp_Backup_MusicStore_mit_Zeitstempel]
AS
BEGIN
	SET NOCOUNT ON;
	
	DECLARE @backupFile NVARCHAR(MAX);
	SET @backupFile = 'D:\SQL Kurs\050-Projekt\SQL-Projektbezeichnung-Gruppe-D\006-BackUp\MusicStoreBackUp-' 
	+ [dbo].[sf_Zeitstempel]() 
	+ '.bak'
   
   BACKUP DATABASE [MusicStore] TO DISK = @backupFile;
	
END
GO
ALTER AUTHORIZATION ON [dbo].[sp_Backup_MusicStore_mit_Zeitstempel] TO  SCHEMA OWNER 
GO
/****** Object:  StoredProcedure [dbo].[sp_Backup_MusicStore_mit_Zeitstempel_und_Param]    Script Date: 21.01.2022 13:35:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Gruppe D
-- Create date: 19.01.2022
-- Description:	BackUP mit Zeiteingabe und Parameter
-- =============================================
CREATE   PROCEDURE [dbo].[sp_Backup_MusicStore_mit_Zeitstempel_und_Param]
	@Pfad nvarchar(MAX)

AS
BEGIN
	SET NOCOUNT ON;
	
	DECLARE @backupFile NVARCHAR(MAX);
	SET @backupFile = @Pfad + 
					  'MusicStoreBackUp-' + [dbo].[sf_Zeitstempel]() + '.bak';
   
    BACKUP DATABASE [MusicStore] TO DISK = @backupFile;
	
END
GO
ALTER AUTHORIZATION ON [dbo].[sp_Backup_MusicStore_mit_Zeitstempel_und_Param] TO  SCHEMA OWNER 
GO
/****** Object:  StoredProcedure [dbo].[sp_Backup_MusicStore_mit_Zeitstempel_und_Param_Output]    Script Date: 21.01.2022 13:35:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Gruppe D
-- Create date: 19.01.2022
-- Description:	Backup MusicStore Datenbank mit Zeitstempel, Output, Parameter
-- =============================================
CREATE   PROCEDURE [dbo].[sp_Backup_MusicStore_mit_Zeitstempel_und_Param_Output]
	@Pfad nvarchar(MAX), 
	-- aktueller gewuenschter @Pfad: 'D:\SQL Kurs\050-Projekt\SQL-Projektbezeichnung-Gruppe-D\006-BackUp\'
	@Feedback nvarchar(MAX) OUTPUT
AS
BEGIN

	SET NOCOUNT ON;
	
	DECLARE @backupFile NVARCHAR(MAX); -- Name der zur Speicherung Datenbank
	SET @backupFile = @Pfad + 
					  'MusicStore-' + [dbo].[sf_Zeitstempel]() + '.bak';
   
	BACKUP DATABASE [MusicStore] TO DISK = @backupFile;

	SET @Feedback = 'Die Datenbank wurde erfolgraich gespeichert.';
	
END
GO
ALTER AUTHORIZATION ON [dbo].[sp_Backup_MusicStore_mit_Zeitstempel_und_Param_Output] TO  SCHEMA OWNER 
GO
/****** Object:  StoredProcedure [dbo].[sp_Backup_MusicStore_mit_Zeitstempel_und_Param_OutputUndFehlermeldung]    Script Date: 21.01.2022 13:35:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Gruppe D
-- Create date: 19.01.2022
-- Description:	BackUp der Datenbank mit Eingaben von Zeit, Output und Fehlermeldungen
-- =============================================
CREATE   PROCEDURE [dbo].[sp_Backup_MusicStore_mit_Zeitstempel_und_Param_OutputUndFehlermeldung]
	@Pfad nvarchar(MAX),	-- @Pfad 'D:\SQL Kurs\050-Projekt\SQL-Projektbezeichnung-Gruppe-D\006-BackUp\MusicStore-last-backup.bak';

	@Feedback nvarchar(MAX) OUTPUT
AS
BEGIN
	SET NOCOUNT ON;

	BEGIN TRY
	
		DECLARE @backupFile NVARCHAR(MAX); -- Name der Datenbank
		SET @backupFile = @Pfad + 
						  'MusicStore-' + [dbo].[sf_Zeitstempel]() + '.bak';
   
		BACKUP DATABASE [MusicStore] TO DISK = @backupFile;
		SET @Feedback = 'Die Datenbank wurde erfolgraich gespeichert.';
	END TRY
	BEGIN CATCH	

		SET @Feedback = ERROR_MESSAGE() 
						+ ' Fehler Nr. ' + CONVERT(varchar, ERROR_NUMBER())
						+ ' Prozedur: '  + ERROR_PROCEDURE()
						+ ' Zeile Nr.: ' + CONVERT(varchar,  ERROR_LINE()) ;	

	END CATCH
	
END
GO
ALTER AUTHORIZATION ON [dbo].[sp_Backup_MusicStore_mit_Zeitstempel_und_Param_OutputUndFehlermeldung] TO  SCHEMA OWNER 
GO
/****** Object:  StoredProcedure [dbo].[sp_Gesamtpreis_pro_Bestellung]    Script Date: 21.01.2022 13:35:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Gruppe D
-- Create date: 19.01.2022
-- Description:	Der Gesamtpreis pro Bestellung rechnen
-- =============================================
CREATE PROCEDURE [dbo].[sp_Gesamtpreis_pro_Bestellung]
-- Globale Variablen deklarieren
	@BestellungID int,
	@Gesamt money OUTPUT,
	-----
	@Erfolg bit OUTPUT, 
	@Feedback VARCHAR(MAX) OUTPUT

AS
BEGIN
	SET NOCOUNT ON;
-- Hilsfvariablen deklarieren
	SET @Erfolg = 1;
	SET @Feedback = 'Alles OK!';

-- Start Fehlerbehandlung	
BEGIN TRY 

/*Zusammenaddieren der einzelnen Rückgabewerte der Skalarfuntkionen, zur Ermittlung des Gesamtpreises, 
(Preis von Instrumenten, Noten und Zubehoer). Die Funktionen muessen vorher angelegt werden*/
		SET @Gesamt = ([dbo].[sf_MusInstr_Gesamtpreis_Pro_Bestellung](@BestellungID) 
		+ dbo.sf_MusNoten_Gesamtpreis_Pro_Bestellung(@BestellungID) +	
		dbo.sf_MusZubehoer_Gesamtpreis_Pro_Bestellung(@BestellungID));

END TRY 

	BEGIN CATCH
		SET @Erfolg = 0; -- kein Erfolg

-- Ausgabe der Systemfunktion 
		SET @Feedback = 
			ERROR_MESSAGE() + ' Fehler Nr. '+ CONVERT(varchar, ERROR_NUMBER())
						+ ' Prozedur: '  + ERROR_PROCEDURE()
						+ ' Zeile Nr.: ' + CONVERT(varchar,  ERROR_LINE());
	END CATCH;    
END
GO
ALTER AUTHORIZATION ON [dbo].[sp_Gesamtpreis_pro_Bestellung] TO  SCHEMA OWNER 
GO
/****** Object:  StoredProcedure [dbo].[sp_InstrumentenVerfuegbarkeit_ID]    Script Date: 21.01.2022 13:35:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Gruppe D
-- Create date: 19.01.2022
-- Description:	die Prozedur soll Eingangsparameter prüfen 
--             und Daten in Tabelle 'Projektzuordnung' hinzufügen
-- =============================================
CREATE     PROCEDURE [dbo].[sp_InstrumentenVerfuegbarkeit_ID] 
-- Globale Variablen deklarieren
	@InstrumentenID int,
	-----
	@Erfolg int OUTPUT, 
	@Feedback varchar(MAX) OUTPUT

AS
BEGIN
	SET NOCOUNT ON;
-- Hilsfvariablen deklarieren
	DECLARE @msg AS nvarchar(MAX);
	DECLARE @CheckResult int;
	DECLARE @Bezeichnung nvarchar(70);
	-------------------------------------------------------------------	
	BEGIN TRY 
		SET @Erfolg = 1;
		SET @Feedback = 'Das Instrument ist auf Lager';

		-- Das Instrument ist auf Lager
		SET @CheckResult = dbo.sf_InstrumentenVerfuegbarkeit_ID(@InstrumentenID);
		
		-- @InstrumentenID befindet sich in der Datenbank nicht
		IF @CheckResult IS NULL
			THROW 50002, 'Die InstrumentenID existiert nicht.', 0;
			
		-- Das Instrument ist nicht auf Lager
		IF @CheckResult = 1
			THROW 50003, 'Das Instrument ist ausverkauft, bitte bestellen Sie es wieder', 0;

		IF @CheckResult = 2
			THROW 50004, 'Das Instrument ist ausverkauft und noch nicht verfügbar, in 3 Tage die Verfügbarkeit prüfen!', 0;
		
		IF @CheckResult = 3
		BEGIN
			SELECT  @Bezeichnung = Bezeichnung
			FROM tb_Instrumente
			WHERE InstrumentenID = @InstrumentenID;
		SET @msg = 'Das Instrument' +' '+ @Bezeichnung + ' '+'mit der Nummer:'+ ' '+
		CONVERT(varchar(10), @InstrumentenID)+ ' ' + 'ist schon bestellt.';		
			THROW 50001, @msg, 1;
		END

		-- Das Instrument besitzt kein Lagerstatus
		IF @CheckResult = 0
			THROW 50006, 'Es wurde kein Lagerstauts des Instrumentes eingegeben', 0;

	END TRY 
	BEGIN CATCH
		SET @Erfolg = 0; -- kein Erfolg --

-- Ausgabe der Systemfunktion 
		SET @Feedback = 
			ERROR_MESSAGE() + ' Fehler Nr. '+ CONVERT(varchar, ERROR_NUMBER())
						+ ' Prozedur: '  + ERROR_PROCEDURE()
						+ ' Zeile Nr.: ' + CONVERT(varchar,  ERROR_LINE());
	END CATCH;    
END
GO
ALTER AUTHORIZATION ON [dbo].[sp_InstrumentenVerfuegbarkeit_ID] TO  SCHEMA OWNER 
GO
/****** Object:  Trigger [dbo].[tr_PreisInstrumenteLogUPDATE]    Script Date: 21.01.2022 13:35:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Gruppe D
-- Create date: 20.01.2022
-- Description: Trigger wird aufgelöst, wenn der Preis in der tb_Instrument geaendert wird
-- =============================================
CREATE   TRIGGER [dbo].[tr_PreisInstrumenteLogUPDATE]
   ON [dbo].[tb_Instrumente] 
   FOR UPDATE
AS 
BEGIN
	SET NOCOUNT ON;

	-- Protokollieren von Preisänderungen
	INSERT INTO [dbo].[PreisInstrumenteLog]
		   (Mode, InstrumentenID, Bezeichnung, InstrumentenArtID, HerstellerID, VKAlt, VK)
	SELECT 'U', InstrumentenID,  Bezeichnung, InstrumentenArtID, HerstellerID,
	-- Beispiel nur für VK, genau so kann man auch für Nachname, Vorname etc. programmieren
			(SELECT VK FROM deleted), -- Wert alt
			(SELECT VK FROM inserted) -- Wert neu
	FROM deleted; -- es geht auch FROM inserted

END
GO
ALTER TABLE [dbo].[tb_Instrumente] ENABLE TRIGGER [tr_PreisInstrumenteLogUPDATE]
GO
/****** Object:  Trigger [dbo].[tr_PreisInstrumentenLogDELETE]    Script Date: 21.01.2022 13:35:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Gruppe D
-- Create:      20.01.2022
-- Description:	Tregger wird ausgeloest, wenn Zeilen in tb_Instrumente geloescht werden soll
-- =============================================
CREATE   TRIGGER [dbo].[tr_PreisInstrumentenLogDELETE] 
   ON [dbo].[tb_Instrumente] 
   FOR DELETE
AS 
BEGIN

	SET NOCOUNT ON;

	INSERT INTO [dbo].[PreisInstrumenteLog]
		   (Mode, InstrumentenID, Bezeichnung, InstrumentenArtID, HerstellerID)
	SELECT 'D', InstrumentenID,  Bezeichnung, InstrumentenartID, HerstellerID
	FROM deleted;


END
GO
ALTER TABLE [dbo].[tb_Instrumente] ENABLE TRIGGER [tr_PreisInstrumentenLogDELETE]
GO
/****** Object:  Trigger [dbo].[tr_PreisLogInstrumente_INSERT]    Script Date: 21.01.2022 13:35:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Gruppe D
-- Create date: 19.01.2022
-- Description: Trigger wird ausgeloest, wenn neue Datensätze zur tb_Instrumente hinzugefuegt werden
-- =============================================
CREATE   TRIGGER [dbo].[tr_PreisLogInstrumente_INSERT] 
   ON [dbo].[tb_Instrumente]
   FOR INSERT
AS
BEGIN
	SET NOCOUNT ON;

	INSERT INTO dbo.PreisInstrumenteLog
		    (Mode, InstrumentenID, Bezeichnung, InstrumentenArtID, HerstellerID, VK)
	SELECT  'I', InstrumentenID, Bezeichnung, InstrumentenartID, HerstellerID, VK
	FROM inserted;
END
GO
ALTER TABLE [dbo].[tb_Instrumente] ENABLE TRIGGER [tr_PreisLogInstrumente_INSERT]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tb_Noten', @level2type=N'COLUMN',@level2name=N'MWSt_7%'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[20] 2[13] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "tb_Instrumente"
            Begin Extent = 
               Top = 4
               Left = 7
               Bottom = 247
               Right = 192
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tb_Lagerstatus"
            Begin Extent = 
               Top = 132
               Left = 356
               Bottom = 228
               Right = 523
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tb_Zustand"
            Begin Extent = 
               Top = 16
               Left = 388
               Bottom = 112
               Right = 555
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_aufLager'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_aufLager'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[13] 2[12] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "tb_Instrumente"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 237
               Right = 223
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tb_Instrumentenart"
            Begin Extent = 
               Top = 53
               Left = 709
               Bottom = 149
               Right = 894
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tb_Lagerstatus"
            Begin Extent = 
               Top = 282
               Left = 371
               Bottom = 378
               Right = 538
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tb_Zustand"
            Begin Extent = 
               Top = 230
               Left = 677
               Bottom = 326
               Right = 844
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tb_Hersteller"
            Begin Extent = 
               Top = 0
               Left = 337
               Bottom = 236
               Right = 514
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 15
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
   ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_InstrumenteUebersicht_Hersteller_Lagerstatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'      Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 1635
         Table = 2205
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_InstrumenteUebersicht_Hersteller_Lagerstatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_InstrumenteUebersicht_Hersteller_Lagerstatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[44] 4[10] 2[7] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "tb_Instrumente"
            Begin Extent = 
               Top = 35
               Left = 19
               Bottom = 274
               Right = 204
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tb_InstrumentenVerkauf"
            Begin Extent = 
               Top = 0
               Left = 287
               Bottom = 130
               Right = 458
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tb_Bestellung"
            Begin Extent = 
               Top = 96
               Left = 586
               Bottom = 209
               Right = 753
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tb_Rechnung"
            Begin Extent = 
               Top = 72
               Left = 824
               Bottom = 202
               Right = 991
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tb_Personal"
            Begin Extent = 
               Top = 54
               Left = 1079
               Bottom = 338
               Right = 1246
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tb_Kunden"
            Begin Extent = 
               Top = 150
               Left = 303
               Bottom = 397
               Right = 475
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 13
         Width = 284
         Wid' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_RechnnungUeberischt-Instrumente'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'th = 1500
         Width = 1500
         Width = 1320
         Width = 2550
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 1845
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_RechnnungUeberischt-Instrumente'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_RechnnungUeberischt-Instrumente'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[42] 4[10] 2[9] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "tb_Instrumente"
            Begin Extent = 
               Top = 29
               Left = 10
               Bottom = 159
               Right = 195
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tb_InstrumentenVerkauf"
            Begin Extent = 
               Top = 32
               Left = 259
               Bottom = 162
               Right = 430
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tb_Noten"
            Begin Extent = 
               Top = 242
               Left = 54
               Bottom = 372
               Right = 239
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tb_NotenVerkauf"
            Begin Extent = 
               Top = 236
               Left = 352
               Bottom = 366
               Right = 519
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tb_Kunden"
            Begin Extent = 
               Top = 255
               Left = 694
               Bottom = 385
               Right = 866
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tb_Bestellung"
            Begin Extent = 
               Top = 170
               Left = 929
               Bottom = 283
               Right = 1096
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tb_Personal"
            Begin Extent = 
               Top = 229
               Left = 1277
               Bottom = 359
               Right = 1444
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_RechnungUebersicht_Null'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tb_Rechnung"
            Begin Extent = 
               Top = 29
               Left = 1129
               Bottom = 159
               Right = 1296
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tb_ZubehoerVerkauf"
            Begin Extent = 
               Top = 0
               Left = 508
               Bottom = 130
               Right = 675
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tb_Zubehoer"
            Begin Extent = 
               Top = 0
               Left = 760
               Bottom = 130
               Right = 945
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 13
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_RechnungUebersicht_Null'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_RechnungUebersicht_Null'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "tb_Bestellung"
            Begin Extent = 
               Top = 6
               Left = 470
               Bottom = 119
               Right = 637
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tb_Rechnung"
            Begin Extent = 
               Top = 27
               Left = 706
               Bottom = 157
               Right = 873
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tb_Personal"
            Begin Extent = 
               Top = 25
               Left = 996
               Bottom = 155
               Right = 1163
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tb_Kunden"
            Begin Extent = 
               Top = 189
               Left = 269
               Bottom = 319
               Right = 441
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tb_Zubehoer"
            Begin Extent = 
               Top = 189
               Left = 0
               Bottom = 319
               Right = 185
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tb_ZubehoerVerkauf"
            Begin Extent = 
               Top = 0
               Left = 156
               Bottom = 130
               Right = 323
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_RechnungUebersicht-Zubehoer'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_RechnungUebersicht-Zubehoer'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_RechnungUebersicht-Zubehoer'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "tb_Noten"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 223
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tb_NotenVerkauf"
            Begin Extent = 
               Top = 6
               Left = 261
               Bottom = 136
               Right = 428
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tb_Bestellung"
            Begin Extent = 
               Top = 169
               Left = 463
               Bottom = 282
               Right = 630
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tb_Rechnung"
            Begin Extent = 
               Top = 37
               Left = 671
               Bottom = 167
               Right = 838
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tb_Personal"
            Begin Extent = 
               Top = 6
               Left = 880
               Bottom = 136
               Right = 1047
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tb_Kunden"
            Begin Extent = 
               Top = 6
               Left = 1085
               Bottom = 136
               Right = 1257
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
    ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_RechungUebersicht-Noten'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'     Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_RechungUebersicht-Noten'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_RechungUebersicht-Noten'
GO
USE [master]
GO
ALTER DATABASE [MusicStore] SET  READ_WRITE 
GO
