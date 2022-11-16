

USE AdventureWorks2019
GO


SELECT 
      STRING_AGG(TRY_CAST(FirstName AS VARCHAR(MAX)), '/') AS [TESTE],
      LastName
  FROM Person.Person
 GROUP BY LastName
GO

SELECT VALUE 
  FROM STRING_SPLIT('bruno ribeiro de almeida', ' ')


--EXERCICIO

SELECT STRING_AGG(STUFF(VALUE, 1, 1, UPPER(SUBSTRING(VALUE, 1, 1))), ' ')
  FROM STRING_SPLIT('william suane grande mestre jedi do devdojo', ' ')


--RESPOSTA ALTERNATIVA PARA O PROBLEMA

SELECT STRING_AGG(CONCAT(UPPER(LEFT(VALUE, 1)), RIGHT(VALUE, LEN(VALUE) - 1)), ' ')
  FROM STRING_SPLIT('william suane grande mestre jedi do devdojo', ' ')

