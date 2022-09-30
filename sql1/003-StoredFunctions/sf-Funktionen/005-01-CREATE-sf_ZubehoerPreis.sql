USE MusicStore;
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Gruppe D
-- Create date: 19.01.2022
-- Description: Gesamtpreis der Zubehoer pro Bestellung
-- =============================================
CREATE OR ALTER FUNCTION sf_MusZubehoer_Gesamtpreis_Pro_Bestellung 
(
	@BestellungID int
)
RETURNS MONEY
AS
BEGIN
	
	DECLARE @Gesamtpreis_Zubehoer MONEY;

-- Der Preis des Zubehoers wird mit der bestellten Anzahl multipliziert  
	SET @Gesamtpreis_Zubehoer = 
	(
		SELECT SUM(tb_Zubehoer.VK * tb_ZubehoerVerkauf.Anzahl)
		FROM tb_Zubehoer 
			INNER JOIN tb_ZubehoerVerkauf 
				ON tb_Zubehoer.ZubehoerID = tb_ZubehoerVerkauf.ZubehoerID
		WHERE (tb_ZubehoerVerkauf.ZubehoerID = @BestellungID)
	)

/*Um nachher mehrere Preise aller Artikel zusammenzurechnen ist es wichtig den Wert auf 0 zu setzen,
falls kein Zubehoer bestellt wurde*/
	IF (@Gesamtpreis_Zubehoer IS NULL)
		SET @Gesamtpreis_Zubehoer = 0;

	RETURN @Gesamtpreis_Zubehoer;

END
GO

