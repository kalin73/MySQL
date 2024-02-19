CREATE PROCEDURE usp_deposit_money(account_id INT, money_amount DECIMAL(12, 4))
BEGIN
    START TRANSACTION;
    IF(money_amount < 1)
       THEN ROLLBACK;
       ELSE UPDATE accounts SET balance = balance + money_amount WHERE id = account_id;
   END IF;
END