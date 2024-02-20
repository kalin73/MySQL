CREATE TABLE logs
(
    log_id     INT PRIMARY KEY AUTO_INCREMENT,
    account_id INT,
    old_sum    DECIMAL(15, 4),
    new_sum    DECIMAL(15, 4)
);

CREATE TABLE notification_emails
(
    id        INT PRIMARY KEY AUTO_INCREMENT,
    recipient INT,
    subject   VARCHAR(50),
    body      VARCHAR(255)
);

CREATE TRIGGER transaction_logs
    AFTER UPDATE
    ON accounts
    FOR EACH ROW
BEGIN
    INSERT INTO logs(account_id, old_sum, new_sum)
    VALUES (NEW.id, OLD.balance, NEW.balance);
END;

CREATE TRIGGER send_email_on_transaction
    AFTER INSERT
    ON logs
    FOR EACH ROW
BEGIN
    INSERT INTO notification_emails(recipient, subject, body)
    VALUES (NEW.account_id, CONCAT('Balance change for account: ', NEW.account_id),
            CONCAT('On ', CURRENT_TIMESTAMP, ' your balance was changed from ', NEW.old_sum, ' to ',
            NEW.new_sum, '.'));
END