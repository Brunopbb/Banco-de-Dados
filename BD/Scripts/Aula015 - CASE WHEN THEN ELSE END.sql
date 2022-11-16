



USE AdventureWorks2019
GO

SELECT PP.BusinessEntityID,
       LoginID,
       OrganizationLevel,
       JobTitle,
       BirthDate,
       PersonType,
       Title,
       FirstName,
       MiddleName,
       LastName,
       FirstName + ' ' + MiddleName + ' ' + LastName AS [NOME COMPLETO],
       PEA.EmailAddress,
       PhoneNumber,
       PhoneNumberTypeID,

       CASE MaritalStatus
         WHEN 'S' THEN 'SOLTEIRO'
         WHEN 'M' THEN 'CASADO'
        ELSE 'NÃO DEFINIDO'
        END AS MaritalStatus,
     
       CASE Gender
         WHEN 'M' THEN 'MASCULINO'
         WHEN 'F' THEN 'FEMININO'
        ELSE 'NÃO DEFINIDO'
        END AS Gender,

       Rate,
       CASE 
          WHEN Rate < 12.000 THEN 'SALARIO MINIMO' 
          WHEN Rate BETWEEN 12.000 AND 20.000 THEN 'EMPRESARIO'
          WHEN Rate > 20.000 THEN 'MILIONARIO'
        ELSE 'COITADO'
       END AS [COMPARACAO RATE]


FROM Person.Person AS [PP]
JOIN Person.EmailAddress AS [PEA]
  ON PP.BusinessEntityID = PEA.BusinessEntityID
JOIN Person.PersonPhone AS [PPP]
  ON PP.BusinessEntityID = PPP.BusinessEntityID
LEFT JOIN HumanResources.Employee AS [HRE]
  ON HRE.BusinessEntityID = PP.BusinessEntityID
JOIN HumanResources.EmployeePayHistory AS [HREPH]
  ON PP.BusinessEntityID = HRE.BusinessEntityID

  --SELECT * FROM HumanResources.EmployeePayHistory