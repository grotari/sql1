USE [MusicStore];
GO

SET ANSI_NULLS ON;
GO
SET QUOTED_IDENTIFIER ON;
GO
-- =============================================
-- Author:		Gruppe D
-- Create date: 19.01.2022
-- Description: Trigger wird ausgeloest, wenn neue Datensätze zur tb_Instrumente hinzugefuegt werden
-- =============================================
CREATE OR ALTER TRIGGER [tr_PreisLogInstrumente_INSERT] 
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
