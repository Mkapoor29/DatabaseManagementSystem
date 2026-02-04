-- show the number of each student.
select student_name, count(student_name) from students group by student_name;

-- Show student_name and how many times it appears, only for names that appear more than once.
select student_name, count(student_name) from students1 group by student_name having count(*)>=2;
select student_name, count(student_name) from students1 group by student_name having count(student_name)>=2;

-- select students whose avg marks are greater than 80;
select student_name, round(avg(marks), 2) from students1 group by student_name having avg(marks) > 80;

-- 
+-------+-------+--------+
| emp   | dept  | amount |
+-------+-------+--------+
| Alice | IT    |    500 |
| Alice | IT    |    700 |
| Bob   | IT    |    300 |
| Bob   | IT    |    400 |
| Carol | HR    |    800 |
| Carol | HR    |    900 |
| Dave  | HR    |    200 |
| Eve   | Sales |   1000 |
| Eve   | Sales |   1200 |
+-------+-------+--------+

-- dept with total sales over 1500
