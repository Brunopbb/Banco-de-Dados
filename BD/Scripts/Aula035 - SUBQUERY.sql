

USE AdventureWorks2019
GO

SELECT BusinessEntityID,

       (
         SELECT TOP 1 FirstName 
           FROM Person.Person AS [PP]
           WHERE PP.BusinessEntityID = DEVDOJO.BusinessEntityID

       ) AS [Primeiro Nome],

       NationalIDNumber,
       [ANO CONTRATACAO],
       [ANOS],

       CASE Gender
          WHEN 'F' THEN 'FEMININO'
          WHEN 'M' THEN 'MASCULINO'
        END AS 'GENERO'

  FROM (

        SELECT BusinessEntityID,
               NationalIDNumber,
               LoginID,
               OrganizationLevel,
               JobTitle,
               DATEDIFF(YEAR, BirthDate, GETDATE()) AS [ANOS],
               MaritalStatus,
               Gender,
               HireDate,
               DATEPART(YEAR, HireDate) AS [ANO CONTRATACAO],
               VacationHours,
               SickLeaveHours,
               ModifiedDate
         FROM HumanResources.Employee 
  ) AS DEVDOJO
--WHERE [ANO CONTRATACAO] = 2009



SELECT * FROM HumanResources.Employee
 WHERE BirthDate IN (SELECT MIN(BirthDate) FROM HumanResources.Employee)


SELECT (SELECT TOP 1 PhoneNumber FROM Person.PersonPhone AS [PPP] WHERE PPP.BusinessEntityID = PP.BusinessEntityID), * FROM Person.Person AS [PP]