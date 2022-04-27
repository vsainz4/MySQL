SELECT * FROM employees;
SELECT * FROM salary;

# conduct a full outer join on the employees table and the salary table within the shoop eschema

SELECT * FROM employees em
LEFT JOIN salary sal
ON em.emp_id = sal.emp_id
UNION ALL
SELECT * FROM  employees em
RIGHT JOIN salary sal
ON em.emp_id = sal.emp_id
WHERE em.emp_id IS NULL;
