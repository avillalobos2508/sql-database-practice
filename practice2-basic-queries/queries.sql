P2VE1:
CREATE VIEW P2VE1 AS
SELECT employee_id, hire_date
FROM employees
WHERE hire_date = (SELECT MIN(hire_date) FROM employees);
P2VE2:
CREATE VIEW P2VE2 AS
SELECT first_name || ' ' || last_name AS full_name, salary
FROM employees
WHERE salary BETWEEN 4000 AND 7000
ORDER BY salary ASC;
P2VE3:
CREATE VIEW P2VE3 AS
SELECT employee_id, first_name
FROM employees
WHERE job_id IN (SELECT job_id FROM jobs WHERE job_title IN ('Sales
Manager', 'Sales Representative')
AND (salary + salary * commission_pct) > 11000);
