-- MySQL ASCII() Function
-- Return the ASCII value of the first character in "CustomerName":

SELECT ASCII(CustomerName) AS NumCodeOfFirstChar
FROM Customers;

-- Return the length of the string:
select char_length("Tamim khan") as lengthofstring;

-- MySQL CONCAT() Function
-- Add several strings together:
select CONCAT ("Tamim ", "Khan ", "we ", "are ", "together ") as concatestring;


-- MySQL CONCAT_WS() Function
-- Add several expressions together, and add a "-" separator between them:

SELECT CONCAT_WS("-", "SQL", "Tutorial", "is", "fun!") AS ConcatenatedString;

-- MySQL FIELD() Function
-- Return the index position of  "q" in the string list:
select FIELD ("q", "s", "q", "l");

--  FIND_IN_SET()
-- Search for "q" within the list of strings:

SELECT FIND_IN_SET("q", "s,q,l");

-- MySQL FORMAT() Function
-- Format the number as "#,###,###.##" (and round with two decimal places):

SELECT FORMAT(250500.5634, 2);

-- MySQL INSERT() Function
-- Insert the string "Example" into the string "W3Schools.com". Replace the first nine characters:
select insert ("W3schools.com", 1,9, "Example");

-- MySQL INSTR() Function
-- Search for "3" in string "W3Schools.com", and return position:

select instr("W3schools.com", "3") as matchposition;

-- MySQL LCASE() Function
-- Convert the text to lower-case:

SELECT LCASE("SQL Tutorial is FUN!");


-- MySQL LEFT() Function
-- Extract 3 characters from a string (starting from left):

SELECT LEFT("SQL Tutorial", 3) AS ExtractString;

-- MySQL LENGTH() Function
-- Return the length of the string, in bytes:
select length("Tamim khan") as lengthofstring;

-- MySQL LPAD() Function
-- Left-pad the string with "ABC", to a total length of 20:

select lpad ("Tamim khan", 20, "ABC");--mane holo amar jei length ace oita age rakhte hobe then jei length bola ace oita ta puron korte hobe abc likhe

-- MySQL MID() Function
-- Extract a substring from a string (start at position 5, extract 3 characters):
select Mid ("Tamim khan vlo chele", 5, 3) as ExtractString;

-- MySQL POSITION() Function
-- Search for "3" in string "W3Schools.com", and return position:
select position ("3" in "W3schools.com") as matchposition;

-- MySQL REPEAT() Function
-- Repeat a string 3 times:
select repeat("Tamim khan", 3);

-- MySQL REPLACE() Function
-- Replace "SQL" with "HTML":

select Replace("SQL Tutorial", "SQL", "HTML");

-- MySQL REVERSE() Function
-- Reverse a string:

select Reverse("Tamim khan");

-- MySQL RIGHT() Function
-- Extract 4 characters from a string (starting from right):

select right ("Tamim khan is cool", 4) as extractstring;

-- MySQL RPAD() Function
-- Right-pad the string with "ABC", to a total length of 20:
select rpad("Tamim khan", 20, "ABC");

-- MySQL SPACE() Function
-- Return a string with 10 space characters:
select space(10);


-- MySQL STRCMP() Function
-- Compare two strings:
select strcamp("Tamim khan", "Tamim khan");--compare korbo two ta string ar modde kono omil ace kina, joid o mil pawa jay tahole bolbo koyta omil string pawa gece

-- MySQL SUBSTR() Function
-- Extract a substring from a string (start at position 5, extract 3 characters):
select substr ("Tamim khan is cool", 5, 3)  as extractstring;--akta string theke substring ber korci, je khane positon theke suru theke extract value projnto colte thakbe


-- MySQL SUBSTRING_INDEX() Function
-- Return a substring of a string before a specified number of delimiter occurs:
select SUBSTRING_INDEX("www.w3schools.com", ".", 1);--joid amar aspect occure ghote tahole ami close kore dibo


-- MySQL TRIM() Function
-- Remove leading and trailing spaces from a string:
select  trim ('  tamim khan ') as trimmedstring;

-- MySQL UCASE() Function
-- Convert the text to upper-case:

SELECT UCASE("SQL Tutorial is FUN!");

-- MySQL UPPER() Function
-- Convert the text to upper-case:

SELECT UPPER("SQL Tutorial is FUN!");


-- MySQL ABS() Function
SELECT ABS(-243.5);

-- MySQL ACOS() Function
-- Return the arc cosine of a number:
SELECT ACOS(0.25);

-- MySQL ASIN() Function
-- Return the arc sine of a number:

select ASIN(0.25);

MySQL ATAN() Function
select atan(0.25);


-- MySQL ATAN2() Function
-- Return the arc tangent of two values:

select Atan(0.50, 1);

-- MySQL CEIL() Function
-- Return the smallest integer value that is greater than or equal to 25.75:

SELECT CEIL(25.75);

-- MySQL CEILING() Function
-- Return the smallest integer value that is greater than or equal to 25.75:

select CEILING (25.75);

-- MySQL COS() Function
-- Return the cosine of a number:
select cos(2);

-- MySQL COT() Function
-- as per cos

-- MySQL DEGREES() Function
-- Convert the radian value into degrees:

select degrees(1.5);


-- MySQL DIV Function
-- Integer division (10/5):
select  10 div 5;

-- MySQL EXP() Function
-- Return e raised to the power of 1:
select exp(1);

-- MySQL FLOOR() Function
-- Return the largest integer value that is less than or equal to 25.75:
select FLOOR(25.75);

-- MySQL GREATEST() Function
-- Return the greatest value of the list of arguments:

select greatest(3,12,34,8,25);


-- MySQL LEAST() Function
-- Return the smallest value of the list of arguments:

select least(3,12,34);

-- MySQL LN() Function
-- Return the natural logarithm of 2:

select ln(220);

-- MySQL LOG() Function
-- Return the natural logarithm of 2:

SELECT LOG(2);

-- MySQL LOG10() Function
-- Return the base-10 logarithm of 2:
select log10(2);

-- MySQL LOG2() Function
-- Return the base-2 logarithm of 6:

SELECT LOG2(6);


-- MySQL PI() Function
-- Return the value of PI:

select PI();

-- MySQL POWER() Function
-- Return 4 raised to the second power:

SELECT POWER(4, 2);

-- MySQL RADIANS() Function
-- Convert a degree value into radians:
select radians(180);


-- MySQL RAND() Function
-- Return a random decimal number (no seed value - so it returns a completely random number >= 0 and <1):

SELECT RAND();

-- MySQL ROUND() Function
-- Round the number to 2 decimal places:

SELECT ROUND(135.375, 2);

-- MySQL SIGN() Function
-- Return the sign of a number:

SELECT SIGN(255.5);--sing bit means last bit to the value

-- MySQL TRUNCATE() Function
-- Return a number truncated to 2 decimal places:

SELECT TRUNCATE(135.375, 2);

