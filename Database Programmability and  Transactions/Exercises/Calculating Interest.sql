CREATE FUNCTION ufn_calculate_future_value(sum DECIMAL(10, 4), rate DECIMAL(10, 4), years INT)
    RETURNS DECIMAL (10, 4)
    DETERMINISTIC
BEGIN
    DECLARE res DECIMAL(10, 4);
    SET res := sum * POW(rate + 1, years);
    RETURN res;
END;

CREATE PROCEDURE usp_calculate_future_value_for_account(account_id INT, rate DECIMAL(12, 4))
BEGIN
   SELECT a.id AS account_id, ah.first_name, ah.last_name,
          a.balance AS current_balance,
          ufn_calculate_future_value(a.balance, rate, 5) AS balance_in_5_years
   FROM accounts a
   JOIN account_holders ah ON a.account_holder_id = ah.id
   WHERE a.id = account_id;
END;