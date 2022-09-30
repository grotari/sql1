USE MusicStore;
GO

PRINT dbo.sf_MusInstr_Gesamtpreis_Pro_Bestellung(2) -- 2 Positionen 45500.00 OK

PRINT dbo.sf_MusInstr_Gesamtpreis_Pro_Bestellung(1) -- 1 Position 500.00 OK

PRINT dbo.sf_MusInstr_Gesamtpreis_Pro_Bestellung(1000) -- ID falsch 0.00 OK