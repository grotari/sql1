/* Abfrage fuer eine Uebersicht der bestellten Artikel pro Bestellung INKL Preise,
mit Zuordnung des Kunden und des Personals der die Bestellung betreut hat.
Keine Dopplung der Daten, da die Tabellen fuer Noten, Instrumente und Zubehoer einzeln angelegt werden 
und mit UNION in eigenen Zeilen anstatt Spalten dargestellt werden */

USE MusicStore;
GO

-- Tabelle Instrumente
SELECT        dbo.tb_Rechnung.Datum AS Rechnungsdatum, dbo.tb_Bestellung.BestellungID, dbo.tb_Personal.PersonalID, dbo.tb_Instrumente.Bezeichnung AS Artikel, dbo.tb_InstrumentenVerkauf.Anzahl AS Anzahl, 
                         dbo.tb_Kunden.Nachname AS KNachname, dbo.tb_Kunden.Vorname AS KVorname
FROM            dbo.tb_Instrumente INNER JOIN
                         dbo.tb_InstrumentenVerkauf ON dbo.tb_Instrumente.InstrumentenID = dbo.tb_InstrumentenVerkauf.InstrumentenID LEFT OUTER JOIN
                         dbo.tb_Bestellung INNER JOIN
                         dbo.tb_Rechnung ON dbo.tb_Bestellung.BestellungID = dbo.tb_Rechnung.BestellungID INNER JOIN
                         dbo.tb_Personal ON dbo.tb_Rechnung.PesonalID = dbo.tb_Personal.PersonalID INNER JOIN
                         dbo.tb_Kunden ON dbo.tb_Bestellung.KundenID = dbo.tb_Kunden.KundenID ON dbo.tb_InstrumentenVerkauf.BestellungID = dbo.tb_Bestellung.BestellungID
UNION
-- Tabelle Noten
SELECT        dbo.tb_Rechnung.Datum AS Rechnungsdatum, dbo.tb_Bestellung.BestellungID, dbo.tb_Personal.PersonalID, dbo.tb_Noten.Titel AS Noten, dbo.tb_NotenVerkauf.Anzahl, dbo.tb_Kunden.Nachname AS KNachname, 
                         dbo.tb_Kunden.Vorname AS KVorname
FROM            dbo.tb_Noten INNER JOIN
                         dbo.tb_NotenVerkauf ON dbo.tb_Noten.NotenID = dbo.tb_NotenVerkauf.NotenID LEFT OUTER JOIN
                         dbo.tb_Bestellung INNER JOIN
                         dbo.tb_Rechnung ON dbo.tb_Bestellung.BestellungID = dbo.tb_Rechnung.BestellungID INNER JOIN
                         dbo.tb_Personal ON dbo.tb_Rechnung.PesonalID = dbo.tb_Personal.PersonalID INNER JOIN
                         dbo.tb_Kunden ON dbo.tb_Bestellung.KundenID = dbo.tb_Kunden.KundenID ON dbo.tb_NotenVerkauf.BestellungID = dbo.tb_Bestellung.BestellungID

UNION
-- Tabelle Zubehoer
SELECT        dbo.tb_Rechnung.Datum AS Rechnungsdatum, dbo.tb_Bestellung.BestellungID, dbo.tb_Personal.PersonalID, dbo.tb_Zubehoer.Zubehoer, dbo.tb_ZubehoerVerkauf.Anzahl, dbo.tb_Kunden.Nachname AS KNachname, 
                         dbo.tb_Kunden.Vorname AS KVorname
FROM            dbo.tb_Zubehoer INNER JOIN
                         dbo.tb_ZubehoerVerkauf ON dbo.tb_Zubehoer.ZubehoerID = dbo.tb_ZubehoerVerkauf.ZubehoerID LEFT OUTER JOIN
                         dbo.tb_Bestellung INNER JOIN
                         dbo.tb_Rechnung ON dbo.tb_Bestellung.BestellungID = dbo.tb_Rechnung.BestellungID INNER JOIN
                         dbo.tb_Personal ON dbo.tb_Rechnung.PesonalID = dbo.tb_Personal.PersonalID INNER JOIN
                         dbo.tb_Kunden ON dbo.tb_Bestellung.KundenID = dbo.tb_Kunden.KundenID ON dbo.tb_ZubehoerVerkauf.BestellungID = dbo.tb_Bestellung.BestellungID



