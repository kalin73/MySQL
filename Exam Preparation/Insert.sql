CREATE FUNCTION fn_extract_card_number(id INT)
    RETURNS CHAR(10)
    DETERMINISTIC
BEGIN
    DECLARE result CHAR(10);
    SET result := (SELECT IF(birth_date > '1980-01-01',
                             CONCAT(YEAR(birth_date), DAY(birth_date), SUBSTR(ucn, 1, 4)),
                             CONCAT(YEAR(birth_date), MONTH(birth_date), SUBSTR(ucn, 7, 4)))
                   FROM colonists c
                   WHERE c.id = id);
    RETURN result;
END;

CREATE FUNCTION fn_get_job(id INT)
    RETURNS CHAR(10)
    DETERMINISTIC
BEGIN
    DECLARE result CHAR(10);
    SET result := (SELECT CASE
                              WHEN MOD(id, 2) = 0 THEN 'Pilot'
                              WHEN MOD(id, 3) = 0 THEN 'Cook'
                              ELSE 'Engineer'
                              END
                   FROM colonists c
                   WHERE c.id = id);
    RETURN result;
END;

INSERT INTO travel_cards(card_number, job_during_journey, colonist_id, journey_id)
VALUES (fn_extract_card_number(96), fn_get_job(96), 96, 1),
       (fn_extract_card_number(97), fn_get_job(97), 97, 2),
       (fn_extract_card_number(98), fn_get_job(98), 98, 9),
       (fn_extract_card_number(99), fn_get_job(99), 99, 5),
       (fn_extract_card_number(100), fn_get_job(100), 100, 1);