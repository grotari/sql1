-- Bestellungsuebersicht von bestellten Instrumenten, mit Zuordnung des Kunden (KName) und Personals


SELECT        dbo.tb_Rechnung.Datum AS Rechnungsdatum, dbo.tb_Bestellung.BestellungID, dbo.tb_Personal.PersonalID, dbo.tb_Instrumente.Bezeichnung AS Instrumente, dbo.tb_InstrumentenVerkauf.Anzahl AS [Anzahl Instrumente], 
                         dbo.tb_Kunden.Nachname AS KNachname, dbo.tb_Kunden.Vorname AS KVorname
FROM            dbo.tb_Instrumente INNER JOIN
                         dbo.tb_InstrumentenVerkauf ON dbo.tb_Instrumente.InstrumentenID = dbo.tb_InstrumentenVerkauf.InstrumentenID LEFT OUTER JOIN
                         dbo.tb_Bestellung INNER JOIN
                         dbo.tb_Rechnung ON dbo.tb_Bestellung.BestellungID = dbo.tb_Rechnung.BestellungID INNER JOIN
                         dbo.tb_Personal ON dbo.tb_Rechnung.PesonalID = dbo.tb_Personal.PersonalID INNER JOIN
                         dbo.tb_Kunden ON dbo.tb_Bestellung.KundenID = dbo.tb_Kunden.KundenID ON dbo.tb_InstrumentenVerkauf.BestellungID = dbo.tb_Bestellung.BestellungID