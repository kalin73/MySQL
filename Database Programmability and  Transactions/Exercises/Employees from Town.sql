CREATE PROCEDURE usp_get_employees_from_town(tName VARCHAR(55))
BEGIN
    SELECT e.first_name, e.last_name AS town_name
    FROM employees e
    JOIN addresses a ON e.address_id = a.address_id
    JOIN towns t ON t.town_id = a.town_id
    WHERE t.name = tName
    ORDER BY e.first_name, e.last_name, e.employee_id;
END