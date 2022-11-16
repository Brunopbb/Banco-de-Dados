

USE AdventureWorks2019
GO


SELECT SSP.BusinessEntityID,
       PP.BusinessEntityID,
       FirstName,
       MiddleName,
       LastName,
       TerritoryID,
       Bonus,
       SalesLastYear
  FROM Sales.SalesPerson AS [SSP]
  FULL OUTER JOIN Person.Person AS [PP]
    ON SSP.BusinessEntityID = PP.BusinessEntityID