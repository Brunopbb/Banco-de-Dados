

SELECT LEN('BRUNO ALMEIDA'),
       LEN(500),
       LEN(500.5),
       DATALENGTH('DEVDOJO'),
       LEFT('ESTOU APRENDENDO BANCO DE DADOS', 5),
       LEFT('ESTOU APRENDENDO BANCO DE DADOS', 5),
       RIGHT(232323, 5),
       RIGHT('O MELHOR CANAL DO YOUTUBE É O DEVDOJO, BRABO DEMAIS', LEN('O MELHOR CANAL DO YOUTUBE É O DEVDOJO, BRABO DEMAIS') / 2)

SELECT BusinessEntityID,
       LEN(EmailAddress),
       CHARINDEX('@', EmailAddress),
       LEFT(EmailAddress, CHARINDEX('@', EmailAddress) - 1),
       RIGHT(EmailAddress, LEN(EmailAddress) - CHARINDEX('@', EmailAddress)),
       EmailAddress
  FROM Person.EmailAddress