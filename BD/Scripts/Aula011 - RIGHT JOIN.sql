

USE AdventureWorks2019
GO

SELECT SS.BusinessEntityID AS [SS.BusinessEntityID],
       PP.BusinessEntityID AS [PP.BusinessEntityID],
       TerritoryID,
       SalesQuota,
       Bonus,
       SalesLastYear,
       FirstName,
       MiddleName,
       LastName


  FROM Sales.SalesPerson AS [SS]
  RIGHT JOIN Person.Person AS [PP]
    ON SS.BusinessEntityID = PP.BusinessEntityID
 ORDER BY SS.BusinessEntityID 