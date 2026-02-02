-- LOCATE(substring, string, start)
-- helps searches for a substring in a string, and returns the position. If the substring is not found, this function returns 0. Note: This function performs a case-insensitive search.

select locate("u", "BUS") as pos;

select locate("ab", "abghyabcko", 3);

-- CONCATE()
-- adds two or more strings together.
 select concat("hello", " ","my name is", " ", "Mark") as name;

-- CHAR_LENGTH()
-- return the length of a string (in characters).
select char_length(person) from birthchart;

-- LENGTH()
--  returns the length of a string (in bytes).

-- FORMAT()
-- formats as number to a format "#, ###, ###.####", roundedd to a speecific number of decimal places, thenit returns the result as a string
select format(7865.65446, 2);


-- INSERT(string, positionToInsert, numberOfCharactersToBeReplaced, stringToReplaceWith)
-- If position is outside the length of string, this function returns string
-- If number is higher than the length of the rest of the string, this function replaces string from position until the end of string

select insert("example@123", 2, 5, "win");  -- ewine@123
select insert("123", 4, 5, "win"); -- 123
select insert("123", 2, 5, "winter"); -- 1winter

-- LEFT(string, numberOfChar)
-- extracts a number of characters from a string (starting from left).
select left("Miller", 4);

-- SUBSTRING()



-- LOWER(), UPPER()
select lower("HELLO");
select upper("hello");
