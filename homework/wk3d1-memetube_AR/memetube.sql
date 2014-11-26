/* the data type TEXT means a really really long piece of text */
CREATE TABLE videos (
id SERIAL4 PRIMARY KEY,
title VARCHAR(40),
description TEXT,
url VARCHAR(100),
genre VARCHAR(20)
);

insert into videos (title,description,url,genre) values ('Brule on Cool', 'Published on Feb 1, 2012, Dr. Steve Brule offers some tips about computers.episode #50, "Man Milk" on Adult Swim.', 'EemoOviEC74', 'comedy');