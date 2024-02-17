-- UPDATE
UPDATE FROM Customers 
SET name = "John", phone = 2345
WHERE custID = 45;

-- Omitting where clause
UPDATE Customers
SET ContactName='Juan';

-- DELETE
DELETE FROM Customers WHERE CustomerName='Alfreds Futterkiste';

-- Omitting where clause
DELETE FROM Customers;
SELECT * from Customers;

-- To delete the table completely, use the DROP TABLE statement:
DROP TABLE Customers;

-- Definition	
-- The delete statement is used to remove single or multiple records from an existing table depending on the specified condition.	
-- The truncate command removes the complete data from an existing table but not the table itself. It preserves the table structure or schema.

-- Language	It is a DML (Data Manipulation Language) command.	It is a DDL (Data Definition Language) command.

-- WHERE	It can use the WHERE clause to filter any specific row or data from the table.	It does not use the WHERE clause to filter records from the table.

-- Working	This command eliminates records one by one.	This command deletes the entire data page containing the records.

-- Trigger	This command can also activate the trigger applied on the table and causes them to fire.	This command does not activate the triggers applied on the table to fire.

-- Restore	It allows us to restore the deleted data by using the COMMIT or ROLLBACK statement.	We cannot restore the deleted data after using executing this command.

-- a DELETE command is used when we want to customize the deletion of records from the table. And a TRUNCATE command is used when we do not want to left any records or data in the table, i.e., we want to empty the table.

-- TRUNCATE removes all the record from the table at once, whereas the DROP command removes the table or databases and as well as the structure.
