USE MusicStore;
GO

DECLARE @Rueckgabe nvarchar(MAX);

---- Pfad existiert
 EXEC [dbo].[sp_Backup_MusicStore_mit_Zeitstempel_und_Param_OutputUndFehlermeldung] 
  'D:\SQL Kurs\050-Projekt\SQL-Projektbezeichnung-Gruppe-D\006-BackUp\',
	@Rueckgabe OUTPUT;


---- Pfad existiert nicht
--EXEC [dbo].[sp_Backup_MusicStore_mit_Zeitstempel_und_Param_OutputUndFehlermeldung] 
--	'D:\SQL Kurs\050-Projekt\SQL-Projektbezeichnung-Gruppe-D\006-BackUpNew\',
--	@Rueckgabe OUTPUT;

PRINT @Rueckgabe;