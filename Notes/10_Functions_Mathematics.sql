-- ABS(number)
-- Gets the absolute value of a number.

SELECT ABS(-9186); -- Returns 9186
SELECT ABS(-91.86); -- Returns 91.86

-- CEILING(number)
-- Rounds up a given number.

SELECT CEILING(91.86); -- Returns 92

-- FLOOR(number)
-- Rounds down a given number.

SELECT FLOOR(91.86); -- Returns 91

-- number % number
-- Returns the remaining part of a division.

SELECT 91 % 8 -- Returns 3
SELECT 91 % 86 -- Returns 5

-- POWER(x,y)
-- Returns the 'x' number elevated to the 'y' power.

SELECT POWER(91, 3); -- Returns 753571
SELECT POWER(19, 5); -- Returns 2476099

-- ROUND(number, length)
-- Rounds a number to a specified number of decimal places.
-- If the length is positive the number is rounded based on that length.
-- If the length is negative the number is rounded from the integer part based on the length.

SELECT ROUND(9.1865, 1); -- Returns 9.2000
SELECT ROUND(9.1865, 2); -- Returns 9.1900
SELECT ROUND(9.1865, 3); -- Returns 9.1870
SELECT ROUND(91.865, -1); -- Returns 90.000

--SIGN(number)
-- Returns 1 if the argument is positive.
-- Returns -1 if the argument is negative.
-- Returns 0 if the argument is zero.

SELECT SIGN(-91.86); -- Returns -1
SELECT SIGN(91.86); -- Returns 1
SELECT SIGN(0); -- Returns 0

-- SQUARE(number)
-- Returns the square of a number.

SELECT SQUARE(4); -- Returns 16
SELECT SQUARE(10); -- Returns 100

-- SQRT(number)
-- Returns the square root of a positive number.

SELECT SQRT(16); -- Returns 4
SELECT SQRT(81); -- Returns 9
SELECT SQRT(9.9); -- Returns 3.14642654451045