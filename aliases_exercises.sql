USE employees;

SELECT CONCAT(emp_no, '_',first_name, '_', last_name)
as full_name, birth_date as dob
FROM employees
LIMIT 10;




