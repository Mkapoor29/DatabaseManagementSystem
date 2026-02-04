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
select dept, sum(amount) as total_sales from sales group by dept having sum(amount) > 1500;

--  employees have an average sale above 600
select emp, avg(amount) from sales group by emp having avg(amount) > 600;

-- total number of sales of each dept
select dept, count(amount) from sales group by dept;

-- dept having more than 2 sales
select dept, count(amount) from sales group by dept having count(*) >=2;

-- Which employees have total sales above 1000?
select emp, sum(amount) from sales group by emp having sum(amount) > 1000;


-- Show each department and the total sales, but only include departments with total sales greater than 2000.
