P6VE1:
CREATE VIEW P6VE1 AS
SELECT
CONCAT(CONCAT(e.first_name, ' '), e.last_name) AS nombre_empleado,
jg.grade AS grado_salario,
((jg.highest_sal - jg.lowest_sal) / jg.lowest_sal) * 100 AS aumento
FROM
employees e
JOIN
job_grades jg ON e.salary BETWEEN jg.lowest_sal AND jg.highest_sal;

P6VE2:
CREATE VIEW P6VE2 AS
SELECT
emp1.last_name AS Employee,
TO_CHAR(emp1.employee_id) AS "Emp#",
COALESCE(emp2.last_name, '') AS Manager,
TO_CHAR(emp2.employee_id) AS "Mgr#"
FROM
employees emp1
LEFT JOIN
employees emp2 ON emp1.manager_id = emp2.employee_id;

P6VE3:
Enunciado: Se necesita tener una lista del nombre
completo de los empleados (nombre y apellido), el título
de trabajo y su salario.
CREATE VIEW P6VE3 AS
SELECT
CONCAT(CONCAT(e.first_name, ' '), e.last_name) AS NOMBRE_EMPLEADO,
j.job_title,
e.salary
FROM
employees e
JOIN
jobs j ON e.job_id = j.job_id;
