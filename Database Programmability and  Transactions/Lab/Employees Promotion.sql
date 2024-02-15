CREATE PROCEDURE usp_raise_salaries(IN department_name VARCHAR(50))
BEGIN
    UPDATE employees e
        JOIN departments d ON e.department_id = d.department_id
    SET e.salary = e.salary * 1.05
    WHERE d.name = department_name;

END