SELECT  e.employee_id, e.first_name, e.last_name, d.department_id, salary
FROM employees e
JOIN departments d ON d.department_id = e.department_id
WHERE e.manager_id IS NULL;