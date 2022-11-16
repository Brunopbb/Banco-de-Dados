
SELECT * FROM Person.Person
 WHERE BusinessEntityID BETWEEN 600 AND 800
--    AND FirstName <> 'Lane'
--    AND FirstName <> 'Aaron'
AND (MiddleName = 'DevDojo' OR MiddleName = 'G' OR LastName = 'Boladao')
--  ORDER BY FirstName


SELECT * FROM Person.Person
 WHERE BusinessEntityID IN (1, 2, 3, 4, 659, 580, 90, 4500)

SELECT * FROM Person.Person
 WHERE FirstName NOT IN ('Gigi', 'Ken', 'A.', 'Aaron')
ORDER BY FirstName

SELECT * FROM Person.Person
 WHERE FirstName LIKE 'G%'

SELECT * FROM Person.Person
 WHERE FirstName LIKE 'G___e'

SELECT * FROM Person.Person
 WHERE FirstName LIKE '[BCDE]___e'
ORDER BY FirstName

SELECT * FROM Person.Person
 WHERE FirstName NOT LIKE '[BCDE]___e'
ORDER BY FirstName

SELECT MAX(LEN(FirstName)) FROM Person.Person 

SELECT FirstName, LEN(FirstName) FROM Person.Person ORDER BY LEN(FirstName) DESC