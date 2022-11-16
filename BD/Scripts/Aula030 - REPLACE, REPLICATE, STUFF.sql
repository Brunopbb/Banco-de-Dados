

USE AdventureWorks2019
GO

SELECT 'BRUNO RIBEIRO' AS [NOME],
       REPLACE('BRUNO RIBEIRO', 'RIBEIRO', 'ALMEIDA'),
       REPLICATE('BRUNO', 5),
       STUFF('BRUNO RIBEIRO', 7, 3, 'ALMEIDA')


SELECT PP.BusinessEntityID,
       PEA.BusinessEntityID,
       PersonType,
       Title,
       FirstName,
       MiddleName,
       LastName,
       PP.ModifiedDate,

       PEA.EmailAddress



  FROM Person.Person AS [PP]
  JOIN Person.EmailAddress AS [PEA]
    ON PEA.BusinessEntityID = PP.BusinessEntityID