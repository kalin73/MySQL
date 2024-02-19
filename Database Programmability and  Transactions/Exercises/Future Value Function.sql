CREATE FUNCTION ufn_calculate_future_value(sum DOUBLE(10, 4), rate DOUBLE(10, 4), years INT)
    RETURNS DECIMAL (10, 4)
    DETERMINISTIC
BEGIN
    DECLARE res DECIMAL(10, 4);
    SET res := sum * POW(rate + 1, years);
    RETURN res;
END