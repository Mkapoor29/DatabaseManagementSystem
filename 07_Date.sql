-- DATE DATA TYPES
DATA_TYPE | FORMAT | USE
1) DATE | YYYY--MM--DD | only for dates and not time
2) DATETIME | YYYY--MM--DD HH:MM:SS | stores specific time with the date (like transcation number)
3) TIMESTAMP | YYYY-MM-DD HH:MM:SS | similar to datetime but also includes time zone and automatically updates to current timestamp when record is modified
4) YEAR | YYYY OR YY | useful for applications where only the year is needed (tracking birth years or fiscal years)

-- returns timestamp
SELECT NOW();

-- returns current date
SELECT CURDATE();

-- returns current time only
SELECT CURTIME();


create table birthChart( person varchar(20), birth DATETIME);
insert into birthChart VALUES
('Abc', '2003-01-29 11:30:29'),
('Byd', '2002-06-08 23:09:56'),
('Huy', '2001-03-23 18:12:41'),
('Qtf', '2003-06-17 09:17:20'),
('Opq', '2004-11-05 15:32:37');

SELECT person , DATE(birth) FROM birthChart;

-- select students with birthdays in the upcoming month is also simple. Suppose that the current month is October. Then the month value is 10 and you can look for animals born in November (month 11) like this:
select student_name FROM students1 WHERE MONTH(student_dob) = 11;

SELECT DATEDIFF('2026-01-20', '2003-01-29');

%a-Abbreviated weekday name (Sun-Sat)
%b-Abbreviated month name (Jan-Dec)
%c-Month, numeric (0-12)
%D-Day of month with English suffix (0th, 1st, 2nd, 3rd)
%d-Day of the month, numeric (00-31)
%H-Hour (00-23)
%h-Hour (01-12)
%i-Minutes, numeric (00-59)
%M-Month name (January-December)
%m-Month, numeric (00-12)
%p-AM or PM
%U-Week (00-53) where Sunday is the first day of the week
%u-Week (00-53) where Monday is the first day of the week
%W-Weekday name (Sunday-Saturday)
%Y-Year, numeric, four digits
%y-Year, numeric, two digits
  
SELECT DATE_FORMAT('2003-01-29 11:30:25', '%W %M %D %Y');

-- show current age from birth date

SELECT person, birth, CURDATE(), TIMESTAMPDIFF(YEAR, birth, CURDATE()) AS age FROM birthChart ORDER BY person;
