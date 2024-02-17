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
END