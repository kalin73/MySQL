SELECT e.employee_id, e.first_name
FROM employees e
LEFT JOIN employees_projects ep ON ep.employee_id = e.employee_id
WHERE e.salary > 15000
ORDER BY e.employee_id DESC
LIMIT 3;