CREATE VIEW v_employees_job_titles AS
SELECT CONCAT(first_name, ' ', IF(middle_name IS NULL, '', CONCAT(middle_name, ' ')), last_name), job_title
FROM employees;