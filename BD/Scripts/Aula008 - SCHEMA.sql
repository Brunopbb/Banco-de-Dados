
/*

    SCHEMA

*/


    SELECT * FROM INFORMATION_SCHEMA.TABLES
    ORDER BY TABLE_SCHEMA
    
    SELECT TOP 100 * FROM INFORMATION_SCHEMA.COLUMNS

    SELECT * FROM INFORMATION_SCHEMA.COLUMNS
     WHERE TABLE_SCHEMA = 'Person'
       AND TABLE_NAME = 'Person'
