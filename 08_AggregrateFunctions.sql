-- MIN() 
select MIN(marks) as least from students1;

-- MAX()
select Max(marks) as highest from students1;

-- MIN() with GROUP BY clause
-- GROUP BY + MIN() = “Worst case per entity”
-- SQL Rule-> Every column in SELECT that is not inside an aggregate function must appear in the GROUP BY clause
 SELECT MIN(marks) as least, student_name from students1 GROUP BY student_name;

-- student with lowest marks
 select student_name, marks from students1 where marks = (select min(marks) from students1)

-- COUNT()

   -- returns number of rows
select COUNT(*) from students1;

-- return number of students having marks more than 85.
select count(student_id) from students1 where marks>85;

 select count(distinct(student_name)) from students1;

-- in  my database, this query returned the number of students having same name.
select count(*) as number, student_name from students1 group by student_name;

select count(student_id), student_major from students group by student_major;


-- SUM()
select sum(marks) from students1;

 select sum(marks), student_name from students1 group by student_name;

--total population of ('Estonia', 'Latvia', 'Lithuania')
select sum(population) from world where name in ('Estonia', 'Latvia', 'Lithuania');

-- AVG()
select avg(marks) from students1;

select avg(marks), student_name from students1 group by student_name;

select * from students1 where marks > (select avg(marks) from students1);
