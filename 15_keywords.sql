-- The SQL ALL Operator
-- The ALL operator is used with SELECT, WHERE, and HAVING clauses to compare a value to every value returned by a subquery. 
-- Syntax: SELECT column FROM table1 WHERE column OPERATOR ALL (SELECT column FROM table2);
-- Functionality: It returns TRUE only if the condition is met for all values in the subquery result.
-- Usage: It must be used with comparison operators like >, <, >=, <=, or =.
-- Example: value <= ALL (subquery) is true if the value is less than or equal to every value in the subquery result. 
-- We can use the word ALL to allow >= or > or < or <=to act over a list. For example, you can find the largest country in the world, by population with this query:

SELECT name
FROM world
WHERE population >= ALL(SELECT population
                           FROM world
                          WHERE population>0) -- handles null values

-- The SQL ANY Operator
-- The ANY command returns true if any of the subquery values meet the condition.
SELECT ProductName
FROM Products
WHERE ProductID = ANY (SELECT ProductID FROM OrderDetails WHERE Quantity = 10);

IN
-- The IN command allows you to specify multiple values in a WHERE clause.
-- The IN operator is a shorthand for multiple OR conditions.
