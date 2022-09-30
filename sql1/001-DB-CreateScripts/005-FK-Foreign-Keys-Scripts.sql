USE [MusicStore]
GO


SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- Fremdschlüssel für die einzelnen Tabellen generieren

-- Tabelle tb_Noten
ALTER TABLE [dbo].[tb_Noten]  WITH CHECK ADD  CONSTRAINT [FK_tb_Noten_tb_Instrumentenart] FOREIGN KEY([InstrumentenartID])
REFERENCES [dbo].[tb_Instrumentenart] ([InstrumentenartID])

ALTER TABLE [dbo].[tb_Noten]  WITH CHECK ADD  CONSTRAINT [FK_tb_Noten_tb_Lagerstatus] FOREIGN KEY([LagerstatusID])
REFERENCES [dbo].[tb_Lagerstatus] ([LagerstatusID])

-- Tabelle tb_Zubehoer
ALTER TABLE [dbo].[tb_Zubehoer]  WITH CHECK ADD  CONSTRAINT [FK_tb_Zubehoer_tb_Instrumentenart] FOREIGN KEY([InstrumentenartID])
REFERENCES [dbo].[tb_Instrumentenart] ([InstrumentenartID])
ALTER TABLE [dbo].[tb_Zubehoer]  WITH CHECK ADD  CONSTRAINT [FK_tb_Zubehoer_tb_Lagerstatus] FOREIGN KEY([LagerstatusID])
REFERENCES [dbo].[tb_Lagerstatus] ([LagerstatusID])

-- Tabelle tb_Instrumente
ALTER TABLE [dbo].[tb_Instrumente]  WITH CHECK ADD  CONSTRAINT [FK_tb_Instrumente_tb_Hersteller] FOREIGN KEY([HerstellerID])
REFERENCES [dbo].[tb_Hersteller] ([HerstellerID])

ALTER TABLE [dbo].[tb_Instrumente]  WITH CHECK ADD  CONSTRAINT [FK_tb_Instrumente_tb_Instrumentenart] FOREIGN KEY([InstrumentenartID])
REFERENCES [dbo].[tb_Instrumentenart] ([InstrumentenartID])

ALTER TABLE [dbo].[tb_Instrumente]  WITH CHECK ADD  CONSTRAINT [FK_tb_Instrumente_tb_Lagerstatus] FOREIGN KEY([LagerstatusID])
REFERENCES [dbo].[tb_Lagerstatus] ([LagerstatusID])

ALTER TABLE [dbo].[tb_Instrumente]  WITH CHECK ADD  CONSTRAINT [FK_tb_Instrumente_tb_Zustand] FOREIGN KEY([ZustandID])
REFERENCES [dbo].[tb_Zustand] ([ZustandID])

--Tabelle tb_Bestellung
ALTER TABLE [dbo].[tb_Bestellung]  WITH CHECK ADD  CONSTRAINT [FK_tb_Bestellung_tb_Kunden] FOREIGN KEY([KundenID])
REFERENCES [dbo].[tb_Kunden] ([KundenID])

-- Tabelle tb_ZubehoerVerkauf
ALTER TABLE [dbo].[tb_ZubehoerVerkauf]  WITH CHECK ADD  CONSTRAINT [FK_tb_ZubehoerVerkauf_tb_Zubehoer] FOREIGN KEY([ZubehoerID])
REFERENCES [dbo].[tb_Zubehoer] ([ZubehoerID])

-- Tabelle tb_HerstellerUebersicht
ALTER TABLE [dbo].[tb_HerstellerUebersicht]  WITH CHECK ADD  CONSTRAINT [FK_tb_HerstellerUebersicht_tb_Hersteller] FOREIGN KEY([HerstellerID])
REFERENCES [dbo].[tb_Hersteller] ([HerstellerID])
--
ALTER TABLE [dbo].[tb_HerstellerUebersicht]  WITH CHECK ADD  CONSTRAINT [FK_tb_HerstellerUebersicht_tb_Instrumentenart] FOREIGN KEY([InstrumentenartID])
REFERENCES [dbo].[tb_Instrumentenart] ([InstrumentenartID])

-- Tabelle tb_InstrumentenVerkauf
ALTER TABLE [dbo].[tb_InstrumentenVerkauf]  WITH CHECK ADD  CONSTRAINT [FK_tb_InstrumentenVerkauf_tb_Bestellung] FOREIGN KEY([BestellungID])
REFERENCES [dbo].[tb_Bestellung] ([BestellungID])

ALTER TABLE [dbo].[tb_InstrumentenVerkauf]  WITH CHECK ADD  CONSTRAINT [FK_tb_InstrumentenVerkauf_tb_Instrumente] FOREIGN KEY([InstrumentenID])
REFERENCES [dbo].[tb_Instrumente] ([InstrumentenID])

-- Tabelle tb_Kunden
ALTER TABLE [dbo].[tb_Kunden]  WITH CHECK ADD  CONSTRAINT [FK_tb_Kunden_tb_Kundenstatus1] FOREIGN KEY([KundenstatusID])
REFERENCES [dbo].[tb_Kundenstatus] ([KundenstatusID])

-- Tabelle tb_NotenVerkauf
ALTER TABLE [dbo].[tb_NotenVerkauf]  WITH CHECK ADD  CONSTRAINT [FK_tb_NotenVerkauf_tb_Bestellung] FOREIGN KEY([BestellungID])
REFERENCES [dbo].[tb_Bestellung] ([BestellungID])

ALTER TABLE [dbo].[tb_NotenVerkauf]  WITH CHECK ADD  CONSTRAINT [FK_tb_NotenVerkauf_tb_Noten] FOREIGN KEY([NotenID])
REFERENCES [dbo].[tb_Noten] ([NotenID])

--Tabelle tb_Rechnung
ALTER TABLE [dbo].[tb_Rechnung]  WITH CHECK ADD  CONSTRAINT [FK_tb_Rechnung_tb_Bestellung] FOREIGN KEY([BestellungID])
REFERENCES [dbo].[tb_Bestellung] ([BestellungID])

ALTER TABLE [dbo].[tb_Rechnung]  WITH CHECK ADD  CONSTRAINT [FK_tb_Rechnung_tb_Personal] FOREIGN KEY([PesonalID])
REFERENCES [dbo].[tb_Personal] ([PersonalID])

-- Tabelle tb_Verkauf
ALTER TABLE [dbo].[tb_Verkauf]  WITH CHECK ADD  CONSTRAINT [FK_tb_Verkauf_tb_Kunden] FOREIGN KEY([KundenID])
REFERENCES [dbo].[tb_Kunden] ([KundenID])

-- Tabelle tb_ZubehoerVerkauf
ALTER TABLE [dbo].[tb_ZubehoerVerkauf]  WITH CHECK ADD  CONSTRAINT [FK_tb_ZubehoerVerkauf_tb_Bestellung] FOREIGN KEY([BestellungID])
REFERENCES [dbo].[tb_Bestellung] ([BestellungID])

ALTER TABLE [dbo].[tb_ZubehoerVerkauf]  WITH CHECK ADD  CONSTRAINT [FK_tb_ZubehoerVerkauf_tb_Zubehoer] FOREIGN KEY([ZubehoerID])
REFERENCES [dbo].[tb_Zubehoer] ([ZubehoerID])

-- Tabelle tb_Personal
ALTER TABLE [dbo].[tb_Personal]  WITH CHECK ADD  CONSTRAINT [FK_tb_Personal_tb_Position] FOREIGN KEY([PositionID])
REFERENCES [dbo].[tb_Position] ([PostitionID])

