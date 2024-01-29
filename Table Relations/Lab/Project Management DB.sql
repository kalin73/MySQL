CREATE TABLE clients
(
    id INT PRIMARY KEY AUTO_INCREMENT,
    client_name VARCHAR(100)
);

CREATE TABLE employees
(
    id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(30),
    last_name VARCHAR(30)
);

CREATE TABLE projects
(
    id INT PRIMARY KEY AUTO_INCREMENT
);

ALTER TABLE employees
ADD COLUMN project_id INT,
ADD CONSTRAINT fk_project_id
FOREIGN KEY (project_id) REFERENCES projects(id);

ALTER TABLE projects
ADD COLUMN client_id INT,
ADD CONSTRAINT fk_client_id
FOREIGN KEY (client_id) REFERENCES clients(id),
ADD COLUMN project_lead_id INT,
ADD CONSTRAINT fk_project_lead_id
FOREIGN KEY (project_lead_id) REFERENCES employees(id);