-- Working with one table

-- Ordering the artists according to the age by using the ORDER BY statement.
SELECT a.first_name, a.last_name, a.age
FROM artists a
ORDER BY a.age ASC;

-- Obtaining the number of artists by using the COUNT() statement.
SELECT COUNT(id_artist) as total_artists
FROM artists

-- Working with two tables

-- Obtaining the artists and the band in which they are and ordering the result according to the artist's age by using the ORDER BY statement.
SELECT a.first_name, a.last_name, a.age, b.band_name
FROM artists a INNER JOIN bands b ON a.id_band = b.id_band
ORDER BY a.age ASC;

-- Obtaining the number of artists for each existing band by using the GROUP BY statement.
SELECT b.band_name, COUNT(a.id_artist) as total_artists
FROM artists a INNER JOIN bands b ON a.id_band = b.id_band
GROUP BY b.band_name

-- Ordering the number of artists for each existing band by using the ORDER BY statement as a complement to GROUP BY.
SELECT b.band_name, COUNT(a.id_artist) as total_artists
FROM artists a INNER JOIN bands b ON a.id_band = b.id_band
GROUP BY b.band_name
ORDER BY total_artists

-- Obtaining the number of artists by using the SUM statement.
SELECT SUM(amount) total
FROM (SELECT sb.band_name, COUNT(sa.id_artist) amount
    FROM artists sa INNER JOIN bands sb ON sa.id_band = sb.id_band
    GROUP BY sb.band_name) AS subtable

-- Working with three tables

-- Obtaining the names of the artists as well as the position and the band in which they are by using the INNER JOIN statement.
SELECT a.first_name, a.last_name, p.position_name, b.band_name
FROM artists a INNER JOIN lineup l ON a.id_artist = l.id_artist
INNER JOIN positions p ON l.id_position = p.id_position
INNER JOIN bands b ON a.id_band = b.id_band

-- Obtaining the band with the lowest number of artists by using the MIN statement
SELECT b.band_name, COUNT(a.id_artist) total
FROM artists a INNER JOIN bands b ON a.id_band = b.id_band
GROUP BY b.band_name
HAVING COUNT(a.id_artist) = (SELECT MIN(amount) minimum
							 FROM (SELECT sb.band_name, COUNT(sa.id_artist) amount
								   FROM artists sa INNER JOIN bands sb ON sa.id_band = sb.id_band
								   GROUP BY sb.band_name) AS subtable)

-- Obtaining the band with the highest number of artists by using the MAX statement
SELECT b.band_name, COUNT(a.id_artist) total
FROM artists a INNER JOIN bands b ON a.id_band = b.id_band
GROUP BY b.band_name
HAVING COUNT(a.id_artist) = (SELECT MAX(amount) maximun
							 FROM (SELECT sb.band_name, COUNT(sa.id_artist) amount
								   FROM artists sa INNER JOIN bands sb ON sa.id_band = sb.id_band
								   GROUP BY sb.band_name) AS subtable)

-- Obtaining the bands with the average number of artists by using the AVG statement
SELECT b.band_name, COUNT(a.id_artist) total
FROM artists a INNER JOIN bands b ON a.id_band = b.id_band
GROUP BY b.band_name
HAVING COUNT(a.id_artist) = (SELECT AVG(amount) average
							 FROM (SELECT sb.band_name, COUNT(sa.id_artist) amount
								   FROM artists sa INNER JOIN bands sb ON sa.id_band = sb.id_band
								   GROUP BY sb.band_name) AS subtable)

