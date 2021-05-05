CREATE TABLE genre (
	genre_id SERIAL NOT NULL UNIQUE, 
	genre_name char(30),
	PRIMARY KEY (genre_id)
); 

CREATE TABLE country ( 
	country_id SERIAL NOT NULL UNIQUE, 
	country_name char(50), 
	PRIMARY KEY (country_id)
); 

CREATE TABLE groups ( 
	group_id SERIAL NOT NULL UNIQUE, 
	artist_id SERIAL NOT NULL UNIQUE, 
	group_name char(50), 
	PRIMARY KEY (group_id)
); 

CREATE TABLE artist (
	artist_id SERIAL NOT NULL UNIQUE, 
	country_id SERIAL NOT NULL UNIQUE,
	PRIMARY KEY (artist_id, country_id), 
	FOREIGN KEY (country_id) REFERENCES country(country_id) ON DELETE CASCADE, 
	FOREIGN KEY (artist_id) REFERENCES groups(group_id) ON DELETE CASCADE
); 

CREATE TABLE genre_artist (
	artist_id SERIAL NOT NULL, 
	genre_id SERIAL NOT NULL, 
	PRIMARY KEY (artist_id, genre_id), 
	FOREIGN KEY (artist_id) REFERENCES artist(artist_id) ON UPDATE CASCADE, 
	FOREIGN KEY (genre_id) REFERENCES genre(genre_id) ON UPDATE CASCADE
); 

CREATE TABLE personality (
	artist_id SERIAL NOT NULL UNIQUE, 
	last_name char(30), 
	first_name char(30), 
	birthday date, 
	country char(30), 
	short_bio char(150),
	PRIMARY KEY (artist_id), 
	CONSTRAINT fk_artist_id FOREIGN KEY (artist_id) REFERENCES artist (artist_id)
); 

CREATE TABLE group_history (
	group_id SERIAL NOT NULL UNIQUE, 
	team char(50), 
	short_bio char(70), 
	bio char(150),
	PRIMARY KEY (group_id), 
	CONSTRAINT fk_group_id FOREIGN KEY (group_id) REFERENCES groups(group_id)
); 

CREATE TABLE album (
	album_id SERIAL NOT NULL UNIQUE, 
	artist_id SERIAL NOT NULL UNIQUE, 
	album_year INTEGER, 
	album_title char(50), 
	album_tracks char(150), 
	PRIMARY KEY (album_id), 
	FOREIGN KEY (artist_id) REFERENCES artist(artist_id) ON DELETE CASCADE
);

CREATE TABLE tracks (
	track_id INTEGER NOT NULL, 
	track_title char(50), 
	track_duration float, 
	PRIMARY KEY (track_id)
);  

CREATE TABLE album_tracks (
	album_id SERIAL NOT NULL UNIQUE, 
	track_id INTEGER NOT NULL, 
	track_number integer,  
	PRIMARY KEY (album_id),
	FOREIGN KEY (track_id) REFERENCES tracks(track_id) ON DELETE CASCADE, 
	FOREIGN KEY (album_id) REFERENCES album(album_id) ON DELETE CASCADE
); 