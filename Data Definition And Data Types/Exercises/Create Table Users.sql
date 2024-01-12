CREATE TABLE users
(
    id              BIGINT PRIMARY KEY AUTO_INCREMENT,
    username        VARCHAR(30) NOT NULL,
    password        VARCHAR(26) NOT NULL,
    profile_picture BLOB,
    last_login_time DATETIME,
    is_deleted      BOOL
);
INSERT INTO users
VALUES (1,'TEST1','123',NULL,NOW(),TRUE),
       (2,'TEST2','123',NULL,NOW(),TRUE),
       (3,'TEST3','123',NULL,NOW(),TRUE),
       (4,'TEST4','123',NULL,NOW(),TRUE),
       (5,'TEST5','123',NULL,NOW(),TRUE);