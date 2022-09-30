USE MusicStore;
GO

DROP PROCEDURE IF EXISTS [dbo].[sp_Gesamtpreis_pro_Bestellung]
GO

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
