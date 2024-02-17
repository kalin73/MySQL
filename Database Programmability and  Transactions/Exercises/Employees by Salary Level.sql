CREATE FUNCTION ufn_get_salary_level(salary DECIMAL(10, 2))
    RETURNS VARCHAR(10)
    DETERMINISTIC
BEGIN
    DECLARE s_level VARCHAR(10);
    SET s_level := (CASE
                        WHEN salary < 30000 THEN 'Low'
                        WHEN salary >= 30000 AND salary <= 50000 THEN 'Average'
                        ELSE 'High'
        END);
    RETURN s_level;
END;

CREATE PROCEDURE usp_get_employees_by_salary_level(s_level VARCHAR(10))
BEGIN
    SELECT first_name, last_name
    FROM employees
    WHERE s_level = ufn_get_salary_level(salary)
    ORDER BY first_name DESC, last_name DESC;
END