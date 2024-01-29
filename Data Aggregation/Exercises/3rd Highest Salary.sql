SELECT DISTINCT e.department_id, e.salary AS third_highest_salary
FROM (SELECT department_id, salary, DENSE_RANK() OVER (PARTITION BY department_id ORDER BY salary DESC ) rank_salary
      FROM employees) AS e
WHERE e.rank_salary = 3;