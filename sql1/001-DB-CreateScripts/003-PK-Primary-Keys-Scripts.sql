USE [MusicStore]
GO

-- Hinzufügen der Primärschlüssel für die einzelnen Tabellen

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

--
ALTER TABLE [dbo].[tb_Noten] 
ADD CONSTRAINT [PK_tb_Noten] PRIMARY KEY CLUSTERED 
(
	[NotenID] 
)

--
ALTER TABLE [dbo].[tb_Zubehoer] 
ADD	 CONSTRAINT [PK_tb_Zubehoer] PRIMARY KEY CLUSTERED 
(
	[ZubehoerID] 
)

--
ALTER TABLE [dbo].[tb_Zustand] 
ADD CONSTRAINT [PK_tb_Zustand] PRIMARY KEY CLUSTERED 
(
	[ZustandID] 
)

--
ALTER TABLE [dbo].[tb_Instrumentenart]
ADD CONSTRAINT [PK_tb_Instrumentenart] PRIMARY KEY CLUSTERED 
(
	[InstrumentenartID] 
)

--
ALTER TABLE [dbo].[tb_Position] 
ADD  CONSTRAINT [PK_tb_Position] PRIMARY KEY CLUSTERED 
(
	[PostitionID]
)


--
ALTER TABLE [dbo].[tb_Lagerstatus]
 ADD CONSTRAINT [PK_tb_Status] PRIMARY KEY CLUSTERED 
(
	[LagerstatusID]
)


--
ALTER TABLE [dbo].[tb_HerstellerUebersicht]
ADD CONSTRAINT [PK_tb_HerstellerUebersicht] PRIMARY KEY CLUSTERED 
(
	[HerstellerUebersichtID]
)

--
ALTER TABLE [dbo].[tb_Kundenstatus]
ADD CONSTRAINT [PK_tb_Kundenstatus] PRIMARY KEY CLUSTERED 
(
	[KundenstatusID]
)

--
ALTER TABLE [dbo].[tb_Verkauf]
ADD CONSTRAINT [PK_tb_Verkauf] PRIMARY KEY CLUSTERED 
(
	[VerkaufID]
)

--
ALTER TABLE [dbo].[tb_Hersteller] 
ADD CONSTRAINT [PK_tb_Hersteller] PRIMARY KEY CLUSTERED 
(
	[HerstellerID]
)

--
ALTER TABLE [dbo].[tb_Kunden]
ADD CONSTRAINT [PK_tb_Kunden] PRIMARY KEY CLUSTERED 
(
	[KundenID]
)

--
ALTER TABLE [dbo].[tb_Rechnung]
ADD CONSTRAINT [PK_tb_Rechnung] PRIMARY KEY CLUSTERED 
(
	[RechnungID]
)

--
ALTER TABLE [dbo].[tb_InstrumentenVerkauf]
ADD CONSTRAINT [PK_tb_InstrumentenVerkauf] PRIMARY KEY CLUSTERED 
(
	[InstrumentVID]
)

--

ALTER TABLE [dbo].[tb_NotenVerkauf]
ADD CONSTRAINT [PK_tb_NotenVerkauf] PRIMARY KEY CLUSTERED 
(
	[NotenVID]
)

--
ALTER TABLE [dbo].[tb_ZubehoerVerkauf]
ADD CONSTRAINT [PK_tb_ZubehoerVerkauf] PRIMARY KEY CLUSTERED 
(
	[ZubehoerVID]
)

--
ALTER TABLE [dbo].[tb_Personal]
ADD CONSTRAINT [PK_tb_Personal] PRIMARY KEY CLUSTERED 
(
	[PersonalID]
)


--
ALTER TABLE [dbo].[tb_Bestellung]
ADD CONSTRAINT [PK_tb_Bestellung] PRIMARY KEY CLUSTERED 
(
	[BestellungID]
)

ALTER TABLE [dbo].[tb_Instrumente]
ADD CONSTRAINT [PK_tb_Instrumente] PRIMARY KEY CLUSTERED 
(
	[InstrumentenID]
)