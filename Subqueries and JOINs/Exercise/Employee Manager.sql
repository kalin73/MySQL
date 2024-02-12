SELECT e1.employee_id, e1.first_name, e1.manager_id, e2.first_name
FROM employees e1
JOIN employees e2 ON e1.manager_id = e2.employee_id
WHERE e1.manager_id IN (3, 7)
ORDER BY e1.first_name;