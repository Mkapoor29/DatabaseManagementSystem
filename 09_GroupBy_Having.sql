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
select dept, sum(amount) from sales group by dept having sum(amount) > 2000;

-- Show each employee and the number of sales, but only include employees who made more than 1 sale
select emp, count(amount) from sales group by emp having count(*) > 1;

-- Show each department and the average sale amount, but only include departments where the average is above 700.
select dept, avg(amount) from sales group by dept having avg(amount) > 700;


-- Show each employee and their maximum sale, but only include employees whose max sale is at least 1000.
select emp, max(amount) from sales group by emp having max(amount) >=1000;

-- Show each department and minimum sale, but only include departments whose minimum sale is greater than 300.
select dept, min(amount) from sales group by dept having min(amount) >=300;

-- Show each employee and total sales, but only include employees whose total sales are between 800 and 2000.
select emp, sum(amount) from sales group by emp having sum(amount) between 800 and 2000;

-- Show departments and total sales, but ignore sales below 500, Only include departments with total sales greater than 1500
select dept, sum(amount) from sales where amount > 500 group by dept having sum(amount) > 1500;

-- Show employees and average sale, but: Only look at sales above 400; Only include employees whose average is greater than 700
select emp, round(avg(amount), 2) from sales where amount > 400 group by emp having avg(amount) > 700;



-- SUBQUERIES 
-- Show departments whose total sales are higher than the overall average department sales.
select dept, sum(amount) from sales group by dept;
select dept, sum(amount) from sales group by dept having sum(amount) > avg(amount);

-- Show employees whose average sale is greater than the company-wide average sale.
