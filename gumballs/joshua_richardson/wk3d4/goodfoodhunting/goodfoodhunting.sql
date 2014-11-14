DROP TABLE dishes;
CREATE TABLE dishes (
  id SERIAL4 PRIMARY KEY,
  name VARCHAR(40),
  image_URL VARCHAR(100),
  meal_type VARCHAR(20)
);

insert into dishes (name,image_url,meal_type) values ('healthy food','http://savannahyogabarre.com/wp-content/uploads/2014/06/skin-healthy-food.jpg','healthy');
