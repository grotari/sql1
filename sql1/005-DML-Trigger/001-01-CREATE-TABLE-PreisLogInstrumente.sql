USE [MusicStore];
GO

-- Anlegen der Log Tabelle Aenderungen in der Tabelle Instrumente zu protokollieren 
DROP TABLE IF EXISTS PreisInstrumenteLog;
GO

CREATE TABLE PreisInstrumenteLog
(
  RecordID   INT           NOT NULL IDENTITY PRIMARY KEY,
  Mode       CHAR(1)       NOT NULL, -- I fuer INSERT, D fuer DELETE, U fuer UPDATE
  InstrumentenID INT           NOT NULL,
  Bezeichnung 	NVARCHAR(50)  NOT NULL,
  InstrumentenArtID  INT NOT  NULL,
  HerstellerID INT NOT NULL,
  VKAlt      NVARCHAR(50)  NULL,
  VK         NVARCHAR(50)  NULL,
  EditOn     DATETIME      NOT NULL DEFAULT CURRENT_TIMESTAMP, 
  EditUser   VARCHAR(100)  NOT NULL DEFAULT ORIGINAL_LOGIN()
)
GO

