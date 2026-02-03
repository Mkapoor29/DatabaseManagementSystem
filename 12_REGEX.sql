+------------+--------------+----------------------+
| student_id | student_name | student_major        |
+------------+--------------+----------------------+
|          1 | Mark         | Computer Science     |
|          2 | Bethany      | Software Engineering |
|          3 | Henhy        | Biology              |
|          4 | Jacob        | Computer Science     |
|          5 | Miller       | Biology              |
|          6 | Bob          | Computer Science     |
|          7 | Jackie       | Software Engineering |
|          8 | Mark         | Biology              |
|          9 | Lee          | Software Engineering |
|         10 | Tiffany      | Computer Science     |
+------------+--------------+----------------------+
  

-- starts with '^__'
select student_name from students where student_name regexp '^ma';

-- ends with '__$'
select student_name from students where student_name regexp 'ny$';

-- exact match '^__$'
select student_name from students where student_name regexp '^mark$';

-- or condition'@@|##|%%'
select student_name from students where student_name regexp 'ny|ma';

--  allow us to match any single character listed inside []
select student_name from students where student_name regexp '[zm]';

-- starts with m or b
select student_name from students where student_name regexp '^[mb]';

-- contains zero or more '@*'
 select student_name from students where student_name regexp 'z*';

-- contains one or more '@+'
select student_name from students where student_name regexp 'a+';

-- contains exactly 3 @
-- case senitive
-- consecutive
select student_name from students where student_name regexp 'l{2}';
select student_name from students where student_name regexp 'll{2}'; -- searches for l and 2 l's

-- contains '@' between min and max
select student_name from students where student_name regexp 'h{1,4}';

-- contains this many characters
 select student_name from students where regexp_like(student_name, '^...$'); -- 3 characters
select student_name from students where regexp_like(student_name, '^.{5}$'); -- 5 characters

-- word boundary metacharacter that matches the beginning of a word.
-- case-insensitive
select student_name from students where student_name regexp '\\bma';

-- case sensitive search 'c'
 select student_name from students where regexp_like(student_name, '^m', 'c');
