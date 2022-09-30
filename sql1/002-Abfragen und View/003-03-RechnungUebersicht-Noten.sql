-- Bestellungsuebersicht der bestellten Noten, mit Zuordnung des Kunden (KName) und Personals


SELECT        dbo.tb_Rechnung.Datum AS Rechnungsdatum, dbo.tb_Bestellung.BestellungID, dbo.tb_Personal.PersonalID, dbo.tb_Noten.Titel AS Noten, dbo.tb_NotenVerkauf.Anzahl, dbo.tb_Kunden.Nachname AS KNachname, 
                         dbo.tb_Kunden.Vorname AS KVorname
FROM            dbo.tb_Noten INNER JOIN
                         dbo.tb_NotenVerkauf ON dbo.tb_Noten.NotenID = dbo.tb_NotenVerkauf.NotenID LEFT OUTER JOIN
                         dbo.tb_Bestellung INNER JOIN
                         dbo.tb_Rechnung ON dbo.tb_Bestellung.BestellungID = dbo.tb_Rechnung.BestellungID INNER JOIN
                         dbo.tb_Personal ON dbo.tb_Rechnung.PesonalID = dbo.tb_Personal.PersonalID INNER JOIN
                         dbo.tb_Kunden ON dbo.tb_Bestellung.KundenID = dbo.tb_Kunden.KundenID ON dbo.tb_NotenVerkauf.BestellungID = dbo.tb_Bestellung.BestellungID