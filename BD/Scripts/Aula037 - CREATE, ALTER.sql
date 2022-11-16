

CREATE DATABASE dbCartoon
GO

ALTER DATABASE dbCartoon
COLLATE Latin1_General_BIN2
GO

SELECT DATABASEPROPERTYEX('AdventureWorks2019', 'Collation') AS [Collation AdventureWorks2019],
       DATABASEPROPERTYEX('dbCartoon', 'Collation') AS [dbCartoon]
       


--viwes do sistema
SELECT * FROM sys.databases