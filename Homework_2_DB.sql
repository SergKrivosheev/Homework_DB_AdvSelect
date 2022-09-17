create table IF NOT EXISTS Genres (
	id SERIAL primary key,
	genre_name text not NULL
);

create table IF NOT EXISTS Artists (
	id SERIAL primary key,
	artist_name VARCHAR UNIQUE not NULL
);

create table IF NOT EXISTS ArtistsGenres (
	artist_id INTEGER references Artists(id),
	genre_id INTEGER references Genres(id)
);
  
CREATE TABLE IF NOT EXISTS Albums (
	id SERIAL PRIMARY KEY,
	album_name VARCHAR UNIQUE NOT NULL,
	album_date INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS ArtistsAlbum (
	album_id INTEGER REFERENCES Albums(id),
	artists_id INTEGER REFERENCES Artists(id)
);

CREATE TABLE IF NOT EXISTS Tracks (
	id SERIAL PRIMARY KEY,
	track_name TEXT NOT NULL,
	track_length INTEGER NOT NULL,
	album_id INTEGER REFERENCES Albums(id)
);

CREATE TABLE IF NOT EXISTS Compilation (
	id SERIAL PRIMARY KEY,
	compilation_name VARCHAR UNIQUE NOT NULL,
	compilation_date INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS TracksCompilation (
	compilation_id INTEGER REFERENCES Compilation(id),
	track_id INTEGER REFERENCES Tracks(id)
);



