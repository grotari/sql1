USE [MusicStore]
GO

INSERT INTO [dbo].[tb_Personal]
           ([Nachname]
           ,[Vorname]
           ,[Ort]
           ,[PLZ]
           ,[Strasse]
           ,[HausNr]
           ,[Tel]
           ,[Mobil]
           ,[Mail]
           ,[GebDat]
           ,[PositionID])
          -- ,[Kommentar])
     VALUES
         ('Blaschke','Reinwald','Frankfurt am Main','60486','Bergwerkstraﬂe','73','069/99997527','','','11.03.1920','1'),
('Siekmann','Katrein','Bad Karlshafen','34385','Am Damm','61','05672/49794597','0165/3899494','','','3'),
('Seide','Catharina','Beckedorf','31699','Witzelstraﬂe','93','05725/48828714','0167/2955247','catharina-seide@web.none','10.01.1909','5'),
('Hopkins','Jolantha','Meisburg','54570','Kronackerstraﬂe','86','06592/35956321','','jolantha.hopkins@justmail.none','10.06.2006','1'),
('Schumann','Sieghilde','Bahlingen am Kaiserstuhl','79353','Riege','126','07663/93208324','0177/9112626','sieghilde.schumann@bestmail.none','20.11.1955','4'),
('Schnitzler','Noah','Lemgo','32657','Ostlandstraﬂe','41','05261/2641868','','','','2'),
('Heyen','Lenard','Gries','66903','Hechinger Straﬂe','139','06373/78501352','0173/1673304','','25.04.1930','1'),
('Flechsig','Burgel','Hohenleipisch','04934','Albert-Schweitzer-Weg','140','03533/62616031','','bflechsig@bestmail.none','26.04.2000','6'),
('Kotulla','Hanswerner','Ramstein-Miesenbach','66877','Moltkestraﬂe','191','06371/74302770','0155/1395791','h_kotulla@private.none','','1')



