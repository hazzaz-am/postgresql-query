-- Active: 1747442878604@@localhost@5432@postgres

CREATE TABLE department (
    dept_id SERIAL PRIMARY KEY,
    dept_name VARCHAR(50) NOT NULL
)

CREATE TABLE employee (
    emp_id SERIAL PRIMARY KEY,
    emp_name VARCHAR(50) NOT NULL,
    dept_id INTEGER REFERENCES department (dept_id)
)

INSERT INTO department (dept_name) VALUES ('Marketing'), ('Finance')

INSERT INTO
    employee (emp_name, dept_id)
VALUES ('Hazzaz', 1),
    ('Amin', 2)

SELECT * FROM department;

SELECT * FROM employee;

SELECT * FROM employee CROSS JOIN department

SELECT * FROM employee NATURAL JOIN department