CREATE PROCEDURE udp_commit(username VARCHAR(50), password VARCHAR(30), msg VARCHAR(255), iss_id INT)
BEGIN
    IF (SELECT COUNT(u.username) FROM users u WHERE u.username = username) = 0
    THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'No such user!';
    END IF;

    IF (SELECT COUNT(u.username) FROM users u WHERE u.username = username AND u.password = password) = 0
    THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Password is incorrect!';
    END IF;

    IF (SELECT COUNT(i.id) FROM issues i WHERE i.id = iss_id) = 0
    THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'The issue does not exist!';
    END IF;

    INSERT INTO commits (message, issue_id, repository_id, contributor_id)
    VALUES (msg, iss_id,
            (SELECT i.repository_id FROM issues i WHERE id = iss_id),
            (SELECT u.id FROM users u WHERE u.username = username AND u.password = password));
END