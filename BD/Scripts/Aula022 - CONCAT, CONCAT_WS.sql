

USE AdventureWorks2019
GO

--SELECT CONCAT('BRUNO', ' ', 'ALMEIDA')

SELECT BusinessEntityID,
       PersonType,
       NameStyle,
       Title,
       FirstName,
       MiddleName,
       LastName,
       Suffix,
       EmailPromotion,
       ModifiedDate,

       CONCAT(Title, ' ', FirstName, ' ', MiddleName, ' ', LastName) as [CONCAT()],
       CONCAT_WS(' ', Title, FirstName, MiddleName, LastName)
 
 FROM Person.Person