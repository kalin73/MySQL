CREATE FUNCTION fn_has_journey(c_id INT)
    RETURNS BOOLEAN
    DETERMINISTIC
BEGIN
    DECLARE result BOOLEAN;
    SET result := (SELECT t.journey_id IS NULL
                   FROM colonists c
                   LEFT JOIN travel_cards t ON c.id = t.colonist_id
                   WHERE c.id = c_id);
    RETURN result;
END;

DELETE FROM colonists
WHERE fn_has_journey(id);