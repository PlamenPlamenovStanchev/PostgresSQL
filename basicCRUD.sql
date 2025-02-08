SELECT id,
first_name || ' ' || last_name AS "Full Name",
-- concat(first_nane, last_name) AS "Full Name"
job_title AS "Job Title"
FROM employees
;

SELECT id,
first_name || ' ' || last_name AS "Full Name",
-- concat(first_nane, last_name) AS "Full Name"
job_title,
salary
FROM employees
WHERE salary > 1000
ORDER BY id
;

SELECT * FROM employees
WHERE salary >= 1000 AND department_id = 4
ORDER BY id
;

INSERT INTO employees (first_name, last_name, job_title, department_id, salary)
VALUES ('Samantha', 'Young', 'Housekeeping', 4, 900),
('Roger', 'Palmer', 'Waiter', 3, 928.33);

SELECT * FROM employees;

UPDATE employees
SET salary = salary + 100
WHERE job_title = 'Manager';

SELECT * FROM employees
WHERE job_title = 'Manager';


UPDATE clients
SET last_name = 'Unknown'
WHERE last_name IS NULL;

DELETE FROM employees
WHERE department_id = 2 OR department_id = 1;

SELECT * FROM employees
ORDER BY id;

CREATE VIEW top_paid_employee AS
SELECT * FROM employees
ORDER BY salary DESC LIMIT 1;

SELECT * FROM top_paid_employee;