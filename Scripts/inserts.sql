-- 1) Inserting bands

INSERT INTO bands(band_name) VALUES('Christopher Cross', 'Soft Rock', '1979-12-20');
INSERT INTO bands(band_name) VALUES('KISS', 'Rock', '1974-02-18');
INSERT INTO bands(band_name) VALUES('Survivor', 'Rock', '1979-12-21');
INSERT INTO bands(band_name) VALUES('Journey', 'Rock', '1975-04-01');
INSERT INTO bands(band_name) VALUES('Queen', 'Rock', '1973-07-13');
INSERT INTO bands(band_name) VALUES('TOTO', 'Progressive Rock', '1978-10-15');
INSERT INTO bands(band_name) VALUES('Tears For Fears', 'New Wave', '1983-03-07');
INSERT INTO bands(band_name) VALUES('The Killers', 'Alternative Rock', '2004-06-07');
INSERT INTO bands(band_name) VALUES('Led Zepellin', 'Rock', '1969-01-12');
INSERT INTO bands(band_name) VALUES('Black Sabbath', 'Heavy Metal', '1970-02-13');

-- 2) Inserting positions

INSERT INTO positions(position_name, id_artist) VALUES('Singer');
INSERT INTO positions(position_name, id_artist) VALUES('Bass');
INSERT INTO positions(position_name, id_artist) VALUES('Rythm Guitar');
INSERT INTO positions(position_name, id_artist) VALUES('Lead Guitar');
INSERT INTO positions(position_name, id_artist) VALUES('Drummer');

-- 3) Inserting artists

INSERT INTO artists(first_name, last_name, age, gender, id_band) VALUES('Christopher', 'Cross', 71, 'M', 1);

INSERT INTO artists(first_name, last_name, age, gender, id_band) VALUES('Paul', 'Stanley', 71, 'M', 2);
INSERT INTO artists(first_name, last_name, age, gender, id_band) VALUES('Gene', 'Simmons', 73, 'M', 2);
INSERT INTO artists(first_name, last_name, age, gender, id_band) VALUES('Ace', 'Frehley', 71, 'M', 2);
INSERT INTO artists(first_name, last_name, age, gender, id_band) VALUES('Peter', 'Criss', 77, 'M', 2);
INSERT INTO artists(first_name, last_name, age, gender, id_band) VALUES('Eric', 'Carr', 41, 'M', 2);
INSERT INTO artists(first_name, last_name, age, gender, id_band) VALUES('Vinnie', 'Vincent', 70, 'M', 2);
INSERT INTO artists(first_name, last_name, age, gender, id_band) VALUES('Mark', 'St. John', 51, 'M', 2);
INSERT INTO artists(first_name, last_name, age, gender, id_band) VALUES('Bruce', 'Kulick', 69, 'M', 2);
INSERT INTO artists(first_name, last_name, age, gender, id_band) VALUES('Eric', 'Singer', 64, 'M', 2);
INSERT INTO artists(first_name, last_name, age, gender, id_band) VALUES('Tommy', 'Thayer', 62, 'M', 2);

INSERT INTO artists(first_name, last_name, age, gender, id_band) VALUES('Dave', 'Bickler', 70, 'M', 3);
INSERT INTO artists(first_name, last_name, age, gender, id_band) VALUES('Jim', 'Peterik', 72, 'M', 3);
INSERT INTO artists(first_name, last_name, age, gender, id_band) VALUES('Frankie', 'Sullivan', 68, 'M', 3);
INSERT INTO artists(first_name, last_name, age, gender, id_band) VALUES('Jimmy', 'Jamison', 63, 'M', 3);
INSERT INTO artists(first_name, last_name, age, gender, id_band) VALUES('Gary', 'Smith', 73, 'M', 3);
INSERT INTO artists(first_name, last_name, age, gender, id_band) VALUES('Dennis', 'Johnson', 63, 'M', 3);

INSERT INTO artists(first_name, last_name, age, gender, id_band) VALUES('Steve', 'Perry', 74, 'M', 4);
INSERT INTO artists(first_name, last_name, age, gender, id_band) VALUES('Neal', 'Schon', 69, 'M', 4);
INSERT INTO artists(first_name, last_name, age, gender, id_band) VALUES('Jonathan', 'Cain', 73, 'M', 4);
INSERT INTO artists(first_name, last_name, age, gender, id_band) VALUES('Gregg', 'Rolie', 75, 'M', 4);
INSERT INTO artists(first_name, last_name, age, gender, id_band) VALUES('Deen', 'Castronovo', 58, 'M', 4);

INSERT INTO artists(first_name, last_name, age, gender, id_band) VALUES('Freddy', 'Mercury', 45, 'M', 5);
INSERT INTO artists(first_name, last_name, age, gender, id_band) VALUES('Brian', 'May', 75, 'M', 5);
INSERT INTO artists(first_name, last_name, age, gender, id_band) VALUES('John', 'Deacon', 71, 'M', 5);
INSERT INTO artists(first_name, last_name, age, gender, id_band) VALUES('Roger', 'Taylor', 73, 'M', 5);

INSERT INTO artists(first_name, last_name, age, gender, id_band) VALUES('David', 'Paich', 68, 'M', 6);
INSERT INTO artists(first_name, last_name, age, gender, id_band) VALUES('Steve', 'Lukather', 65, 'M', 6);
INSERT INTO artists(first_name, last_name, age, gender, id_band) VALUES('Bobby', 'Kimball', 76, 'M', 6);
INSERT INTO artists(first_name, last_name, age, gender, id_band) VALUES('Jeff', 'Porcaro', 38, 'M', 6);
INSERT INTO artists(first_name, last_name, age, gender, id_band) VALUES('Steve', 'Porcaro', 65, 'M', 6);
INSERT INTO artists(first_name, last_name, age, gender, id_band) VALUES('Mike', 'Porcaro', 60, 'M', 6);
INSERT INTO artists(first_name, last_name, age, gender, id_band) VALUES('Joseph', 'Williams', 62, 'M', 6);

INSERT INTO artists(first_name, last_name, age, gender, id_band) VALUES('Roland', 'Orzabal', 61, 'M', 7);
INSERT INTO artists(first_name, last_name, age, gender, id_band) VALUES('Curt', 'Smith', 61, 'M', 7);
INSERT INTO artists(first_name, last_name, age, gender, id_band) VALUES('Ian', 'Stanley', 66, 'M', 7);
INSERT INTO artists(first_name, last_name, age, gender, id_band) VALUES('Manny', 'Elias', 70, 'M', 7);

INSERT INTO artists(first_name, last_name, age, gender, id_band) VALUES('Brandon', 'Flowers', 41, 'M', 8);
INSERT INTO artists(first_name, last_name, age, gender, id_band) VALUES('Dave', 'Keuning', 47, 'M', 8);
INSERT INTO artists(first_name, last_name, age, gender, id_band) VALUES('Ronnie', 'Vanucci Jr.', 47, 'M', 8);
INSERT INTO artists(first_name, last_name, age, gender, id_band) VALUES('Mark', 'Stoermer', 45, 'M', 8);

INSERT INTO artists(first_name, last_name, age, gender, id_band) VALUES('Robert', 'Plant', 74, 'M', 9);
INSERT INTO artists(first_name, last_name, age, gender, id_band) VALUES('Jimmy', 'Page', 79, 'M', 9);
INSERT INTO artists(first_name, last_name, age, gender, id_band) VALUES('John', 'Bonham', 32, 'M', 9);
INSERT INTO artists(first_name, last_name, age, gender, id_band) VALUES('John', 'Paul Jones', 77, 'M', 9);

INSERT INTO artists(first_name, last_name, age, gender, id_band) VALUES('Ozzy', 'Orbourne', 74, 'M', 10);
INSERT INTO artists(first_name, last_name, age, gender, id_band) VALUES('Tony', 'Iommy', 75, 'M', 10);
INSERT INTO artists(first_name, last_name, age, gender, id_band) VALUES('Geezer', 'Butler', 73, 'M', 10);
INSERT INTO artists(first_name, last_name, age, gender, id_band) VALUES('Bill', 'Ward', 74, 'M', 10);
INSERT INTO artists(first_name, last_name, age, gender, id_band) VALUES('Ronnie James', 'Dio', 68, 'M', 10);
