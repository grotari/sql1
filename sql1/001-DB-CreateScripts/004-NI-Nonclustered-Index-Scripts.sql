USE MusicStore;
GO 


-- NonClusterd Index für die einzelnen Tabellen generieren

-- Tabelle [dbo].[tb_Zustand]
CREATE UNIQUE NONCLUSTERED INDEX [IX_tb_Zustand] ON [dbo].[tb_Zustand]
(
	[Zustand]
)

-- Tabelle [dbo].[tb_Hersteller]

CREATE UNIQUE NONCLUSTERED INDEX [IX_tb_Hersteller] ON [dbo].[tb_Hersteller]
(
	[Hersteller]
)

-- Tabelle [dbo].[tb_Position]
CREATE UNIQUE NONCLUSTERED INDEX [IX_tb_Position] ON [dbo].[tb_Position]
(
	[Position]
)

-- Tabelle [dbo].[tb_Instrumentenart]
CREATE UNIQUE NONCLUSTERED INDEX [IX_tb_Instrumentenart] ON [dbo].[tb_Instrumentenart]
(
	[InstrBezeichnung] 
)

-- Tabelle [dbo].[tb_Lagerstatus]

CREATE UNIQUE NONCLUSTERED INDEX [IX_tb_Lagerstatus] ON [dbo].[tb_Lagerstatus]
(
	[Status]
)

-- Tabelle [dbo].[tb_Noten]

CREATE UNIQUE NONCLUSTERED INDEX [IX_tb_Noten] ON [dbo].[tb_Noten]
(
	[ISBN] 
)