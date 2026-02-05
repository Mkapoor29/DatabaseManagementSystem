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

-- Show all sales where the amount is greater than the average sale amount.
select amount from sales where amount > (select avg(amount) from sales);

-- Show the employee and amount for sales that equal the maximum sale amount.
select emp, amount from sales where amount = (select max(amount) from sales);

-- Show all rows where the sale amount is equal to the minimum sale
select * from sales where amount  = (select min(amount) from sales);

-- Show employees whose total sales are greater than the average sale amount of the whole company.
select emp, sum(amount) from sales group by emp having sum(amount) > (select avg(amount) from sales); 

-- Show all sales that belong to the department with the highest total sales.
