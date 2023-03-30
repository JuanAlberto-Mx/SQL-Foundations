-- Creating a table to contain the artists' information.
-- The artists representation consists of the following aspects:
-- 1) A control number to identify the artist.
-- 2) The full name of the artist separated by first and last name.
-- 3) The age of the artist.
-- 4) The gender of the artist.

CREATE TABLE artists ( -- Use the more natural collective term where possible
	id_number INTEGER, -- Add a comma at the finish of every column specification
	first_name VARCHAR(20), -- Separate with underscore the names composed by two or more words
	last_name VARCHAR(20),
    age INTEGER,
    gender VARCHAR(1) -- The last column specification does not finish with a comma
);

-- Creating a table to contain the bands information.
CREATE TABLE bands (
    id_band INTEGER,
    band_name VARCHAR(30)
);

-- Creating a table to contain the artist's position in the band
CREATE TABLE positions (
    id_position INTEGER,
    position_name VARCHAR(20)
);

-- Obtaining the artists table's specification by using the [sp_columns] store procedure.
EXEC sp_columns artists;

-- Deleting the artists table.
DROP TABLE artists;