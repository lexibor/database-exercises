USE employees;
SHOW tables;

SELECT * FROM employees;
SELECT * FROM dept_manager;
SELECT * FROM salaries;
SELECT * FROM  departments;
SELECT * FROM dept_emp;
SELECT * FROM dept_emp_latest_date;
SELECT * FROM titles;


# SELECT departments.dept_name, CONCAT(e.first_name, ' ', e.last_name) AS full_name, dept_manager.dept_no FROM employees e

# SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_name, d.dept_name
# FROM employees as e
#          JOIN dept_emp as de
#               ON de.emp_no = e.emp_no
#          JOIN dept_manager as dm
#               ON dm.dept_no = de.dept_no
#          JOIN departments d ON dm.dept_no = d.dept_no;


SELECT CONCAT(d.dept_name) AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM employees e
        JOIN dept_manager dm on e.emp_no = dm.emp_no
        JOIN departments d on dm.dept_no = d.dept_no
WHERE dm.to_date = '9999-01-01'
ORDER BY d.dept_name;



SELECT CONCAT(d.dept_name) AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM employees e
         JOIN dept_manager dm on e.emp_no = dm.emp_no
         JOIN departments d on dm.dept_no = d.dept_no
WHERE dm.to_date = '9999-01-01' AND gender = 'F'
ORDER BY d.dept_name;


# #TESTING NUMBER OF DEPT_EMPs IN COSTUMER SERVICE
# SELECT dept_emp.to_date, COUNT(*) FROM dept_emp
# WHERE dept_emp.dept_no = 'd009'
# GROUP BY dept_emp.to_date;


SELECT CONCAT(t.title) AS 'Title', COUNT(*) AS 'TOTAL' FROM titles t
JOIN dept_emp de ON t.emp_no = de.emp_no
WHERE de.dept_no = 'd009' AND t.to_date = '9999-01-01' AND de.to_date = '9999-01-01'
GROUP BY t.title;




SELECT CONCAT(d.dept_name) AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager', CONCAT(s.salary) AS 'Salary'
FROM employees e
         JOIN salaries s on e.emp_no = s.emp_no
         JOIN dept_manager dm on e.emp_no = dm.emp_no
         JOIN departments d on dm.dept_no = d.dept_no
WHERE dm.to_date = '9999-01-01' AND s.to_date = '9999-01-01'
ORDER BY d.dept_name;














#BONUS
#
# SELECT CONCAT(e.first_name, ' ', e.last_name) AS 'Employee', CONCAT(d.dept_name) AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
# FROM employees e
#          JOIN dept_manager dm on e.emp_no = dm.emp_no
#          JOIN departments d on dm.dept_no = d.dept_no
# WHERE dm.to_date = '9999-01-01'
# ORDER BY d.dept_name;





