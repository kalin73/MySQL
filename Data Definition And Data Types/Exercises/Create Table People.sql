CREATE TABLE people
(
    id        INT PRIMARY KEY AUTO_INCREMENT,
    name      VARCHAR(200)    NOT NULL,
    picture   BLOB,
    height    DOUBLE(10, 2),
    weight    DOUBLE(10, 2),
    gender    ENUM ('m', 'f') NOT NULL,
    birthdate DATE            NOT NULL,
    biography LONGTEXT
);
INSERT INTO people
VALUES (1, 'test1', NULL, 1.8, 75.5, 'm', now(), null),
       (2, 'test2', NULL, 1.8, 75.5, 'm', now(), null),
       (3, 'test3', NULL, 1.8, 75.5, 'm', now(), null),
       (4, 'test4', NULL, 1.8, 75.5, 'm', now(), null),
       (5, 'test5', NULL, 1.8, 75.5, 'm', now(), null);