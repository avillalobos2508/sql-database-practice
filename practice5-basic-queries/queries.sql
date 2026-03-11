P5VE1:
Enunciado: Se necesita saber el numero de departamento,
el trabajo y el promedio de salario de cada uno de los
trabajos.
CREATE VIEW P5VE1 AS
SELECT
department_id,
job_id,
ROUND(AVG(salary), 0) as Salario_Promedio
FROM
employees
GROUP BY
department_id, job_id
ORDER BY
department_id, job_id;

P5VE2:
CREATE VIEW P5VE2 AS
SELECT
job_id,
MAX(salary) AS Maximo,
MIN(salary) AS Minimo,
SUM(salary) AS Total,
ROUND(AVG(salary), 0) AS Promedio
FROM
employees
GROUP BY
job_id;

P5VE3:
CREATE VIEW P5VE3 AS
SELECT
manager_id,
MIN(salary) AS Salario_Minimo
FROM
employees
WHERE
manager_id IS NOT NULL
AND salary > 6000
GROUP BY
manager_id
ORDER BY
Salario_Minimo DESC;
