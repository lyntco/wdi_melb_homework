DROP TABLE videos;
CREATE TABLE videos (
id SERIAL4 PRIMARY KEY,
title VARCHAR(40),
description TEXT,
url VARCHAR(100),
genre VARCHAR(20)
);

INSERT INTO videos (title,description,url,genre) VALUES ('Old Spice','A famous TV commercial','https://www.youtube.com/watch?v=owGykVbfgUE','Comedy');
