USE MusicStore;
GO


-- Pfad existiert
EXEC [sp_Backup_MusicStore_mit_Zeitstempel_und_Param]
	'D:\SQL Kurs\050-Projekt\SQL-Projektbezeichnung-Gruppe-D\006-BackUp\';

-- Pfad existiert nicht
EXEC [sp_Backup_MusicStore_mit_Zeitstempel_und_Param]
	'D:\SQL Kurs\050-Projekt\SQL-Projektbezeichnung-Gruppe-D\006-BackUpSky\';
	