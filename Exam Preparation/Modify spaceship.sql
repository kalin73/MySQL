CREATE PROCEDURE udp_modify_spaceship_light_speed_rate(spaceship_name VARCHAR(50),
                                                       light_speed_rate_increse INT(11))
BEGIN
    START TRANSACTION;
    IF
            (SELECT COUNT(id) FROM spaceships WHERE name = spaceship_name) = 0
    THEN
        ROLLBACK;
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Spaceship you are trying to modify does not exists.';

    END IF;

    UPDATE spaceships
    SET light_speed_rate = light_speed_rate + light_speed_rate_increse
    WHERE name = spaceship_name;

END;