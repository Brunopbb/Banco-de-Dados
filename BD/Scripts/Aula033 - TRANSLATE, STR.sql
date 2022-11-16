

USE AdventureWorks2019
GO


SELECT TRANSLATE('O BRASIL É A MELHOR SELEÇÃO DO MUNDO?', 'É ÇÃ', 'E CA')

 
SELECT BusinessEntityID,
       TRY_CAST(RateChangeDate AS DATE) AS [RateChangeDate],
       Rate,
       STR(Rate, 8, 4),
       PayFrequency
  FROM HumanResources.EmployeePayHistory