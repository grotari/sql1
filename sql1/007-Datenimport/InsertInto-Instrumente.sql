USE [MusicStore]
GO

INSERT INTO [dbo].[tb_Instrumente](
		  [Bezeichnung],
          [Gewicht],
		  [HerstellerID],
		  [EK],
		  [VK],
		  [ZustandID],
		  [LagerstatusID],
		  [InstrumentenartID]
		  )

     VALUES


('Bb Klarinette Classic CLK-9','750', '6', '140','280', '4','4' , '4'),
('Harvey Deluxe Bass','5','1','110','190','4','4','10'),
('Millennium Drum Set Schwarz', '54','5','580','880','4','3','3'),
('Youngster Drum Set Green','68','5','80','140','1','4','3'),
('Blackbox Cajon','5','3','10','18','4','4','2'),
('Fun Piano AK-1','5','7','220','370','1','4','2')