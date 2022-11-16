



USE AdventureWorks2019
GO

SELECT 'DevDojo' AS [NOME],
       'Java'    AS [LINGUAGEM]

 UNION ALL

SELECT 'DevDojo' AS [ESCOLA],
       'Java'    AS [TIPO DE LINGUAGEM] 
    
 UNION ALL

 SELECT 'SQL Server' AS [BD],
        'Microsoft'  AS [FABRICANTE] 



SELECT PersonType,
       FirstName,
       MiddleName,
       ModifiedDate
  FROM Person.Person
 WHERE MiddleName IS NOT NULL
   AND FirstName = 'Aaron'
 UNION ALL
SELECT PersonType,
       FirstName,
       MiddleName,
       ModifiedDate
  FROM Person.Person
 WHERE MiddleName IS NOT NULL
   AND FirstName = 'Abigail'