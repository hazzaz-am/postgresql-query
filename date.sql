-- Active: 1747442878604@@localhost@5432@postgres

SHOW TIMEZONE;

SELECT now();

CREATE TABLE timez (
    ts TIMESTAMP WITHOUT TIME ZONE,
    tsz TIMESTAMP WITH TIME ZONE
);

INSERT INTO
    timez
VALUES (
        '2025-05-21 10:17:00',
        '2025-05-21 10:17:00'
    )

SELECT * FROM timez;

ALTER TABLE timez ADD cts VARCHAR(50)

INSERT INTO
    timez
VALUES (
        '2025-05-21 10:17:00',
        '2025-05-21 10:17:00',
        '2025-05-21 10:17:00'
    )

ALTER TABLE timez DROP COLUMN cts;

SELECT CURRENT_DATE

SELECT now()::date;

SELECT now()::time;

SELECT TO_CHAR(now(), 'yyyy-d-mm')

SELECT CURRENT_DATE - INTERVAL '1 Year';

SELECT age(CURRENT_DATE, '2001-08-21');

SELECT * FROM student;

SELECT *, age(CURRENT_DATE, dob) FROM student;

SELECT EXTRACT(MONTH FROM '2025-08-21'::date)