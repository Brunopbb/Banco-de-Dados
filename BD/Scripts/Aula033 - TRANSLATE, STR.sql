

USE AdventureWorks2019
GO


SELECT TRANSLATE('O BRASIL � A MELHOR SELE��O DO MUNDO?', '� ��', 'E CA')

 
SELECT BusinessEntityID,
       TRY_CAST(RateChangeDate AS DATE) AS [RateChangeDate],
       Rate,
       STR(Rate, 8, 4),
       PayFrequency
  FROM HumanResources.EmployeePayHistory