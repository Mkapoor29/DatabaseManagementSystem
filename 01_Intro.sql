-- Create Database
	create database cm_devices;

-- Make sure you select the database you want to create the table inside of by typing the following SQL statement: 
	  use cm_devices;

-- Create table with relevant attributes and data types
	create table devices(deviceID int, deviceNAme varchar(50), price decimal);

-- to show all tables  from a database
    show tables;

-- To check structure of table 
    show coulmns from devices;


-- To give default values in a column(for example, for a restraunt in ABC city majority of customers are from ABC city. hence deafult value of city can be set as ABC while creating the table.
	create table customer(custId int not null , postCode varchar(10) default  "HA97DE", town VARCHAR(30) DEFAULT "Harrow"); 
