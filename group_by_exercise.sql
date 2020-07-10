USE employees;

SELECT DISTINCT title
FROM titles;

SELECT last_name
FROM employees
WHERE last_name LIKE 'e%e'
GROUP BY last_name;

#-------REFACTOR--------------
SELECT last_name, first_name
FROM employees
WHERE last_name LIKE 'E%E'
GROUP BY last_name, first_name;
#-----------------------------


SELECT last_name
FROM employees
WHERE last_name LIKE '%q%'
AND last_name NOT LIKE '%qu%'
GROUP BY last_name;


#--------REFACTOR---------------
SELECT last_name, COUNT(*)
FROM employees
WHERE last_name LIKE '%q%'
and last_name NOT LIKE '%qu%'
GROUP BY last_name;
#-------------------------------


SELECT gender, COUNT(*)
FROM employees
WHERE first_name IN('Irena','Maya','Vidya')
GROUP BY gender;

