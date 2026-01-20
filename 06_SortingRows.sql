-- sorting rows is done using ORDER BY

-- default order is ascending
SELECT student_name FROM students1 ORDER BY student_name;

SELECT student_name FROM students1 ORDER BY student_name DESC;

-- selects all students from the "students1" table, sorted by the name and the marks column. This means that it orders by name, but if some rows have the same name, it orders them by marks
SELECT * FROM students1 ORDER BY student_name, marks;

-- selects all students, sorted ascending by the "name and descending by the marks column
SELECT * FROM students1 ORDER BY student_name ASC, marks DESC;
