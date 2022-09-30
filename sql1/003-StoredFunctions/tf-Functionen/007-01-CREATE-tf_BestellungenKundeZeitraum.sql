USE MusicStore;
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Gruppe D
-- Create date: 19.01.22
-- Description:	Auswahl aller Bestellungen eines Kunden von Produkten eines best. Herstellers in einem best. Zeitraum
-- =============================================
CREATE OR ALTER FUNCTION tf_BestellungenKundeZeitraum
(	
	@DatumVon date,
	@DatumBis date,	
	@KundenID int, 
	@HerstellerID int
)
RETURNS TABLE 
AS
RETURN 
(
-- Auswahl der Spalten die die Tabelle haben soll
	SELECT TOP 100 Percent dbo.tb_Bestellung.BestellungID, 
	dbo.tb_Kunden.Nachname AS KuNN, 
	dbo.tb_Kunden.Vorname AS KuVN, 
	dbo.tb_Hersteller.HerstellerID, 
	dbo.tb_Hersteller.Hersteller, 
	dbo.tb_Bestellung.BestellDatum
FROM	dbo.tb_Kunden RIGHT OUTER JOIN
		dbo.tb_Bestellung ON dbo.tb_Kunden.KundenID = dbo.tb_Bestellung.KundenID CROSS JOIN
        dbo.tb_Hersteller INNER JOIN
		dbo.tb_Instrumente ON dbo.tb_Hersteller.HerstellerID = dbo.tb_Instrumente.HerstellerID
		
	WHERE tb_Bestellung.BestellDatum BETWEEN @DatumVon AND @DatumBis -- filtern nach Datum	
	AND tb_Kunden.KundenID = @KundenID -- filtern nach Kunde
	AND tb_Hersteller.HerstellerID = @HerstellerID -- filtern nach Hersteller

-- Nach Bestelldatum ordnen
	ORDER BY dbo.tb_Bestellung.BestellDatum DESC, KuNN, Hersteller
	
)
GO
