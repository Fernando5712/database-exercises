USE employees;

SELECT departments.dept_name AS department,
       CONCAT (emp.first_name, ' ', emp.last_name ) AS manager
FROM departments
         JOIN dept_manager ON dept_manager.dept_no = departments.dept_no
         JOIN employees AS emp ON emp.emp_no = dept_manager.emp_no
WHERE dept_manager.to_date = '9999-01-01'
ORDER BY department;



SELECT departments.dept_name AS 'Department Name',
       CONCAT (emp.first_name, ' ', emp.last_name ) AS 'Manager Name'
FROM departments
         JOIN dept_manager ON dept_manager.dept_no = departments.dept_no
         JOIN employees AS emp ON emp.emp_no = dept_manager.emp_no
WHERE dept_manager.to_date = '9999-01-01' AND emp.gender = 'F'
ORDER BY `Department Name`;

SELECT titles.title AS Title, COUNT(dept_emp.emp_no) AS Count
FROM departments
         JOIN dept_emp ON dept_emp.dept_no = departments.dept_no
         JOIN titles ON titles.emp_no = dept_emp.emp_no
WHERE departments.dept_name = 'Customer Service' AND titles.to_date = '9999-01-01' AND dept_emp.to_date = '9999-01-01'
GROUP BY Title;

SELECT departments.dept_name AS 'Department Name',
       CONCAT (emp.first_name, ' ', emp.last_name ) AS 'Name', salaries.salary AS 'Salary'
FROM departments
         JOIN dept_manager AS dm on departments.dept_no = dm.dept_no
         JOIN employees AS emp ON emp.emp_no = dm.emp_no
         JOIN salaries  on emp.emp_no = salaries.emp_no
WHERE dm.to_date LIKE '9999%' AND salaries.to_date LIKE '9999%'
ORDER BY departments.dept_name;






SELECT departments.dept_name AS 'Department Name', CONCAT(emp.first_name, ' ', emp.last_name) AS 'Name', salaries.salary AS 'Salary'
FROM departments
         JOIN dept_manager AS dm ON departments.dept_no = dm.dept_no
         JOIN employees AS emp ON emp.emp_no = dm.emp_no
         JOIN salaries ON emp.emp_no = salaries.emp_no
WHERE dm.to_date LIKE '9999%' AND salaries.to_date LIKE '9999%'
ORDER BY departments.dept_name;

SELECT CONCAT(emp.first_name, ' ', emp.last_name) AS 'Employee Name', d.dept_name AS 'Department Name', CONCAT(emp2.first_name, ' ', emp2.last_name)
FROM employees as emp
         JOIN dept_emp de on emp.emp_no = de.emp_no
         JOIN departments d on de.dept_no = d.dept_no
         JOIN dept_manager dm on d.dept_no = dm.dept_no
         JOIN employees emp2 on dm.emp_no = emp2.emp_no
WHERE de.to_date = '9999-01-01' AND dm.to_date = '9999-01-01';