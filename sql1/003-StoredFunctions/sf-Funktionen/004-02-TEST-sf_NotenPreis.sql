USE MusicStore;
GO

PRINT dbo.sf_MusNoten_Gesamtpreis_Pro_Bestellung(2) -- 3 Positionen 90.00 OK

PRINT dbo.sf_MusNoten_Gesamtpreis_Pro_Bestellung(1) -- 2 Position 107.60 OK

PRINT dbo.sf_MusNoten_Gesamtpreis_Pro_Bestellung(150) -- ID falsch 0.00 OK