USE [MusicStore];
GO

SET ANSI_NULLS ON;
GO
SET QUOTED_IDENTIFIER ON;
GO
-- =============================================
-- Author:		Gruppe D
-- Create:      20.01.2022
-- Description:	Tregger wird ausgeloest, wenn Zeilen in tb_Instrumente geloescht werden soll
-- =============================================
CREATE OR ALTER TRIGGER [tr_PreisInstrumentenLogDELETE] 
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
