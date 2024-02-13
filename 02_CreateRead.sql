-- create database
    create database databaseName;
-- drop database

-- create table
    create table tableName;
-- alter table
        alter table tableName add (coulmnName DataType);
        alter table tableName drop column nationality;
        alter table tableName modify country varchar(100);
-- insert values
    insert into tableName (coulmn1, coulmn2, .... coulmnN) values (value1, value2, ...., valueN);
-- insert multiple records at a time
    insert into student (id , name) 
    values
    (1, "ABC"),
    (2, "DEF");
-- insert into select statement -> it is used to query data from a column within a source table and place the results of that query in the coulmn within a target table
-- players(id, name, start_date, country)
-- country(countryName) this table is empty rn and we will insert data from country coulmn from players table into countryName coulmn of country table
  insert into country(countryName)
  select country from players;
