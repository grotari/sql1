USE [MusicStore]
GO

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
	[LagerstatusID] [int] NOT NULL)

	CREATE TABLE [dbo].[tb_Zubehoer](
	[ZubehoerID] [int] NOT NULL,
	[Zubehoer] [nvarchar](200) NOT NULL,
	[EK] [money] NOT NULL,
	[MWSt_19%] [int] NOT NULL,
	[VK] [money] NOT NULL,
	[LagerstatusID] [int] NOT NULL,
	[InstrumentenartID] [int] NOT NULL)

	CREATE TABLE [dbo].[tb_Zustand](
	[ZustandID] [int] IDENTITY(1,1) NOT NULL,
	[Zustand] [nvarchar](30) NOT NULL)

	CREATE TABLE [dbo].[tb_Instrumentenart](
	[InstrumentenartID] [int] IDENTITY(1,1) NOT NULL,
	[InstrBezeichnung] [nvarchar](60) NOT NULL)

	CREATE TABLE [dbo].[tb_Position](
	[PostitionID] [int] IDENTITY(1,1) NOT NULL,
	[Position] [nvarchar](30) NOT NULL)

	CREATE TABLE [dbo].[tb_Lagerstatus](
	[LagerstatusID] [int] IDENTITY(1,1) NOT NULL,
	[Status] [nvarchar](30) NOT NULL)

	CREATE TABLE [dbo].[tb_HerstellerUebersicht](
	[HerstellerUebersichtID] [int] IDENTITY(1,1) NOT NULL,
	[InstrumentenartID] [int] NOT NULL,
	[HerstellerID] [int] NOT NULL)

	CREATE TABLE [dbo].[tb_Kundenstatus](
	[KundenstatusID] [int] IDENTITY(1,1) NOT NULL,
	[Kundenstatus] [nvarchar](50) NOT NULL)

	CREATE TABLE [dbo].[tb_Verkauf](
	[VerkaufID] [int] NOT NULL,
	[Datum] [date] NOT NULL,
	[KundenID] [int] NOT NULL)

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
	[Mail] [nvarchar](50) NULL)

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
	[Kommentar] [nvarchar](max) NULL)

	CREATE TABLE [dbo].[tb_Rechnung](
	[RechnungID] [int] NOT NULL,
	[Datum] [date] NOT NULL,
	[BestellungID] [int] NOT NULL,
	[PesonalID] [int] NOT NULL)

	CREATE TABLE [dbo].[tb_InstrumentenVerkauf](
	[InstrumentVID] [int] NOT NULL,
	[InstrumentenID] [int] NOT NULL,
	[BestellungID] [int] NOT NULL,
	[Anzahl] [int] NOT NULL)

	CREATE TABLE [dbo].[tb_NotenVerkauf](
	[NotenVID] [int] NOT NULL,
	[NotenID] [int] NOT NULL,
	[BestellungID] [int] NOT NULL,
	[Anzahl] [int] NOT NULL)

	CREATE TABLE [dbo].[tb_ZubehoerVerkauf](
	[ZubehoerID] [int] IDENTITY(1,1) NOT NULL,
	[ZubehoerVID] [int] NOT NULL,
	[Anzahl] [int] NOT NULL,
	[BestellungID] [int] NOT NULL)

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
	[Kommentar] [nvarchar](max) NULL)

	CREATE TABLE [dbo].[tb_Bestellung](
	[BestellungID] [int] NOT NULL,
	[KundenID] [int] NOT NULL,
	[BestellDatum] [date] NOT NULL)

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
	[LagerstatusID] [int] NOT NULL)

