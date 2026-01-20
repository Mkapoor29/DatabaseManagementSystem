-- --------------------------------------------------------------------------
-- selecting particular rows
-- --------------------------------------------------------------------------
SELECT * FROM students1 WHERE student_name = "Abc";

SELECT * FROM students1 WHERE marks > 85 AND sex = 'f';

SELECT * FROM students WHERE student_major = "Computer Science" OR student_major = "Software Engineering";

-- if it has an area of more than 3 million sq km or it has a population of more than 250 million.
select name, population, area from world where population > 250000000 or area > 3000000;

-- Show the countries that are big by area (more than 3 million) or big by population (more than 250 million) but not both.
SELECT name, population, area FROM world WHERE population > 250000000 XOR area > 3000000;

SELECT * FROM students WHERE (student_major = "Computer Science" AND student_id > 5) OR (student_major = "Software Engineering" AND student_id <= 5);

-- --------------------------------------------------------------------------
-- selecting particular columns
-- --------------------------------------------------------------------------
SELECT student_name from students1;

SELECT DISTINCT student_name FROM students1;

SELECT COUNT(DISTINCT student_name) FROM students1;

SELECT student_name , marks from students1;

SELECT student_name FROM students1 WHERE marks >= 90;

-- --------------------------------------------------------------------------
-- The word IN allows us to check if an item is in a list.
-- --------------------------------------------------------------------------
SELECT * FROM students WHERE student_name IN ("Abc", "Nop", "Hij");

-- --------------------------------------------------------------------------
--  BETWEEN allows range checking (range specified is inclusive of boundary values). 
-- --------------------------------------------------------------------------
SELECT * FROM students1 WHERE marks BETWEEN 85.00 AND 94.5;

-- --------------------------------------------------------------------------
-- LIMIT used to specify first n number of records to return
-- --------------------------------------------------------------------------
SELECT student_name FROM students LIMIT 4;

SELECT * FROM students1 WHERE marks > 90 LIMIT 3;
-- Since you did not specify an ORDER BY, the database returns any 3 matching rows, usually in insertion order.

SELECT * FROM students1 WHERE marks > 90 ORDER BY student_name LIMIT 3;



SELECT stUdent_name, marks/10 FROM students1 WHERE marks >= 85;
