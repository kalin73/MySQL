CREATE PROCEDURE usp_get_employees_salary_above(numb DECIMAL(9, 4))
BEGIN
    SELECT first_name, last_name
    FROM employees
    WHERE salary >= numb
    ORDER BY first_name, last_name, employee_id;
END