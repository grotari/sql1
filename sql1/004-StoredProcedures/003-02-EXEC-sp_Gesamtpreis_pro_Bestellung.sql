USE MusicStore;
GO


DECLARE	@Erfolg bit; 
DECLARE	@Feedback VARCHAR(MAX);
DECLARE @Gesamt money;

-- Gesamtpreis von Bestellung 2 (3 x Flügel, 2x Note Frühlingslieder = 45836,00€)
EXEC [dbo].[sp_Gesamtpreis_pro_Bestellung]
2, 
@Gesamt OUTPUT,

@Erfolg OUTPUT,
@Feedback OUTPUT;

SELECT @Erfolg AS 'Geklappt?', @Feedback AS 'Rückgabemeldung',
@Gesamt as Preis;