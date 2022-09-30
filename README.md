# sql1

Abschlussprojekt: Musikgeschäft von
Gabriela Rotari (Göttingen), Haithm Abdo Qasem Yahya (Passau), Lisa Kiel (Düsseldorf), Stefan Ruthenberg (Münster)

Ein Münchner Musikgeschäft bietet ihren Kunden eine reiche Auswahl an Musikinstrumenten, passendem Zubehör und Ersatzteilen.
Natürlich kann man auch Noten bestellen. 

Die Kundendaten werden folgenderweise erfasst: KundeID, Nachname, Vorname, Ort, Straße, Hausnummer, Telefon und Mobil.

Für alle Produkte werden deren Lagerstatus (auf Lager, ausverkauft, bestellt, verfügbar), der Einkaufspreis (EK), Verkaufspreis (VK) und die Mehrwertsteuer erfasst.
Die Instrumente unterscheiden sich nach Instrumentenarten, Gewicht, Preis und Zustand (neu, gebraucht, nicht verkaufbar, retour). 
Die erfassten Daten der angebotenen Noten sind: Titel, ISBN und für welche Instrumentenart die Noten sind. 
Beim Zubehoer kann nach der Instrumentenart gesucht werden.

Für den Laufprozess des Geschäftes ist Personal zuständig: (Position-Tabelle: PositionID, Leitung, Verkauf, Lagerung, Buchhaltung, Marketing, Service). 
Die folgenden Daten des Personals werden erfasst: PersonalID, Nachname, Vorname, Ort, Straße, Hausnr., Telefon, Mobil und Geburtsdatum.

Für jede Bestellung wird die KundenID und das Bestelltdatum erfasst. 
Jeder Rechnung wird die BestellungsID und KundenID zugewiesen, sowie das Rechnungsdatum erfasst und von welchem Personal der Kunde betreut wurde.
Für jede Produktkategorie wird in einer separaten Tabelle erfasst, welches Produkt und wie viel Stück (Anzahl) bestellt worden sind.
