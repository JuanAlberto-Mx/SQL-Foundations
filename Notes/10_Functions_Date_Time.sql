-- GETDATE()
-- Returns the current date and time.

SELECT GETDATE(); -- For example: 2023-04-11 09:21:44.647

-- DATEPART(date_part, origin_date)
-- Gets the part (day, day of year, ) of a specific date

-- Taking into account the date: 2023-04-11 09:21:44.647
SELECT DATEPART(DAY, GETDATE()); -- Returns 11
SELECT DATEPART(WEEKDAY, GETDATE()); -- Returns 2
SELECT DATEPART(DAYOFYEAR, GETDATE()); -- Returns 101
SELECT DATEPART(MONTH, GETDATE()); -- Returns 4

-- DATENAME(date_part, origin_date)
-- Gets the name of a specified date part

-- Taking into account the date: 2023-04-11 09:21:44.647
SELECT DATENAME(WEEKDAY, GETDATE()); -- Returns Tuesday
SELECT DATENAME(MONTH, GETDATE()); -- Returns April

-- DATEADD(date_part, interval, date)
-- Returns a date by adding a specific interval.

SELECT DATEADD(DAY, 1, '2023-11-04 09:21:44.647'); -- Returns 2023-04-12 09:21:44.647
SELECT DATEADD(MONTH, 1, '2023-11-04 09:21:44.647'); -- Returns 2023-05-11 09:21:44.647

-- DATEDIFF(interval, starting_date, ending_date)
-- Gets the difference between two dates according to the specified interval

SELECT DATEDIFF(DAY, '2023-11-04 09:21:44.647', '2023-11-10 09:21:44.647'); -- Returns 6
SELECT DATEDIFF(MONTH, '2023-01-04 09:21:44.647', '2023-11-10 09:21:44.647'); -- Returns 10

-- DAY(date)
-- Gets the day from a specific date

SELECT DAY(GETDATE()); -- Returns 11

-- MONTH(date)
-- Gets the month from a specific date

SELECT MONTH(GETDATE()); -- Returns 4

-- YEAR(date)
-- Gets the year from a specific date

SELECT YEAR(GETDATE()); -- Returns 2023