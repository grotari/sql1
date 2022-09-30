USE MusicStore;
GO

PRINT dbo.sf_MusZubehoer_Gesamtpreis_Pro_Bestellung(3) -- 2 Positionen 14.00 OK

PRINT dbo.sf_MusZubehoer_Gesamtpreis_Pro_Bestellung(1) -- 1 Position 28.00 OK

PRINT dbo.sf_MusZubehoer_Gesamtpreis_Pro_Bestellung(5) -- ID falsch 0.00 OK