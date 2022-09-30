USE [MusicStore]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Gruppe D
-- Create date: 18.01.2022
-- Description:	Die Funktion generiert einen Zeitstempel im Format wie '18-01-2022 19:45:43'
-- =============================================
CREATE OR ALTER  FUNCTION [dbo].[sf_Zeitstempel] 
(
)
RETURNS char(18)
AS
BEGIN

	RETURN FORMAT(GETDATE(), 'yyyyyMMdd-HHmmssfff');

END
GO


