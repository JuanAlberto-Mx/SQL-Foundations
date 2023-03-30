-- Creating a table to contain a company's staff information.
-- The staff representation consists of the following aspects:
-- 1) A control number to identify the person.
-- 2) The full name of the person separated by first and last name.
-- 3) The age of the person.
-- 4) The gender of the person.

CREATE TABLE staff ( -- Use the more natural collective term where possible
	control_number INTEGER, -- Add a coma at the finish of every column specification
	first_name VARCHAR(20), -- Separate with underscore the names composed by two or more words
	last_name VARCHAR(20),
    age INTEGER,
    gender VARCHAR(1) -- The last column specification does not finish with a coma
);

-- Obtaining the staff table's specification by using the [sp_columns] store procedure.
EXEC sp_columns staff;

-- Deleting the staff table.
DROP TABLE staff;