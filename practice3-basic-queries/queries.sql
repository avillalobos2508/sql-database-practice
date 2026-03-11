P3E1:
CREATE VIEW P3E1 AS
SELECT
employee_id, first_name,
UPPER (SUBSTR(first_name, 1, 1)) || last_name || employee_id || '@' ||
LOWER(REPLACE(job_id, '_', '')) || '.org' AS email
FROM employees
WHERE employee_id IN (SELECT DISTINCT manager_id FROM employees WHERE
manager_id IS NOT NULL);

P3E2:
CREATE VIEW P3E2 AS
SELECT first_name, hire_date,
EXTRACT(YEAR FROM SYSDATE)-EXTRACT(YEAR FROM hire_date)
AS antigüedad
FROM employees;

P3E3:
Enunciado: Se necesita obtener una lista en la que se
pueda observar la fecha de contratación de los empleados
(por mes), para tener un control de la cantidad de
empleados contratados por mes.
SELECT employee_id, TRUNC(hire_date, 'MONTH') AS trunc_hire_date
FROM employees;
