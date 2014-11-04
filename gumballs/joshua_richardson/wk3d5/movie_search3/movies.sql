/* the data type TEXT means a really really long piece of text */

CREATE TABLE movies (
id SERIAL4 PRIMARY KEY,
title VARCHAR(40),
plot TEXT,
poster_url VARCHAR(200),
released VARCHAR(20)
);

insert into movies (title,plot,poster_url,released) values ('Riddick','A crazy killer','http://www.nerdice.com.br/wp-content/uploads/2013/08/Riddick3-poster-nacional.jpg','20/10/2013');