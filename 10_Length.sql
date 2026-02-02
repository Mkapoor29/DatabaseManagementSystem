select student_name, length(student_name) from students;

select student_name, length(student_name) from students where student_name like "M%";

SELECT name, capital FROM world WHERE length(name) = length(capital);


