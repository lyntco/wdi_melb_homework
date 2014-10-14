/* comments in */

CREATE TABLE students
(
  id SERIAL4 PRIMARY KEY,
  first VARCHAR(30) NOT NULL,
  last VARCHAR(30) NOT NULL,
  dob DATE,
  gpa FLOAT8
);

INSERT INTO students (first,last,dob,gpa) VALUES ('bill','jones','1/1/1990',3.3);
INSERT INTO students (first,last,dob,gpa) VALUES ('janet','jones','2/1/1980',3.7);
INSERT INTO students (first,last,dob,gpa) VALUES ('jill','smith','2/1/1980',3.5);
INSERT INTO students (first,last,dob,gpa) VALUES ('tim','smith','2/1/1980',3.4);
INSERT INTO students (first,last,dob,gpa) VALUES ('jim','jones','3/1/1990',3.5);