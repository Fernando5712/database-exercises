USE employees;

DESCRIBE employees;

SELECT hire_date FROM employees;

SELECT * FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya');

SELECT last_name
FROM employees
WHERE last_name LIKE 'E%';

SELECT *
FROM employees
WHERE hire_date LIKE '199%';

SELECT first_name
FROM employees
WHERE hire_date LIKE '%12-25';

SELECT first_name
FROM employees
WHERE last_name LIKE '%q%';



SELECT *
FROM employees
WHERE first_name = 'Irena'
   OR first_name = 'Vidya'
   OR first_name = 'Maya';

SELECT *
FROM employees
WHERE first_name = 'Irena'
   OR first_name = 'Vidya'
   OR first_name = 'Maya'
    AND gender = 'M';

SELECT *
FROM employees
WHERE last_name LIKE 'e%'
   OR last_name LIKE '%e';

SELECT *
FROM employees
WHERE last_name LIKE 'E%' AND last_name LIKE '%E';

SELECT *
FROM employees
WHERE hire_date LIKE '199%' AND birth_date LIKE '%12-25';

SELECT *
FROM employees
WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%';