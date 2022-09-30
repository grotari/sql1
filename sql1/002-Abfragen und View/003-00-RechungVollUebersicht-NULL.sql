-- Abfrage fuer eine Uebersicht der bestellten Artikel pro Bestellung 
-- mit Zuordnung des Kunden und des Personals der die Bestellung betreut hat
-- Allerdings: Dopplung der Daten da Instrumente, Noten und Zubehoer in einer eigenen Spalte zu sehen sind
SELECT        dbo.tb_Rechnung.Datum AS Rechnungsdatum, dbo.tb_Bestellung.BestellungID, dbo.tb_Personal.PersonalID, dbo.tb_Instrumente.Bezeichnung AS Instrumente, dbo.tb_InstrumentenVerkauf.Anzahl AS [Anzahl Instrumente], 
                         dbo.tb_Noten.Titel AS Noten, dbo.tb_NotenVerkauf.Anzahl AS [Anzahl Noten], dbo.tb_Zubehoer.Zubehoer, dbo.tb_ZubehoerVerkauf.Anzahl AS [Anzahl Zubehoer], dbo.tb_Kunden.Nachname AS KNachname, 
                         dbo.tb_Kunden.Vorname AS KVorname, dbo.tb_Kunden.Ort
FROM            dbo.tb_Instrumente INNER JOIN
                         dbo.tb_InstrumentenVerkauf ON dbo.tb_Instrumente.InstrumentenID = dbo.tb_InstrumentenVerkauf.InstrumentenID RIGHT OUTER JOIN
                         dbo.tb_Noten INNER JOIN
                         dbo.tb_NotenVerkauf ON dbo.tb_Noten.NotenID = dbo.tb_NotenVerkauf.NotenID RIGHT OUTER JOIN
                         dbo.tb_Kunden INNER JOIN
                         dbo.tb_Bestellung ON dbo.tb_Kunden.KundenID = dbo.tb_Bestellung.KundenID INNER JOIN
                         dbo.tb_Personal INNER JOIN
                         dbo.tb_Rechnung ON dbo.tb_Personal.PersonalID = dbo.tb_Rechnung.PesonalID ON dbo.tb_Bestellung.BestellungID = dbo.tb_Rechnung.BestellungID ON dbo.tb_NotenVerkauf.BestellungID = dbo.tb_Bestellung.BestellungID ON 
                         dbo.tb_InstrumentenVerkauf.BestellungID = dbo.tb_Bestellung.BestellungID LEFT OUTER JOIN
                         dbo.tb_ZubehoerVerkauf INNER JOIN
                         dbo.tb_Zubehoer ON dbo.tb_ZubehoerVerkauf.ZubehoerID = dbo.tb_Zubehoer.ZubehoerID ON dbo.tb_Bestellung.BestellungID = dbo.tb_ZubehoerVerkauf.BestellungID