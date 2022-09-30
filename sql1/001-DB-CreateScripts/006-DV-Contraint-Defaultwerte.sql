USE MusicStore;
GO

-- Defaultwerte den entsprechenden Tabellen hinzufügen

ALTER TABLE [dbo].[tb_Instrumente] ADD  CONSTRAINT [DF_tb_Instrumente_MWSt_19%]  DEFAULT ('19') FOR [MWSt_19%]

ALTER TABLE [dbo].[tb_Noten] ADD  DEFAULT ('7') FOR [MWSt_7%]

ALTER TABLE [dbo].[tb_Zubehoer] ADD  CONSTRAINT [DF_tb_Zubehoer_MWSt_19%]  DEFAULT ('19') FOR [MWSt_19%]

