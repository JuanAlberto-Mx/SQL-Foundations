-- Insert new records in a table specified
-- INSERT INTO table_name (column1, column2, column...) VALUES(value1, value2, value...);
-- Columns specification after the table name is optional.
-- Values section is mandatory and must match each value of the columns specification when exists.
-- If a column is specified as an IDENTITY property, it must be omitted from the values to insert.

INSERT INTO artists(id_number, first_name, last_name) VALUES(1, 'Christopher', 'Cross', 37, 'M');
INSERT INTO artists(id_number, first_name, last_name) VALUES(2, 'Paul', 'Stanley', 30, 'M');
INSERT INTO artists(id_number, first_name, last_name) VALUES(3, 'Jimmy', 'Jamison', 31, 'M');
INSERT INTO artists(id_number, first_name, last_name) VALUES(4, 'Steve', 'Perry', 35, 'M');
INSERT INTO artists(id_number, first_name, last_name) VALUES(5, 'Freddy', 'Mercury', 34, 'M');
INSERT INTO artists(id_number, first_name, last_name) VALUES(6, 'Joseph', 'Williams', 29, 'M');
INSERT INTO artists(id_number, first_name, last_name) VALUES(7, 'Roland', 'Orzabal', 30, 'M');
INSERT INTO artists(id_number, first_name, last_name) VALUES(8, 'Brandon', 'Flowers', 25, 'M');
INSERT INTO artists(id_number, first_name, last_name) VALUES(9, 'Robert', 'Plant', 39, 'M');
INSERT INTO artists(id_number, first_name, last_name) VALUES(10, 'Ozzy', 'Orbourne', 37, 'M');

-- Considering a bands table with id_band and band_name columns:
-- If id_band is IDENTITY then band_name must be the only attribute to insert in the table.
INSERT INTO bands(band_name) VALUES('Christopher Cross');
INSERT INTO bands(band_name) VALUES('KISS');
INSERT INTO bands(band_name) VALUES('Survivor');
INSERT INTO bands(band_name) VALUES('Journey');
INSERT INTO bands(band_name) VALUES('Queen');
INSERT INTO bands(band_name) VALUES('TOTO');
INSERT INTO bands(band_name) VALUES('Tears For Fears');
INSERT INTO bands(band_name) VALUES('The Killers');
INSERT INTO bands(band_name) VALUES('Led Zepellin');
INSERT INTO bands(band_name) VALUES('Black Sabbath');

INSERT INTO positions(id_position, position_name) VALUES(1, 'Singer');
INSERT INTO positions(id_position, position_name) VALUES(2, 'Bass');
INSERT INTO positions(id_position, position_name) VALUES(3, 'Rythm Guitar');
INSERT INTO positions(id_position, position_name) VALUES(4, 'Lead Guitar');
INSERT INTO positions(id_position, position_name) VALUES(5, 'Drummer');