DROP TABLE videos;
CREATE TABLE videos (
id SERIAL4 PRIMARY KEY,
title VARCHAR(40),
description TEXT,
url VARCHAR(100),
genre VARCHAR(20)
);


INSERT INTO videos (title,description,url,genre) VALUES ('Heli Skiing Queenstown','Epic Heli Skiing adventure with Southern Lakes Heli Ski on the Clarke Glacier near Queenstown.','http://www.youtube.com/watch?v=5iIKHZ9n3Ms', 'action-sport');
INSERT INTO videos (title,description,url,genre)  VALUES ('Ultimate Close Calls','While a close call may not seem like a fail, this ultimate close call compilation shows how that close call can still turn into a hilarious fail! Your heart will be pounding as you see a couple of inches could have made these fails a lot worse!','http://www.youtube.com/watch?v=h-v0fG2Pvp0', 'funny-mishaps');
INSERT INTO videos (title,description,url,genre)  VALUES ('Best Fail Compilation #3','We Love Russia 2014 - Best Fail Compilation #3 - Enjoy the Video,
Please Share, Like and Comment - Thanx))','http://www.youtube.com/watch?v=I7WYrG4NRIY', 'funny-mishaps');
