

SELECT (SELECT PARSE('3654' AS INT)) + (SELECT PARSE('6' AS INT))

SELECT TRY_PARSE('56565F' AS INT)

SELECT TRY_PARSE('R$360.00' AS INT USING 'pt-BR')

SELECT BusinessEntityID,
       Title,
       FirstName,
       MiddleName,
       LastName,
       ModifiedDate,
       TRY_CAST(ModifiedDate AS DATE) AS ModifiedDate1,
       TRY_CONVERT(VARCHAR(10), ModifiedDate, 103) AS ModifiedDate2
       

 FROM Person.Person