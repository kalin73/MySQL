CREATE FUNCTION fn_get_followers_count(u_id INT)
    RETURNS INT
    DETERMINISTIC
BEGIN
    DECLARE result INT;
    SET result := (SELECT COUNT(uf.follower_id)
                   FROM users u
                            JOIN users_followers uf ON u.id = uf.user_id
                   WHERE u.id = u_id
                   GROUP BY u.id);
    RETURN result;
END;

UPDATE users
SET profile_picture_id = IF(fn_get_followers_count(id) > 0, fn_get_followers_count(id), id)
WHERE profile_picture_id IS NULL;