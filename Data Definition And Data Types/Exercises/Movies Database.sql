CREATE TABLE directors
(
    id            INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    director_name VARCHAR(50)                    NOT NULL,
    notes         TEXT
);

INSERT INTO directors
VALUES (1, 'test', null),
       (2, 'test', null),
       (3, 'test', null),
       (4, 'test', null),
       (5, 'test', null);

CREATE TABLE genres
(
    id         INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    genre_name VARCHAR(50)                    NOT NULL,
    notes      TEXT
);

INSERT INTO genres
VALUES (1, 'test', null),
       (2, 'test', null),
       (3, 'test', null),
       (4, 'test', null),
       (5, 'test', null);

CREATE TABLE categories
(
    id            INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    category_name VARCHAR(50)                    NOT NULL,
    notes         TEXT
);

INSERT INTO categories
VALUES (1, 'test', null),
       (2, 'test', null),
       (3, 'test', null),
       (4, 'test', null),
       (5, 'test', null);

CREATE TABLE movies
(
    id             INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    title          VARCHAR(50)                    NOT NULL,
    director_id    INT,
    copyright_year YEAR,
    length         TIME,
    genre_id       INT,
    category_id    INT,
    rating         DECIMAL(2, 1),
    notes          TEXT
);

INSERT INTO movies
VALUES (1, 'test', 1, '2024', '00:05:00', 1, 1, 1.2, NULL),
       (2, 'test', 2, '2024', '00:05:00', 2, 2, 1.2, NULL),
       (3, 'test', 3, '2024', '00:05:00', 3, 3, 1.2, NULL),
       (4, 'test', 4, '2024', '00:05:00', 4, 4, 1.2, NULL),
       (5, 'test', 5, '2024', '00:05:00', 5, 5, 1.2, NULL);