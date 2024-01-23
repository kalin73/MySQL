SELECT department_id, ROUND(MIN(salary), 2) AS 'Min Salary'
FROM employees
GROUP BY department_id
HAVING ROUND(MIN(salary), 2) > 800;
