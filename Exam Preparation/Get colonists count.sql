CREATE FUNCTION udf_count_colonists_by_destination_planet(planet_name VARCHAR(30))
    RETURNS INT
    DETERMINISTIC
BEGIN
    DECLARE res INT;
    SET res := (SELECT COUNT(tc.colonist_id)
                FROM planets p
                         JOIN spaceports s ON p.id = s.planet_id
                         JOIN journeys j ON s.id = j.destination_spaceport_id
                         JOIN travel_cards tc ON j.id = tc.journey_id
                WHERE p.name= planet_name);
    RETURN res;
END;