DROP TABLE memes;

CREATE TABLE memes (
  id SERIAL4 PRIMARY KEY,
  title VARCHAR(40),
  description VARCHAR(200),
  video_url VARCHAR(100),
  genre VARCHAR(20)
);

insert into memes (title,description,video_url,genre)
values ('Ultimate Dog Tease','Dogs... Love.... Food.','http://www.youtube.com/watch?v=nGeKSiCQkPw','animals');