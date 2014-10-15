DROP TABLE videos;
CREATE TABLE videos (
  id SERIAL4 PRIMARY KEY,
  name VARCHAR(40),
  video_url VARCHAR(300),
  description VARCHAR(100),
  genre VARCHAR(40)
);

INSERT INTO videos (name,video_url,description,genre) VALUES ("Alan Rickman-Off with Benedict Cumberbatch", "https://www.youtube.com/watch?v=CnbN3Pya_AM", "Benedict Cumberbatch and Jimmy Fallon impersonates Alan Rickman", "comedy");