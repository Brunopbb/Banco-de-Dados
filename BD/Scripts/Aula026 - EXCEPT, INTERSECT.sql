

USE AdventureWorks2019
GO


SELECT 'DevDojo' AS [NOME],
       'Java'    AS [LINGUAGEM]

EXCEPT

SELECT 'Google' AS [EMPRESA],
       'Kotlin' AS [TIPO],
       'DevDojo' AS [NOME],
       'Java'    AS [LINGUAGEM]

INTERSECT

SELECT 'Github' AS [NOME],
       'Electron'    AS [LINGUAGEM],
       'Google' AS [EMPRESA],
       'Kotlin' AS [TIPO]


SELECT BusinessEntityID AS [COL1]
  FROM Person.Person 

INTERSECT

SELECT BusinessEntityID AS [COL2]
  FROM HumanResources.Employee

ORDER BY [COL1]