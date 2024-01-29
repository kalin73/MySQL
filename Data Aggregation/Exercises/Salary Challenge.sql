SELECT e1.first_name, e1.last_name, e1.department_id
FROM employees e1,
     (SELECT department_id, AVG(salary) AS avgS FROM employees GROUP BY department_id) AS e2
WHERE e1.department_id = e2.department_id AND e1.salary > e2.avgS
ORDER BY e1.department_id, e1.employee_id
LIMIT 10;