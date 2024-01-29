CREATE VIEW emp_view AS
SELECT *
FROM employees
WHERE salary > 30000;

DELETE
FROM emp_view
WHERE manager_id = 42;

UPDATE emp_view
SET salary = salary + 5000
WHERE department_id = 1;

SELECT department_id, AVG(salary)
FROM emp_view
GROUP BY department_id
ORDER BY department_id;
