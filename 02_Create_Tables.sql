-- Creating a table with three colums
CREATE TABLE staff ( -- Use the more natural collective term where possible
	control_number INTEGER, -- Add a coma at the finish of every statement
	first_name VARCHAR(20), -- Separate with underscore the names composed by two or more words
	last_name VARCHAR(20) -- The last statement does not finish with a coma
);

-- Obtaining a table's specification by using the [sp_columns] store procedure
exec sp_columns users;

-- Deleting a table
drop table users;