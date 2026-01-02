SHOW DATABASES;
CREATE DATABASE hello;
USE hello;

CREATE TABLE student(
    student_id INT PRIMARY KEY,
    name VARCHAR(20),
    major VARCHAR(20)
);

-- the following is same as above
CREATE TABLE student(
    student_id INT,
    name VARCHAR(20),
    major VARCHAR(20),
    PRIMARY KEY(student_id)
);


-- DDL command. gives structure of table. shows users about columns, data types, constraints, and other attributes
DESCRIBE student;

-- deletes the data inside the table but not the table
TRUNCATE student;

-- completely deletes the table from database
DROP TABLE student;

-- deletes the database
DROP DATABASE hello;
