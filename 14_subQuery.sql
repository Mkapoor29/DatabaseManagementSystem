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

You need	      Subquery type
One number	-> =(SELECT ...)
Multiple values ->	IN (SELECT ...)
Compare per row	-> Correlated subquery
Compare groups	-> Subquery inside HAVING

-- Show all sales where the amount is greater than the average sale amount.
select amount from sales where amount > (select avg(amount) from sales);

-- Show the employee and amount for sales that equal the maximum sale amount.
select emp, amount from sales where amount = (select max(amount) from sales);

-- Show all rows where the sale amount is equal to the minimum sale
select * from sales where amount  = (select min(amount) from sales);

-- Show employees whose total sales are greater than the average sale amount of the whole company.
select emp, sum(amount) from sales group by emp having sum(amount) > (select avg(amount) from sales); 

-- Show all sales that belong to the department with the highest total sales.
select dept, amount from sales 
  where 
  dept = 
  (select dept, sum(amount) from sales 
  group by dept 
  order by sum(amount) 
  limit 1
  );

-- What if two departments tie for highest total?
-- If a subquery might return more than one row, use IN.
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
| Grace | Maths |   1100 |
| Jiffy | Maths |   1100 |
+-------+-------+--------+
select dept from sales 
group by dept 
having sum(amount) 
in 
  ( select max(dept_total) 
  from
    (
      select sum(amount) as dept_total from sales group by dept
    )
    as dept_total
  );
+-------+-------------+
| dept  | sum(amount) |
+-------+-------------+
| IT    |        1900 |
| HR    |        1900 |
| Sales |        2200 |
| Maths |        2200 |
+-------+-------------+
+-----------------+
| max(dept_total) |
+-----------------+
|            2200 |
+-----------------+
+-------+
| dept  |
+-------+
| Sales |
| Maths |
+-------+

-- Show employees whose average sale is greater than the overall company average sale.
select emp, avg(amount) from sales group by emp having avg(amount) > (select avg(amount) from sales);


-- Show sales that are greater than the average sale of their department.
This one introduces a correlated subquery (don’t worry, still beginner-friendly).


-- Show departments whose total sales are greater than 1500
-- (Use a subquery inside IN).
 select dept, sum(amount) from sales group by dept having sum(amount) > 1500;
select * from sales where dept in (select dept from sales group by dept having sum(amount) > 2000);
select dept from sales where dept in (select dept from sales group by dept having sum(amount) > 2000) group by dept; -- unique data
select distinct dept from sales where dept in (select dept from sales group by dept having sum(amount) > 2000);

-- Show employees who work in departments whose total sales exceed 2000.
select distinct emp from sales where dept in (select dept from sales group by dept having sum(amount) > 2000);

-- Show departments whose total sales are greater than the average department total.
select dept from sales 
  group by dept 
  having sum(amount) > 
  (
    select avg(dept_total) 
    from 
    ( 
      select sum(amount) as dept_total from sales group by dept 
    ) 
    as dept_total
  );
+------------+
| dept_total |
+------------+
|       1900 |
|       1900 |
|       2200 |
+------------+
+-----------------+
| avg(dept_total) | name of table is dept_total
+-----------------+
|       2000.0000 |
+-----------------+

-- Show the name and the population of each country in Europe. Show the population as a percentage of the population of Germany.
select name, concat(round(population * 100/ (select population from world where name = 'Germany'), 0), '%')
from world 
where continent = 'Europe'

-- List the name and continent of countries in the continents containing either Argentina or Australia. Order by name of the country.

select name, continent 
from world 
where 
continent in 
(select continent from world where name in ('Argentina', 'Australia')) 
order by name
