CREATE TABLE person (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    age INT CHECK (age >= 18)
)

SELECT * FROM student;

ALTER TABLE students RENAME TO student;

ALTER TABLE student
ADD COLUMN email VARCHAR(50) DEFAULT 'student@gmail.com' NOT NULL UNIQUE;

INSERT INTO student VALUES (1, 'Hazzaz', 20);

INSERT INTO student VALUES ( 2, 'Amin', 19, 'amin@gmail.com' );

INSERT INTO student VALUES ( 3, 'Hujjat', 19, 'hazzaz@gmail.com' );

INSERT INTO
    person
VALUES (4, 'Shafin', 35),
    (5, 'Sadia', 30),
    (6, 'Halima', 36)

SELECT * FROM student;

ALTER TABLE student DROP COLUMN email;

ALTER TABLE student RENAME COLUMN user_name TO student_name;

SELECT * FROM student;

ALTER TABLE student ALTER COLUMN student_name TYPE VARCHAR(255);

ALTER TABLE student RENAME COLUMN id TO student_id;

ALTER TABLE student ALTER COLUMN student_name SET NOT NULL;

ALTER TABLE student ALTER COLUMN student_name TYPE VARCHAR(50);

ALTER TABLE student ALTER COLUMN student_name DROP NOT NULL;

SELECT * FROM person;

ALTER TABLE student RENAME TO person;

ALTER TABLE person RENAME COLUMN student_id TO id;

ALTER TABLE person RENAME COLUMN student_name TO name;

ALTER TABLE person
ADD COLUMN email VARCHAR(50) DEFAULT 'default@gmail.com' NOT NULL;

INSERT INTO person VALUES (7, 'Forhad', 80);

ALTER TABLE person DROP COLUMN email;

SELECT * FROM person;

ALTER TABLE person ALTER COLUMN name DROP NOT NULL;

INSERT INTO person VALUES (8, 90);

INSERT INTO person VALUES (10)

SELECT * FROM person;

ALTER TABLE person ALTER COLUMN name SET DEFAULT 'Name';

ALTER TABLE person ADD CONSTRAINT unique_person_age UNIQUE (age);

INSERT INTO person VALUES (8, 'Forhad', 37)

ALTER TABLE person DROP CONSTRAINT unique_person_age;

TRUNCATE TABLE person;