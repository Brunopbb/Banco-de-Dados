

USE dbCartoon
GO

CREATE TABLE dbo.Desenhos(

    ID_Desenho           TINYINT IDENTITY(1, 1) PRIMARY KEY NOT NULL,
    Nome_Desenho         VARCHAR(50) NOT NULL,
    Data_Lancamento      DATE NOT NULL,
    Quantidade_Episodios SMALLINT NOT NULL

)

GO

SELECT * FROM Desenhos
GO

INSERT INTO Desenhos (Nome_Desenho, Data_Lancamento, Quantidade_Episodios)
VALUES ('Dragon ball Z','1989-04-26', 290),
       ('Cavaleiros do Zodiaco', '1985-12-01', 114),
       ('Shurato', '1990-01-15', 114),
       ('Yu Yu Hakusho', '1990-12-01', 112)
GO

UPDATE dbo.Desenhos
   SET Quantidade_Episodios = 291
 WHERE ID_Desenho = 1
GO

ALTER TABLE dbo.Desenhos
  ADD Descricao_Desenho VARCHAR(150) 
GO

UPDATE dbo.Desenhos
   SET Descricao_Desenho = 'DESCRIÇÃO DO DESENHO' 
GO


ALTER TABLE dbo.Desenhos 
 DROP COLUMN Descricao_Desenho
GO

ALTER TABLE Desenhos
ALTER COLUMN Quantidade_Episodios INT


SELECT * FROM Desenhos

SELECT * FROM INFORMATION_SCHEMA.COLUMNS

DELETE FROM Desenhos WHERE ID_Desenho = 2