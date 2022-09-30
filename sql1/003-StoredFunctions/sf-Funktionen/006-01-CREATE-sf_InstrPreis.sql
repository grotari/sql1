USE MusicStore;
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Gruppe D
-- Create date: 19.01.2022
-- Description: Gesamtpreis der Instrumenten pro Bestellung
-- =============================================
CREATE OR ALTER FUNCTION sf_MusInstr_Gesamtpreis_Pro_Bestellung 
(
	@BestellungID int
)
RETURNS MONEY
AS
BEGIN
	
	DECLARE @Gesamtpreis_Instrumente MONEY;

-- Der Preis der Instrumente wird mit der bestellten Anzahl multipliziert  

	SET @Gesamtpreis_Instrumente = 
	(
		SELECT SUM(tb_Instrumente.VK * tb_InstrumentenVerkauf.Anzahl)
		FROM tb_Instrumente 
			INNER JOIN tb_InstrumentenVerkauf 
				ON tb_Instrumente.InstrumentenID = tb_InstrumentenVerkauf.InstrumentenID
		WHERE (tb_InstrumentenVerkauf.BestellungID = @BestellungID)
	)
/*Um nachher mehrere Preise aller Artikel zusammenzurechnen ist es wichtig den Wert auf 0 zu setzen,
falls kein Instrument bestellt wurde*/
	IF (@Gesamtpreis_Instrumente IS NULL)
		SET @Gesamtpreis_Instrumente = 0;

	RETURN @Gesamtpreis_Instrumente;

END
GO

