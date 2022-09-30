

Begin tran Notentabelle_Entwerten
TRUNCATE TABLE [dbo].[tb_Noten]
--COMMIT TRAN Notentabelle_Entwerten

--USE MusicStore
--declare @max int;
--select @max = max(NotenID) from [dbo].[tb_Noten];
--dbcc checkident(tb_Noten, reseed, 0)