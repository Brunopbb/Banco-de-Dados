


    USE AdventureWorks2019
    GO

    SELECT COUNT(*) FROM Person.Person
    

    SELECT FirstName,
           MiddleName,
           COUNT(*) AS OCORRENCIAS
      FROM Person.Person
     WHERE MiddleName IS NOT NULL
    GROUP BY FirstName,
             MiddleName

    SELECT MIN(BusinessEntityID) AS [MINIMO],
           MIN(ModifiedDate) AS [DATA MODIFICADA MIN]
      FROM Person.Person
     

    SELECT MAX(BusinessEntityID) AS [MAXIMO],
           MAX(ModifiedDate) AS [DATA MODDIFICADA MAX]
      FROM Person.Person
    
    SELECT SUM(BusinessEntityID) AS SOMA 
      FROM Person.Person
    
    SELECT AVG(BusinessEntityID) AS MEDIA
      FROM Person.Person

    SELECT --SSP.BusinessEntityID,
           --TerritoryID,
           SUM(SalesQuota) AS [SalesQuota],
           --Bonus,
           --CommissionPct,
           --SalesYTD,
           --SalesLastYear,
           --SSP.ModifiedDate,
           --FirstName,
           MiddleName
           --LastName
      FROM Sales.SalesPerson AS [SSP]
      JOIN Person.Person AS [PP]
        ON SSP.BusinessEntityID = PP.BusinessEntityID
     GROUP BY --SSP.BusinessEntityID,
              --TerritoryID,
              --SalesQuota,
              --Bonus,
              --CommissionPct,
              --SalesYTD,
              --SalesLastYear,
              --SSP.ModifiedDate,
              --FirstName,
              MiddleName
              --LastName


    SELECT RateChangeDate,
           SUM(Rate) AS [SOMA RATE]
      FROM HumanResources.EmployeePayHistory
    GROUP BY RateChangeDate
    HAVING SUM(Rate) > 37
  ORDER BY RateChangeDate

SELECT * FROM HumanResources.EmployeePayHistory ORDER BY RateChangeDate
              

    
    