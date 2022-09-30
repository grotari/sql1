USE MusicStore;
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Gruppe D
-- Create date: 19.01.2022
-- Description:	BackUp der Datenbank mit Eingaben von Zeit, Output und Fehlermeldungen
-- =============================================
CREATE OR ALTER PROCEDURE [sp_Backup_MusicStore_mit_Zeitstempel_und_Param_OutputUndFehlermeldung]
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
