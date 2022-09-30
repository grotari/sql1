USE MusicStore;
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Gruppe D
-- Create date: 19.01.2022
-- Description:	BackUP mit Zeiteingabe und Parameter
-- =============================================
CREATE OR ALTER PROCEDURE [sp_Backup_MusicStore_mit_Zeitstempel_und_Param]
	@Pfad nvarchar(MAX)

AS
BEGIN
	SET NOCOUNT ON;
	
	DECLARE @backupFile NVARCHAR(MAX);
	SET @backupFile = @Pfad + 
					  'MusicStoreBackUp-' + [dbo].[sf_Zeitstempel]() + '.bak';
   
    BACKUP DATABASE [MusicStore] TO DISK = @backupFile;
	
END
GO

