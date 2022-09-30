USE [MusicStore]
GO

ALTER TABLE [dbo].[tb_Rechnung]  WITH CHECK ADD  CONSTRAINT [CK_tb_Rechnung_Tag] 
CHECK ([Datum]<=getdate())
GO

ALTER TABLE [dbo].[tb_Rechnung] CHECK CONSTRAINT [CK_tb_Rechnung_Tag]
GO



---

ALTER TABLE [dbo].[tb_Bestellung]  WITH CHECK ADD  CONSTRAINT [CK_tb_Bestellung_Tag] 
CHECK  (([BestellDatum]<=getdate()))
GO

ALTER TABLE [dbo].[tb_Bestellung] CHECK CONSTRAINT [CK_tb_Bestellung_Tag]
GO


---

ALTER TABLE [dbo].[tb_Instrumente]  WITH CHECK ADD  CONSTRAINT [CK_tb_EK_VK] CHECK  (([EK]<[VK]))
GO

ALTER TABLE [dbo].[tb_Instrumente] CHECK CONSTRAINT [CK_tb_EK_VK]
GO

---
ALTER TABLE [dbo].[tb_Noten]  WITH CHECK ADD  CONSTRAINT [CK_tb_EK_VK] CHECK  (([EK]<[VK]))
GO

ALTER TABLE [dbo].[tb_Noten] CHECK CONSTRAINT [CK_tb_EK_VK]
GO

---

ALTER TABLE [dbo].[tb_Noten] ADD  CONSTRAINT [DF_Noten_MWSt_7%]  DEFAULT ('7') FOR [MWSt_7%]
GO


ALTER TABLE [dbo].[tb_Zubehoer] ADD  CONSTRAINT [DF_tb_Zubehoer_MWSt_19%]  DEFAULT ('19') FOR [MWSt_19%]
GO

---


ALTER TABLE [dbo].[tb_Zubehoer] CHECK CONSTRAINT [FK_tb_Zubehoer_tb_Instrumentenart]
GO
ALTER TABLE [dbo].[tb_Zubehoer]  WITH CHECK ADD  CONSTRAINT [CK_tb_EK_VK] CHECK  (([EK]<[VK]))
GO