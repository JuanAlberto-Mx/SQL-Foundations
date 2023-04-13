-- A PRIMARY KEY allows identifying a field in a table, i.e., it establishes a column whose value is unique.
-- 1) A table can contain only one PRIMARY KEY constraint.
-- 2) A primary key can be formed by one column or by combining two or more.
-- 3) If a primary key consists of more than one column, duplicate values are allowed in one column,
--    but each combination of values from all the columns in the primary key must be unique.
-- 4) The primary key statement sets involved columns to NOT NULL values automatically.

CREATE TABLE artists (
	id_artist INTEGER PRIMARY KEY,-- The column is established as the primary key during the table definition.
	first_name VARCHAR(20),
	last_name VARCHAR(20),
    age INTEGER,
    gender VARCHAR(1)
);

CREATE TABLE bands (
    id_band INTEGER,
    band_name VARCHAR(30),
    PRIMARY KEY(id_band) -- Adding a primary key constraint at the end of the table definition.
);

CREATE TABLE positions ( -- Creating a table without a primary key
    id_position INTEGER,
    position_name VARCHAR(20)
);

ALTER TABLE positions ADD PRIMARY KEY(id_position); -- Adding a primary key through the using of ALTER TABLE statement.

CREATE TABLE albums (
    id_album INTEGER PRIMARY KEY IDENTITY,
    album_name VARCHAR(30),
    publication_year DATETIME,
    credits VARCHAR(100),
    album_cover IMAGE
);