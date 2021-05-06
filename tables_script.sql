CREATE TABLE artist (
	artist_id SERIAL NOT NULL UNIQUE, 
	artist_name char(50), 
	bio char(1000),
	PRIMARY KEY (artist_id)
);


CREATE TABLE genre (
	genre_id SERIAL NOT NULL UNIQUE, 
	genre_name char(30), 
	PRIMARY KEY (genre_id)
);


CREATE TABLE country (
	country_id SERIAL NOT NULL UNIQUE, 
	country_name char(30), 
	PRIMARY KEY (country_id)
);


CREATE TABLE genre_artist (
	artist_id int NOT NULL, 
	genre_id int NOT NULL, 
	PRIMARY KEY (artist_id, genre_id), 
	FOREIGN KEY (artist_id) REFERENCES artist(artist_id) ON UPDATE CASCADE, 
	FOREIGN KEY (genre_id) REFERENCES genre(genre_id) ON UPDATE CASCADE	
);


CREATE TABLE country_artist (
	artist_id int NOT NULL, 
	country_id int NOT NULL, 
	PRIMARY KEY (artist_id, country_id), 
	FOREIGN KEY (artist_id) REFERENCES artist(artist_id) ON UPDATE CASCADE, 
	FOREIGN KEY (country_id) REFERENCES country(country_id) ON UPDATE CASCADE
);


CREATE TABLE musician (
	musician_id SERIAL NOT NULL UNIQUE, 
	artist_id int NOT NULL, 
	last_name char(30), 
	first_name char(30), 
	PRIMARY KEY (musician_id), 
	FOREIGN KEY (artist_id) REFERENCES artist(artist_id) ON DELETE CASCADE
); 


CREATE TABLE album (
	album_id SERIAL NOT NULL UNIQUE, 
	artist_id int NOT NULL, 
	album_year int, 
	album_title char(120), 
	PRIMARY KEY (album_id), 
	FOREIGN KEY (artist_id) REFERENCES artist(artist_id) ON DELETE CASCADE
);


CREATE TABLE track (
	track_id SERIAL NOT NULL UNIQUE, 
	track_title char (120), 
	PRIMARY KEY(track_id)
); 


CREATE TABLE album_track (
	album_id int NOT NULL, 
	track_id int NOT NULL, 
	PRIMARY KEY (album_id, track_id), 
	FOREIGN KEY (track_id) REFERENCES track(track_id) ON UPDATE CASCADE, 
	FOREIGN KEY (album_id) REFERENCES album(album_id) ON UPDATE CASCADE
);