CREATE TABLE logs
(
    log_id     INT PRIMARY KEY AUTO_INCREMENT,
    account_id INT,
    old_sum    DECIMAL(15, 4),
    new_sum    DECIMAL(15, 4)
);

CREATE TRIGGER transaction_logs
    AFTER UPDATE
    ON accounts
    FOR EACH ROW
BEGIN
    INSERT INTO logs(account_id, old_sum, new_sum)
    VALUES (NEW.id, OLD.balance, NEW.balance);
END