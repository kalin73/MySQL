CREATE PROCEDURE udp_findbyextension (extension VARCHAR(20))
BEGIN
    SELECT id, name, CONCAT(size, 'KB')
    FROM files
    WHERE SUBSTR(name, LOCATE('.', name) + 1, LENGTH(name) - LOCATE('.', name)) = extension;
END