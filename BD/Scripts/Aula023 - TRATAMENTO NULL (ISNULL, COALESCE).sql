

USE AdventureWorks2019
GO


SELECT BusinessEntityID,
       PersonType,
       NameStyle,
       ISNULL(Title, '')
       FirstName,
       MiddleName,
       LastName,
       Suffix,
       ISNULL(AdditionalContactInfo, '') AS [AdditionalContactInfo],
       TRY_CONVERT(VARCHAR(10), ModifiedDate, 103) AS [ModifiedDate]
  FROM Person.Person
 WHERE Suffix IS NOT NULL