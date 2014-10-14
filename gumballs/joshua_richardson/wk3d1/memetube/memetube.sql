/* the data type TEXT means a really really long piece of text */
DROP TABLE videos;
CREATE TABLE videos (
id SERIAL4 PRIMARY KEY,
title VARCHAR(40),
description TEXT,
url VARCHAR(100),
genre VARCHAR(20)
);

insert into videos (title,description,url,genre) values ('Riddick','A crazy killer','http://www.imdb.com/title/tt1411250/','Thriller');