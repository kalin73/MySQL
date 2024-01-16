CREATE TABLE categories
(
    id   INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(55)

);
CREATE TABLE addresses
(
    id           INT PRIMARY KEY AUTO_INCREMENT,
    address_text TEXT,
    town_id      INT
);
CREATE TABLE departments
(
    id   INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(55)

);
CREATE TABLE employees
(
    id   INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(55),
    middle_name VARCHAR(55),
    last_name VARCHAR(55),
    job_title VARCHAR(55),
    department_id INT,
    hire_date DATE,
    salary DECIMAL(10,2),
    address_id INT

);