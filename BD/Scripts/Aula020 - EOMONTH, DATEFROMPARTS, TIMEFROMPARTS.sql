

USE AdventureWorks2019

GO


SELECT EOMONTH('20010101') AS [EOMONTH],
       EOMONTH(GETDATE(), -11) AS [EOMONTH2],
       EOMONTH('2010/02/10') AS [EOMONTH3]

SELECT BusinessEntityID,
       FirstName,
       ModifiedDate,
       EOMONTH(ModifiedDate, -3) AS [-3 MESES],
       EOMONTH(ModifiedDate) AS [ULTIMO_DIA_DO_MES],
       EOMONTH(ModifiedDate, 6) AS [+6 MESES]
 FROM Person.Person



SELECT DATEFROMPARTS(2015, 10, 7)
SELECT TIMEFROMPARTS(18, 30, 40, 0, 0);