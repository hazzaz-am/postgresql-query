CREATE TABLE student (
    student_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    age INT,
    grade CHAR(2),
    course VARCHAR(50),
    email VARCHAR(100),
    dob DATE,
    blood_group VARCHAR(5),
    country VARCHAR(50)
)

INSERT INTO
    student (
        first_name,
        last_name,
        age,
        grade,
        course,
        email,
        dob,
        blood_group,
        country
    )
VALUES (
        'Alice',
        'Johnson',
        20,
        'A+',
        'Computer Science',
        'alice.johnson@example.com',
        '2005-03-15',
        'O+',
        'USA'
    ),
    (
        'Bob',
        'Smith',
        22,
        'B',
        'Physics',
        'bob.smith@example.com',
        '2003-07-09',
        'A-',
        'Canada'
    ),
    (
        'Clara',
        'Williams',
        19,
        'A',
        'Mathematics',
        'clara.williams@example.com',
        '2006-01-22',
        'B+',
        'UK'
    ),
    (
        'David',
        'Brown',
        21,
        'B+',
        'Chemistry',
        'david.brown@example.com',
        '2004-10-10',
        'AB-',
        'Australia'
    ),
    (
        'Emma',
        'Davis',
        23,
        'A-',
        'Biology',
        'emma.davis@example.com',
        '2002-12-18',
        'O-',
        'USA'
    ),
    (
        'Frank',
        'Garcia',
        18,
        'C+',
        'History',
        'frank.garcia@example.com',
        '2007-05-01',
        'A+',
        'Mexico'
    ),
    (
        'Grace',
        'Martinez',
        20,
        'B',
        'English',
        'grace.martinez@example.com',
        '2005-06-30',
        'B-',
        'Spain'
    ),
    (
        'Harry',
        'Miller',
        22,
        'A',
        'Political Science',
        'harry.miller@example.com',
        '2003-11-11',
        'AB+',
        'Germany'
    ),
    (
        'Ivy',
        'Wilson',
        21,
        'B+',
        'Economics',
        'ivy.wilson@example.com',
        '2004-09-19',
        'O+',
        'India'
    ),
    (
        'Jack',
        'Moore',
        19,
        'C',
        'Computer Science',
        'jack.moore@example.com',
        '2006-04-05',
        'B+',
        'USA'
    ),
    (
        'Kira',
        'Taylor',
        20,
        'A+',
        'Data Science',
        'kira.taylor@example.com',
        '2005-02-14',
        'A-',
        'Canada'
    ),
    (
        'Liam',
        'Anderson',
        21,
        'B-',
        'Engineering',
        'liam.anderson@example.com',
        '2004-08-08',
        'O-',
        'UK'
    ),
    (
        'Mia',
        'Thomas',
        18,
        'C+',
        'Psychology',
        'mia.thomas@example.com',
        '2007-03-20',
        'AB+',
        'Australia'
    ),
    (
        'Noah',
        'Jackson',
        23,
        'A',
        'Law',
        'noah.jackson@example.com',
        '2002-06-02',
        'B-',
        'USA'
    ),
    (
        'Olivia',
        'White',
        22,
        'B+',
        'Nursing',
        'olivia.white@example.com',
        '2003-12-25',
        'O+',
        'Canada'
    ),
    (
        'Paul',
        'Harris',
        20,
        'B',
        'Philosophy',
        'paul.harris@example.com',
        '2005-01-01',
        'A+',
        'UK'
    ),
    (
        'Quinn',
        'Martin',
        21,
        'A-',
        'Business',
        'quinn.martin@example.com',
        '2004-10-30',
        'B+',
        'India'
    ),
    (
        'Rosa',
        'Thompson',
        19,
        'C',
        'Fine Arts',
        'rosa.thompson@example.com',
        '2006-05-16',
        'AB-',
        'Brazil'
    ),
    (
        'Sam',
        'Lee',
        20,
        'A+',
        'Computer Science',
        'sam.lee@example.com',
        '2005-07-21',
        'O-',
        'South Korea'
    ),
    (
        'Tina',
        'Walker',
        18,
        'B+',
        'Fashion Design',
        'tina.walker@example.com',
        '2007-11-03',
        'B-',
        'Italy'
    );

SELECT * FROM student;

SELECT first_name, last_name, age FROM student;

SELECT student_id AS id FROM student ORDER BY student_id DESC;

SELECT grade FROM student ORDER BY grade ASC;

SELECT dob FROM student ORDER BY dob ASC;

SELECT DISTINCT country FROM student ORDER BY country ASC;

SELECT *
FROM student
WHERE
    country <> 'USA'
    AND country <> 'UK'
    AND country <> 'India'
ORDER BY country ASC;

SELECT *
FROM student
WHERE
    grade <> 'C'
    AND grade <> 'C+'
    AND grade <> 'C-'
    AND country <> 'USA'
    AND country <> 'India'
    AND age >= 20
    AND age <= 30
    AND (
        blood_group = 'A'
        OR blood_group = 'A'
        OR blood_group = 'A-'
    )
ORDER BY grade ASC;

SELECT * FROM student;

SELECT UPPER(first_name) AS first_name FROM student;

SELECT CONCAT(
        first_name, ' ', last_name, ' ', age
    ) AS joined_field
FROM student;

SELECT COUNT(*) FROM student;

SELECT MAX(age) FROM student;

SELECT MIN(age) FROM student;

SELECT LENGTH(email) FROM student;

SELECT AVG(age) FROM student;

SELECT SUM(age) FROM student;

SELECT age FROM student ORDER BY age DESC;

SELECT * FROM student;

SELECT MAX(LENGTH(first_name)) FROM student;

SELECT * FROM student WHERE country IN ('USA', 'UK');

SELECT *
FROM student
WHERE
    country NOT IN ('USA')
    AND (
        blood_group = 'A-'
        OR blood_group = 'A+'
    )
ORDER BY country ASC;

SELECT *
FROM student
WHERE
    dob BETWEEN '2000-01-01' AND '2005-01-01'
ORDER BY CONCAT(first_name, ' ', last_name);

SELECT * FROM student WHERE age BETWEEN 20 AND 22 ORDER BY age;

SELECT * FROM student WHERE first_name LIKE '%a';

SELECT * FROM student WHERE first_name ILIKE 'a%';

SELECT * FROM student WHERE first_name LIKE '_a';

SELECT * FROM student WHERE first_name LIKE '_a%';

SELECT * FROM student ORDER BY grade;

SELECT * FROM student LIMIT 10;

SELECT * FROM student LIMIT 10 OFFSET 10 * 0;

SELECT * FROM student ORDER BY grade LIMIT 10 OFFSET 11;

DELETE FROM student WHERE grade IN ('A', 'A-');