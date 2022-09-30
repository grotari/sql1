USE MusicStore;
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Gruppe D
-- Create date: 18.01.2022
-- Description:	BackUP the database MusicStore
-- =============================================
CREATE OR ALTER PROCEDURE [sp_Backup_MusicStore]
AS 
BEGIN

	SET NOCOUNT ON;

    BACKUP DATABASE [MusicStore] TO DISK = 
	'D:\SQL Kurs\050-Projekt\SQL-Projektbezeichnung-Gruppe-D\006-BackUp\MusicStore-last-backup.bak';

END 
GO
