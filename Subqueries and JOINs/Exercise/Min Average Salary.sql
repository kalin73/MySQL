SELECT AVG(e.salary) AS min_average_salary
FROM employees e
JOIN departments d ON e.department_id = d.department_id
GROUP BY d.department_id
ORDER BY min_average_salary
LIMIT 1;