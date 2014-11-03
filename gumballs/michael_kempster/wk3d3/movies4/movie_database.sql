DROP TABLE moviedetails;

CREATE TABLE moviedetails
(
	id SERIAL4 PRIMARY KEY,
	Title VARCHAR,
	Year VARCHAR,
	Rated VARCHAR,
	Released VARCHAR,
	Runtime VARCHAR,
	Genre VARCHAR,
	Director VARCHAR,
	Writer VARCHAR,
	Actors VARCHAR,
	Plot VARCHAR,
	Language VARCHAR,
	Country VARCHAR,
	Awards VARCHAR,
	Poster VARCHAR,
	Metascore VARCHAR,
	imdbRating VARCHAR,
	imdbVotes VARCHAR,
	imdbID VARCHAR,
	Typee VARCHAR,
	Response VARCHAR
);

INSERT INTO moviedetails (Title, Year, Rated, Released, Runtime, Genre, Director, Writer, Actors, Plot, Language, Country, Awards, Poster, Metascore, imdbRating, imdbVotes, imdbID, Typee, Response) VALUES ('t','t','t','t','t','t','t','t','t','t','t','t','t','t','t','t','t','t','t','t');