CREATE PROCEDURE usp_get_towns_starting_with(tName VARCHAR(55))
BEGIN
    SELECT name AS town_name
    FROM towns
    WHERE name LIKE CONCAT(tName, '%')
    ORDER BY town_name;
END