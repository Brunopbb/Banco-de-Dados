

USE AdventureWorks2019

GO


SELECT DATEPART(YEAR, GETDATE()) AS [ANO],
       DATEPART(MONTH, GETDATE()) AS [MONTH],
       DATEPART(HOUR, GETDATE()) AS [HOUR],

       DATEPART(MICROSECOND, SYSDATETIME()) AS [MICROSECOND],

       DATENAME(MONTH, GETDATE()) AS [NOMEMES],
       DATENAME(DAY, GETDATE()) AS [NOMEDIA],
       ISDATE(GETDATE()) AS [ISDATE],
       ISDATE('20010101') AS [ISDATE]

GO


SELECT BusinessEntityID,
       FirstName,
       MiddleName,
       LastName,
       TRY_CAST(ModifiedDate AS DATE),
       DATEPART(YEAR, ModifiedDate) AS ANO,
       ISDATE(ModifiedDate) AS [DATA VERIFICADA],
       ISDATE(TRY_CONVERT(VARCHAR(10), ModifiedDate, 103)) AS VERIFICA
  FROM Person.Person
 WHERE DATEPART(YEAR, ModifiedDate) = 2009 AND DATENAME(MONTH, ModifiedDate) = 'December'
 
