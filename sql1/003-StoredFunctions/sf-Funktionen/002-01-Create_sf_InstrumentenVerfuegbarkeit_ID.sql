USE [MusicStore]
GO

/****** Object:  UserDefinedFunction [dbo].[sf_VerkaufteInstrumente]    Script Date: 19.01.2022 13:22:05 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		Gruppe D
-- Create date: 18.01.2022
-- Description:	Die LagerstatusID der Instrumenten wird angezeigt
-- =============================================
CREATE  OR ALTER  FUNCTION [dbo].[sf_InstrumentenVerfuegbarkeit_ID]
(
	@InstrumentenID int

)
RETURNS int
AS
BEGIN
	
	DECLARE @Lagerstatus int;


	SET @Lagerstatus = (SELECT LagerstatusID 
						FROM tb_Instrumente
						WHERE InstrumentenID = @InstrumentenID);


	RETURN @Lagerstatus;

END
GO


