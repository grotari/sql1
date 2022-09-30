USE MusicStore;
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Gruppe D
-- Create date: 19.01.2022
-- Description:	Backup MusicStore Datenbank mit Zeitstempel, Output, Parameter
-- =============================================
CREATE OR ALTER PROCEDURE [sp_Backup_MusicStore_mit_Zeitstempel_und_Param_Output]
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
