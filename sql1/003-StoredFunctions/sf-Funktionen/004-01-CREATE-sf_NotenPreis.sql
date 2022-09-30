USE MusicStore;
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Gruppe D
-- Create date: 19.01.2022
-- Description: Gesamtpreis der Noten pro Bestellung
-- =============================================
CREATE OR ALTER FUNCTION sf_MusNoten_Gesamtpreis_Pro_Bestellung 
(
	@BestellungID int
)
RETURNS MONEY
AS
BEGIN
	
	DECLARE @Gesamtpreis_Noten MONEY;

-- Der Preis der Noten wird mit der bestellten Anzahl multipliziert  
	SET @Gesamtpreis_Noten = 
	(
		SELECT SUM(tb_Noten.VK * tb_NotenVerkauf.Anzahl)
		FROM tb_Noten 
			INNER JOIN tb_NotenVerkauf 
				ON tb_Noten.NotenID = tb_NotenVerkauf.NotenID
		WHERE (tb_NotenVerkauf.NotenID = @BestellungID)
	)

-- Um nachher mehrere Preise aller Artikel zusammenzurechnen ist es wichtig den Wert auf 0 zu setzen falls keine Noten bestellt wurden
	IF (@Gesamtpreis_Noten IS NULL)
		SET @Gesamtpreis_Noten = 0;

	RETURN @Gesamtpreis_Noten;

END
GO

