-- Identity property allows generating of unique numeric values automatically each time a row is inserted.
-- The value of an identity attribute starts with 1.
-- Identity columns are often defined as integer columns, but they can also be declared as a bigint, smallint, tinyint
-- or numeric or decimal as long as the scale is 0.
-- It is possible to establish the beginning and the increment of the indexes by using IDENTITY(beginning, increment).
-- Identity properties are not editable.

CREATE TABLE artists (
	id_number INTEGER PRIMARY KEY IDENTITY,-- The column is established as identity.
	first_name VARCHAR(20),
	last_name VARCHAR(20),
    age INTEGER,
    gender VARCHAR(1)
);

CREATE TABLE bands (
    id_band INTEGER PRIMARY KEY IDENTITY(10,1), -- Definition of an identity property starting with 10 and incrementing its value in 1.
    band_name VARCHAR(30)
);

-- ident_seed('table_name') function allows obtaining the initial value of a specific table's identity property
SELECT ident_seed('artists');

-- ident_incr('table_name') gets the increment value of a specific table's identity property
SELECT ident_incr('artists');

-- IDENTITY_INSERT allows inserting values directly in an identity column.
SET IDENTITY_INSERT artists ON;