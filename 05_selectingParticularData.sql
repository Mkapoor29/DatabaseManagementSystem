-- --------------------------------------------------------------------------
-- selecting particular rows
-- --------------------------------------------------------------------------
SELECT * FROM students1 WHERE student_name = "Abc";

SELECT * FROM students1 WHERE marks > 85 AND sex = 'f';

SELECT * FROM students WHERE student_major = "Computer Science" OR student_major = "Software Engineering";

SELECT * FROM students WHERE (student_major = "Computer Science" AND student_id > 5) OR (student_major = "Software Engineering" AND student_id <= 5);

-- --------------------------------------------------------------------------
-- selecting particular columns
-- --------------------------------------------------------------------------
SELECT student_name from students1;

SELECT DISTINCT student_name FROM students1;

SELECT student_name , marks from students1;

SELECT student_name FROM students1 WHERE marks >= 90;
