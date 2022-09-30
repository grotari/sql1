-- Bestellungsuebersicht von bestelltem Zubehoer, mit Zuordnung des Kunden

SELECT dbo.tb_Rechnung.Datum AS Rechnungsdatum, dbo.tb_Bestellung.BestellungID, dbo.tb_Personal.PersonalID, dbo.tb_Zubehoer.Zubehoer, dbo.tb_ZubehoerVerkauf.Anzahl, dbo.tb_Kunden.Nachname AS KNachname, 
			dbo.tb_Kunden.Vorname AS KVorname
FROM   dbo.tb_Zubehoer INNER JOIN
            dbo.tb_ZubehoerVerkauf ON dbo.tb_Zubehoer.ZubehoerID = dbo.tb_ZubehoerVerkauf.ZubehoerID LEFT OUTER JOIN
            dbo.tb_Bestellung INNER JOIN
			dbo.tb_Rechnung ON dbo.tb_Bestellung.BestellungID = dbo.tb_Rechnung.BestellungID INNER JOIN
			dbo.tb_Personal ON dbo.tb_Rechnung.PesonalID = dbo.tb_Personal.PersonalID INNER JOIN
			dbo.tb_Kunden ON dbo.tb_Bestellung.KundenID = dbo.tb_Kunden.KundenID ON dbo.tb_ZubehoerVerkauf.BestellungID = dbo.tb_Bestellung.BestellungID