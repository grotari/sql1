USE [MusicStore]
GO



INSERT INTO [dbo].[tb_Noten](
	[Titel] ,
	[ISBN] ,
	[InstrumentenartID] ,
	[EK],
	[MWSt_7%] ,
	[VK] ,
	[LagerstatusID])
VALUES
 ('Frühlingslieder', '3270051805000806', 5, 25.0000, 7, 53.8000, 1),
 ('Gitarre für Anfänger', '5176350000000255', 1, 15.0000, 7, 30.0000, 4),
 ('Bass Techniken', '4054250010000262', 10, 23.0000, 7, 46.0000, 2),
('100 Instrumental Songs', '6824060300000044', 2, 27.0000, 7, 55.0000, 3),
('Fröhliche Weihnachtszeit', '4466270001000559', 4, 13.0000, 7, 27.0000, 3),
('Cajon und Rhythm Basics', '1752052154000831', 9, 25.0000, 7, 53.8000, 4),
('Trumpet Pro', '6464361359000897', 5, 44.9000, 7, 76.0000, 2)
