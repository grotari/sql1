USE [MusicStore]
GO

/****** Object:  UserDefinedFunction [dbo].[sf_VerkaufteInstrumente]    Script Date: 19.01.2022 22:49:32 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Gruppe D
-- Create date: 18.01.2022
-- Description:	Der Lagerstatus der Instrumenten wird angezeigt
-- =============================================
CREATE  OR ALTER   FUNCTION [dbo].[sf_InstrumentenVerfuegbarkeit_Status]
(
	@InstrumentenID int

)
RETURNS varchar(20)
AS
BEGIN
	
	DECLARE @Lagerstatus varchar(20);


	SET @Lagerstatus = (SELECT Status 
						FROM tb_Instrumente RIGHT JOIN
						tb_Lagerstatus ON
						tb_Instrumente.LagerstatusID = tb_Lagerstatus.LagerstatusID
						WHERE InstrumentenID = @InstrumentenID);


	RETURN @Lagerstatus;

END
GO


