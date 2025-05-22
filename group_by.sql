-- Active: 1747442878604@@localhost@5432@postgres

CREATE TABLE student (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    age INT,
    grade VARCHAR(5),
    course VARCHAR(20),
    email VARCHAR(50),
    dob DATE,
    blood_group VARCHAR(5),
    country VARCHAR(20)
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
        'John',
        'Doe',
        20,
        'A',
        'Math',
        'john.doe@example.com',
        '2004-03-15',
        'O+',
        'USA'
    ),
    (
        'Jane',
        'Smith',
        22,
        'B',
        'Physics',
        'jane.smith@example.com',
        '2002-07-21',
        'A-',
        'Canada'
    ),
    (
        'Alice',
        'Johnson',
        19,
        'A',
        'Chemistry',
        'alice.johnson@example.com',
        '2005-01-30',
        'B+',
        'UK'
    ),
    (
        'Bob',
        'Brown',
        21,
        'C',
        'Biology',
        'bob.brown@example.com',
        '2003-05-12',
        'O-',
        'Australia'
    ),
    (
        'Charlie',
        'Davis',
        23,
        'B',
        'Math',
        'charlie.davis@example.com',
        '2001-09-25',
        'AB+',
        'USA'
    ),
    (
        'Emily',
        'Miller',
        18,
        'A',
        'English',
        'emily.miller@example.com',
        '2006-11-10',
        'A+',
        'New Zealand'
    ),
    (
        'Frank',
        'Wilson',
        20,
        'C',
        'History',
        'frank.wilson@example.com',
        '2004-06-17',
        'B-',
        'Canada'
    ),
    (
        'Grace',
        'Moore',
        22,
        'B',
        'Computer',
        'grace.moore@example.com',
        '2002-08-29',
        'O+',
        'India'
    ),
    (
        'Henry',
        'Taylor',
        21,
        'A',
        'Physics',
        'henry.taylor@example.com',
        '2003-02-05',
        'AB-',
        'UK'
    ),
    (
        'Isla',
        'Anderson',
        19,
        'A',
        'Chemistry',
        'isla.anderson@example.com',
        '2005-04-18',
        'B+',
        'Ireland'
    ),
    (
        'Jack',
        'Thomas',
        20,
        'C',
        'Math',
        'jack.thomas@example.com',
        '2004-12-22',
        'O+',
        'USA'
    ),
    (
        'Katie',
        'Jackson',
        21,
        'B',
        'Biology',
        'katie.jackson@example.com',
        '2003-03-14',
        'A-',
        'Germany'
    ),
    (
        'Leo',
        'White',
        22,
        'A',
        'English',
        'leo.white@example.com',
        '2002-10-09',
        'O-',
        'France'
    ),
    (
        'Mia',
        'Harris',
        20,
        'A',
        'History',
        'mia.harris@example.com',
        '2004-07-03',
        'B+',
        'Canada'
    ),
    (
        'Noah',
        'Martin',
        23,
        'C',
        'Computer',
        'noah.martin@example.com',
        '2001-01-27',
        'A+',
        'USA'
    ),
    (
        'Olivia',
        'Thompson',
        18,
        'B',
        'Physics',
        'olivia.thompson@example.com',
        '2006-05-19',
        'O-',
        'Australia'
    ),
    (
        'Paul',
        'Garcia',
        19,
        'A',
        'Math',
        'paul.garcia@example.com',
        '2005-09-11',
        'AB+',
        'Mexico'
    ),
    (
        'Quinn',
        'Martinez',
        21,
        'B',
        'Chemistry',
        'quinn.martinez@example.com',
        '2003-11-06',
        'B-',
        'Spain'
    ),
    (
        'Ruby',
        'Robinson',
        20,
        'C',
        'Biology',
        'ruby.robinson@example.com',
        '2004-02-24',
        'O+',
        'South Africa'
    ),
    (
        'Sam',
        'Clark',
        22,
        'A',
        'Computer',
        'sam.clark@example.com',
        '2002-12-13',
        'A-',
        'India'
    );

SELECT * FROM student;

SELECT country FROM student GROUP BY country;

SELECT country, COUNT(*) FROM student GROUP BY country;

SELECT country, COUNT(*), ROUND(AVG(age))
FROM student
GROUP BY
    country
ORDER BY country;

SELECT country, ROUND(AVG(age))
FROM student
GROUP BY
    country
HAVING
    ROUND(AVG(age)) > 20
ORDER BY country ASC;

SELECT blood_group
FROM student
GROUP BY
    blood_group
ORDER BY blood_group;

SELECT blood_group, count(*)
FROM student
GROUP BY
    blood_group
HAVING
    count(*) > 1
ORDER BY blood_group;

SELECT TO_CHAR(dob, 'yyyy'), count(*)
FROM student
GROUP BY
    TO_CHAR(dob, 'yyyy');

SELECT EXTRACT(
        YEAR
        FROM dob
    ) AS birth_year, COUNT(*)
FROM student
GROUP BY
    birth_year;