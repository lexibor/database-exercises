USE employees;

SELECT DISTINCT last_name FROM employees
ORDER BY last_name DESC
LIMIT 10;


SELECT * FROM salaries;

SELECT emp_no FROM salaries
ORDER BY salary DESC
LIMIT 5 offset 45;
