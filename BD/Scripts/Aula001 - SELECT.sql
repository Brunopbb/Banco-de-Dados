
    SELECT BusinessEntityID,
           PersonType,
           Title,
           MiddleName,
           LastName,
           ModifiedDate
      FROM Person.Person 
     WHERE FirstName = 'Ken'
       AND MiddleName = 'L'