-- A FOREIGN KEY is a field or set of fields in one table, that refers to the PRIMARY KEY in another table.
-- A table with a foreign key is called child table.
-- A table with the primary key is called parent table.

CREATE TABLE bands (
    id_band INTEGER PRIMARY KEY IDENTITY,
    band_name VARCHAR(30)
);

CREATE TABLE artists (
	id_artist INTEGER PRIMARY KEY IDENTITY,
	first_name VARCHAR(20),
	last_name VARCHAR(20),
    age INTEGER,
    gender VARCHAR(1),
    id_band INTEGER FOREIGN KEY REFERENCES bands(id_band) -- Foreign Key defined at the moment of creating the table
);

CREATE TABLE positions (
    id_position INTEGER PRIMARY KEY IDENTITY,
    position_name VARCHAR(20),
    CONSTRAINT FK_id_artist FOREIGN KEY (id_artist) REFERENCES artists(id_artist) -- Naming a foreign key by using the CONSTRAINT keyword
);

CREATE TABLE albums (
    id_album INTEGER PRIMARY KEY IDENTITY,
    album_name VARCHAR(30),
    publication_year DATETIME,
    credits VARCHAR(100),
    album_cover IMAGE
);

ALTER TABLE albums ADD FOREIGN KEY (id_band) REFERENCES bands(id_band); -- Adding a foreign key by using ALTER TABLE when the table is already created