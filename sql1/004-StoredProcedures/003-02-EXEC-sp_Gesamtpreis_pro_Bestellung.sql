USE MusicStore;
GO


DECLARE	@Erfolg bit; 
DECLARE	@Feedback VARCHAR(MAX);
DECLARE @Gesamt money;

-- Gesamtpreis von Bestellung 2 (3 x Fl�gel, 2x Note Fr�hlingslieder = 45836,00�)
EXEC [dbo].[sp_Gesamtpreis_pro_Bestellung]
2, 
@Gesamt OUTPUT,

@Erfolg OUTPUT,
@Feedback OUTPUT;

SELECT @Erfolg AS 'Geklappt?', @Feedback AS 'R�ckgabemeldung',
@Gesamt as Preis;