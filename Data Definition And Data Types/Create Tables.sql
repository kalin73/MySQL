CREATE table employees
(
    id         INT primary key AUTO_INCREMENT,
    first_name VARCHAR(45) NOT NULL,
    last_name  VARCHAR(45) NOT NULL
);

CREATE table categories
(
    id   INT primary key AUTO_INCREMENT,
    name VARCHAR(45) NOT NULL
);

CREATE table products
(
    id          INT primary key AUTO_INCREMENT,
    name        VARCHAR(45) NOT NULL,
    category_id INT(45)     NOT NULL
);