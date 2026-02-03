-- ABS()
-- returns the absolute (positive) value of a number.
select abs(-754.54);

-- AVG()
select avg(marks) as avaerage from students1;

-- CEIL()
-- returns the smallest interger value greater than or equal.
select ceil(26.50) -- 27
select ceil(29.78) -- 30
select ceil(23.13) -- 24

-- FLOOR()
-- returns largest value less than or equal
select floor(28.51); -- 28
select floor(28.12); -- 28

GREATEST()
-- compares strings lexicographically (dictionary order), and w comes after f and a
select greatest(23,78,90,500); -- 500
select greatest("w2df", "f45k", "aas"); -- w2df

LEAST()
select least(23,78,90,500);
select least("w2df", "f45k", "aas");

-- POW() or POWER()
select pow(4,2); -- 4 raised to power 2

-- ROUND(number, decimals)

-- round(num, +ve dec) means round after decimal point
select round(23.90); -- 24
select round(45.50); -- 46
select round(45.20); -- 45
select round(45.5087, 2); -- 45.51

-- round(num, -dec) means round to th eleft of ddecimal point

-- round to nearest tens
select round(2345, -1); -- 2350

-- round to nearest 100
select round(2345, -2); -- 2300

-- round to nearest 1000
select round(2345, -3); -- 2000

-- round to nearest 10000
select round(2345, -4); -- 0
