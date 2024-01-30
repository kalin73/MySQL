CREATE TABLE teachers
(
    teacher_id INT PRIMARY KEY UNIQUE,
    name       VARCHAR(50),
    manager_id INT,
    CONSTRAINT fk_manager_id
    FOREIGN KEY (manager_id) REFERENCES teachers (teacher_id)
);

SET FOREIGN_KEY_CHECKS = 0;

INSERT INTO teachers
VALUES (101, 'John', null),
       (102, 'Maya', 106),
       (103, 'Silvia', 106),
       (104, 'Ted', 105),
       (105, 'Mark', 101),
       (106, 'Greta', 101);

SET FOREIGN_KEY_CHECKS = 1;