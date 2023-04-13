-- VARCHAR(length)
-- Sets a character string with variable length.
-- The character length is specified between parenthesis.
-- The values are specified between single quotes.
-- For example: 'Hello'

-- NVARCHAR(length) is similar to varchar type. However, nvarchar allows storing unicode characters.

-- CHAR(length) sets a character with a fixed length.

-- NCHAR(length) is similar to char type. However, nchar allows storing unicode characters.

-- TEXT sets binary data with variable length.
-- It is not necessary to specify the length of the text.

-- NTEXT is similar to text type. However, ntext allows storing unicode characters.

-- INTEGER to set integer numeric values.
-- It is divided in the following subtypes: SMALLINT, TINYINT, and BIGINT
-- For example: 10

-- DECIMAL or NUMERIC(t,d)
-- Allows storing numeric values with a specific number of digits (t) and a specific number of decimals (d).
-- If the number of decimals is not defined then it is 0.
-- If the number of decimals is greater than the number specified, decimals are rounded to the closest number.
-- For example:
-- decimal(4,2) -> 99.99
-- decimal(4) -> 9999
-- decimal(4,2) -> 1234.347 -> 1234.35
-- decimal(4,2) -> 1234.342 -> 1234.34

-- FLOAT to set numeric values with decimals.
-- For example: 10.5

-- MONEY to set currency values.
-- It can have a size of 19 digits and four of them represent decimals.

-- SMALLMONEY is similar to money.

-- DATETIME stores dates from January 1, 1753 to December 31, 9999.
-- Dates are specified by using single quotes.
-- It is possible to use "-", "/", and "." as date separators.
-- All dates entered as datetime are represented as "year-month-day hour:minute:seconds.milliseconds" despite the format selected.
-- It is possible to enter a date without an hour. In this case, the hour is set to '00:00:00.000'
-- It is possible to enter an hour without a date. In this case, the date is set to '1900-01-01'
-- For example:
-- '09-01-1986' -> '1986-01-09 00:00:00.000'
-- '16:40' -> '1900-01-01 16:40.000'

-- SET DATEFORMAT allows establishing the order in which a date is represented.
-- Format accepted are the following: mdy, myd, dmy, dym, ydm.
-- Prefedined format is mdy (month day year).
SET dateformat dmy;

-- SMALLDATETIME stores dates from January 1, 1900 to June 6, 2079.