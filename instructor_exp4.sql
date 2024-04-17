-- 4.1

SELECT dept_name FROM instructor GROUP BY dept_name
HAVING SUM(salary) > (SELECT AVG(total_salary) FROM (SELECT dept_name, SUM(salary) AS total_salary FROM instructor GROUP BY dept_name) AS department_salaries);

-- 4.2

SELECT instructor.name AS instructor_name, teaches.Course_id FROM instructor LEFT JOIN teaches ON instructor.ID = teaches.ID;

-- 4.3

SELECT instructor.name AS instructor_name, teaches.Course_id FROM instructor LEFT JOIN teaches ON instructor.ID = teaches.ID;

-- 4.4

CREATE VIEW faculty AS SELECT ID, name, dept_name FROM instructor;
SELECT * FROM faculty;

-- 4.5

CREATE USER new_user@localhost IDENTIFIED BY "1234";
GRANT SELECT ON faculty TO new_user@localhost;

