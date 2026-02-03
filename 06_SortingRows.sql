-- sorting rows is done using ORDER BY

-- default order is ascending
SELECT student_name FROM students1 ORDER BY student_name;

SELECT student_name FROM students1 ORDER BY student_name DESC;

-- selects all students from the "students1" table, sorted by the name and the marks column. This means that it orders by name, but if some rows have the same name, it orders them by marks
SELECT * FROM students1 ORDER BY student_name, marks;

-- selects all students, sorted ascending by the "name and descending by the marks column
SELECT * FROM students1 ORDER BY student_name ASC, marks DESC;


-- The expression subject IN ('chemistry','physics') can be used as a value - it will be 0 or 1.
SELECT winner, subject, subject IN ('physics','chemistry')
  FROM nobel
 WHERE yr=1984
 ORDER BY subject,winner


-- show the 1984 winners and subject ordered by subject and winner name; but list chemistry and physics last.
SELECT winner, subject
  FROM nobel
 WHERE yr=1984
 ORDER BY subject in ('physics','chemistry')
