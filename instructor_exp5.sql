-- 5.1 

CREATE VIEW faculty1 AS SELECT ID, name, dept_name FROM instructor;
SELECT * FROM faculty1;

-- 5.2

CREATE VIEW department_salary_totals AS SELECT dept_name, SUM(salary) AS total_salary FROM instructor GROUP BY dept_name;
SELECT * FROM department_salary_totals;

-- 5.3

CREATE ROLE 'student';

-- 5.4

GRANT SELECT ON faculty TO student;

-- 5.5

CREATE USER msrf@localhost IDENTIFIED BY '1234';
GRANT student TO msrf@localhost;

-- 5.6

GRANT ALL PRIVILEGES ON student.* TO guru@localhost;
-- SELECT * FROM faculty WHERE dept_name = 'Biology';

-- 5.7

GRANT ALL PRIVILEGES ON student.* TO msrf@localhost;

-- 5.8

DROP ROLE student;

-- 5.9

GRANT SELECT ON faculty TO msrf@localhost;

-- 5.10

SELECT name
FROM instructor
WHERE dept_name = 'Finance';
