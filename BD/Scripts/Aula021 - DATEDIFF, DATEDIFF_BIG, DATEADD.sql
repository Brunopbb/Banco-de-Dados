

USE AdventureWorks2019
GO


SELECT DATEDIFF(YEAR, '1999-02-02', GETDATE()),
       --DATEDIFF(NANOSECOND, '1991-04-12 01:58:34', SYSDATETIME()) AS [PRECISAO], -- ERROR: O VALOR RETORNADO N�O CABE EM UM INTEIRO  
       DATEDIFF_BIG(NANOSECOND, '1991-04-12 01:58:34', SYSDATETIME()) AS [PRECISAO NANO]

SELECT BusinessEntityID,
       Title,
       FirstName,
       ModifiedDate
       --DATEDIFF(MONTH, ModifiedDate, GETDATE()),
       --DATEADD(YEAR, 3, ModifiedDate) AS MESES_ACRESCIDOS

 FROM Person.Person 
WHERE ModifiedDate > DATEADD(YEAR, -5, (SELECT MAX(ModifiedDate) FROM Person.Person))

