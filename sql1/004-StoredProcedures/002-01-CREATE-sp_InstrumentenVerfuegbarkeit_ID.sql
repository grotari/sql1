USE [MusicStore]
GO
/****** Object:  StoredProcedure [dbo].[sp_AddProjektzuordnung]    Script Date: 19.01.2022 13:32:17 ******/
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
CREATE OR ALTER   PROCEDURE [dbo].[sp_InstrumentenVerfuegbarkeit_ID] 
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
