

USE dbCartoon
GO

--DROP TABLE dbo.Desenhos_3

SELECT * FROM dbo.Desenhos

SELECT * INTO dbo.Desenhos_2
  FROM dbo.Desenhos

SELECT * FROM dbo.Desenhos_2

SELECT ID_Desenho,
       Nome_Desenho,
       Quantidade_Episodios
  INTO dbo.Desenhos_3
  FROM dbo.Desenhos


SELECT * FROM dbo.Desenhos_3


ALTER TABLE dbo.Desenhos_3
   ADD Data_Lancamento DATE

ALTER TABLE dbo.Desenhos_3
ALTER COLUMN Data_Lancamento DATETIME

UPDATE dbo.Desenhos_3
   SET Data_Lancamento = (SELECT MAX(TRY_CAST(ModifiedDate AS DATE)) FROM AdventureWorks2019.Person.Person)
 WHERE ID_Desenho = 3