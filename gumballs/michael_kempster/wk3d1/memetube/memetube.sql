-- This will remove and recreate the videos table

DROP TABLE videos;

CREATE TABLE videos (
	id SERIAL4 PRIMARY KEY,
	title VARCHAR(100),
	description TEXT,
	url VARCHAR(200),
	genre VARCHAR(20)
);

insert into videos (title, description, url, genre) values ('Roadkill Ep33', 'Freiburger and Finnegan', 'http://www.youtube.com/watch?v=RxYrdQjQuNE', 'cars')