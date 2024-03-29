CREATE FUNCTION ufn_is_word_comprised(set_of_letters VARCHAR(50), word VARCHAR(50))
    RETURNS BIT
    DETERMINISTIC
BEGIN
    DECLARE count_let INT DEFAULT 1;
    DECLARE length INT;
    DECLARE current_char VARCHAR(5);
    SET length = CHAR_LENGTH(word);

    iter_word:
    LOOP
        SET current_char = SUBSTR(word, count_let, 1);
        IF LOCATE(current_char, set_of_letters) = 0 THEN
            RETURN FALSE;
        ELSEIF count_let = length THEN
            RETURN TRUE;
        END IF;
        SET count_let = count_let + 1;
    END LOOP iter_word;
END