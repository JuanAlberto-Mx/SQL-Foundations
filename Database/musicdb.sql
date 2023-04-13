CREATE DATABASE musicdb;

CREATE TABLE bands (
    id_band INTEGER PRIMARY KEY IDENTITY,
    band_name VARCHAR(30),
    genre VARCHAR(20),
    foundation DATETIME
);

CREATE TABLE artists (
	id_artist INTEGER PRIMARY KEY IDENTITY,
	first_name VARCHAR(20),
	last_name VARCHAR(20),
    age INTEGER,
    gender VARCHAR(1),
    id_band INTEGER FOREIGN KEY REFERENCES bands(id_band)
);

CREATE TABLE positions (
    id_position INTEGER PRIMARY KEY IDENTITY,
    position_name VARCHAR(20),
);

CREATE TABLE lineup (
    id_artist INTEGER FOREIGN KEY REFERENCES artists(id_artist),
    id_position INTEGER FOREIGN KEY REFERENCES positions(id_position),
    PRIMARY KEY(id_artist, id_position)
);

CREATE TABLE albums (
    id_album INTEGER PRIMARY KEY IDENTITY,
    album_name VARCHAR(30),
    publication_year DATETIME,
    credits VARCHAR(100),
    album_cover IMAGE,
    id_band INTEGER FOREIGN KEY REFERENCES bands(id_band)
);