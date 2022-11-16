
USE AdventureWorks2019
GO

SELECT PP.BusinessEntityID AS [PP.BusinessEntityID],
       HRE.BusinessEntityID AS [HRE.BusinessEntityID],
       FirstName,
       MiddleName,
       LastName,
       LoginID,
       JobTitle,
       BirthDate

  FROM Person.Person AS PP --19.972
  LEFT JOIN HumanResources.Employee AS HRE --290
    ON HRE.BusinessEntityID = PP.BusinessEntityID
 ORDER BY PP.BusinessEntityID

 


