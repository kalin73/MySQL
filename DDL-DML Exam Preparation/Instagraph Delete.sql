CREATE FUNCTION fn_users_without_followers()
    RETURNS INT
    DETERMINISTIC
BEGIN
    DECLARE result INT;
    SET result := (SELECT u.id
                   FROM users u
                            LEFT JOIN users_followers uf ON u.id = uf.user_id
                   WHERE uf.user_id IS NULL
                     AND uf.follower_id IS NULL);
    RETURN result;
END;

DELETE
FROM users
WHERE id = fn_users_without_followers();