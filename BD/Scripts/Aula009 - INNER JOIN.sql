

SELECT PP.BusinessEntityID,
        Title,
        FirstName,
        MiddleName,
        LastName,
        EmailAddress,
        PhoneNumber
        --PEA.BusinessEntityID
  FROM Person.Person AS PP

 INNER JOIN Person.EmailAddress AS PEA
    ON PP.BusinessEntityID = PEA.BusinessEntityID

 INNER JOIN Person.PersonPhone AS PPP
    ON PPP.BusinessEntityID = PP.BusinessEntityID

--SELECT TOP 100 * FROM Person.Person WHERE FirstName = 'Ken'

