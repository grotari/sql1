USE MusicStore;
GO
	

DECLARE	@Erfolg bit; 
DECLARE	@Feedback VARCHAR(MAX);


---- InstrumentenID existiert und das Instrument ist auf Lager
 EXEC [dbo].[sp_InstrumentenVerfuegbarkeit_ID] 
	2,
    @Erfolg OUTPUT,
	@Feedback OUTPUT;

---- Instrument ist ausverkauft
 --EXEC [dbo].[sp_InstrumentenVerfuegbarkeit_ID] 
	--3,
	--@Erfolg OUTPUT,
	--@Feedback OUTPUT;

---- Instrument ist bestellt
 --EXEC [dbo].[sp_InstrumentenVerfuegbarkeit_ID] 
	--6,
	--@Erfolg OUTPUT,
	--@Feedback OUTPUT;

---- Das InstrumentenID existiert nicht
 --EXEC [dbo].[sp_InstrumentenVerfuegbarkeit_ID] 
	--10,
	--@Erfolg OUTPUT,
	--@Feedback OUTPUT;

SELECT @Erfolg AS 'Geklappt?', @Feedback AS 'Rückgabemeldung';