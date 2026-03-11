P7VE1:
Enunciado: Se necesita saber el nombre de los departamentos
junto a la cantidad de empleados de los mismos que tengan
un salario mayor a $8250 por departamento
CREATE VIEW P7VE1 AS
SELECT
d.department_name,
COUNT(e.employee_id) AS cantidad_empleados
FROM
employees e
JOIN
departments d ON e.department_id = d.department_id
WHERE
e.salary > 8250
GROUP BY
d.department_name;

P7VE2:
CREATE VIEW P7VE2 AS
SELECT
UPPER(d.department_name) AS DEPARTAMENTO,
SUM(e.salary) AS SUMA_TOTAL_SALARIOS
FROM
departments d
JOIN
employees e ON d.department_id = e.department_id
GROUP BY
d.department_name
HAVING
SUM(e.salary) > 1000;

P7VE3:
CREATE VIEW P7VE3 AS
SELECT
UPPER(CONCAT(CONCAT(ej.first_name, ' '), ej.last_name)) AS
nombre_completo_jefe,
COUNT(e.employee_id) AS empleados_subordinados
FROM
employees e
JOIN
employees ej ON e.manager_id = ej.employee_id
GROUP BY
CONCAT(CONCAT(ej.first_name, ' '), ej.last_name);
