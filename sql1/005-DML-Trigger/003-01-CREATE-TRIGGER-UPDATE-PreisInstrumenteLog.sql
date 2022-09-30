USE [MusicStore];
GO

SET ANSI_NULLS ON;
GO
SET QUOTED_IDENTIFIER ON;
GO
-- =============================================
-- Author:		Gruppe D
-- Create date: 20.01.2022
-- Description: Trigger wird aufgel�st, wenn der Preis in der tb_Instrument geaendert wird
-- =============================================
CREATE OR ALTER TRIGGER [tr_PreisInstrumenteLogUPDATE]
   ON [dbo].[tb_Instrumente] 
   FOR UPDATE
AS 
BEGIN
	SET NOCOUNT ON;

	-- Protokollieren von Preis�nderungen
	INSERT INTO [dbo].[PreisInstrumenteLog]
		   (Mode, InstrumentenID, Bezeichnung, InstrumentenArtID, HerstellerID, VKAlt, VK)
	SELECT 'U', InstrumentenID,  Bezeichnung, InstrumentenArtID, HerstellerID,
	-- Beispiel nur f�r VK, genau so kann man auch f�r Nachname, Vorname etc. programmieren
			(SELECT VK FROM deleted), -- Wert alt
			(SELECT VK FROM inserted) -- Wert neu
	FROM deleted; -- es geht auch FROM inserted

END
GO
