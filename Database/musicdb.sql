-- Creation of the 'MusicDB' database
CREATE DATABASE musicdb;

-- 'Bands' table creation
CREATE TABLE bands (
    id_band INTEGER IDENTITY,
    band_name VARCHAR(30),
    genre VARCHAR(20),
    foundation DATETIME
);

-- Adding the primary key for the 'Bands' table
ALTER TABLE bands ADD CONSTRAINT PK_Band PRIMARY KEY (id_band);

-- 'Artists' table creation
CREATE TABLE artists (
	id_artist INTEGER IDENTITY,
	first_name VARCHAR(20),
	last_name VARCHAR(20),
    age INTEGER,
    gender VARCHAR(1),
    id_band INTEGER NOT NULL
);

-- Adding the primary key for the 'Artists' table
ALTER TABLE artists ADD CONSTRAINT PK_Artist PRIMARY KEY (id_artist);

-- Adding the foreign key for the 'Artists' table referencing to the 'Bands' table
ALTER TABLE artists ADD CONSTRAINT FK_Artist FOREIGN KEY (id_band) REFERENCES bands(id_band);

-- 'Positions' table creation
CREATE TABLE positions (
    id_position INTEGER IDENTITY,
    position_name VARCHAR(20),
);

-- Adding the primary key for the 'Positions' table
ALTER TABLE positions ADD CONSTRAINT PK_Position PRIMARY KEY (id_position);

-- 'Lineup' table creation
CREATE TABLE lineup (
    id_artist INTEGER NOT NULL,
    id_position INTEGER NOT NULL
);

-- Adding the composite primary key for the 'Lineup' table
ALTER TABLE lineup ADD CONSTRAINT PK_Lineup PRIMARY KEY (id_artist, id_position);

-- Adding a couple of foreign keys for the 'Lineup' table referencing to the 'Artists' and 'Positions' tables
ALTER TABLE lineup ADD CONSTRAINT FK_Lineup_Artist FOREIGN KEY (id_artist) REFERENCES artists(id_artist);
ALTER TABLE lineup ADD CONSTRAINT FK_Lineup_Position FOREIGN KEY (id_position) REFERENCES positions(id_position);

-- 'Albums' table creation
CREATE TABLE albums (
    id_album INTEGER IDENTITY,
    album_name VARCHAR(30),
    publication_year DATETIME,
    credits VARCHAR(100),
    album_cover IMAGE,
    id_band INTEGER NOT NULL
);

-- Adding the primary key for the 'Albums' table
ALTER TABLE albums ADD CONSTRAINT PK_Album PRIMARY KEY (id_album);

-- Adding the foreign key for the 'Albums' table referencing to the 'Bands' table
ALTER TABLE albums ADD CONSTRAINT FK_Album FOREIGN KEY (id_band) REFERENCES bands(id_band);