-- order by department_id

SELECT first_name, last_name, department_id, hire_date
FROM employees
WHERE department_id = 60 OR department_id = 80
ORDER BY department_id DESC, first_name ASC;

-- order by hire_date

SELECT first_name, last_name, department_id, hire_date
FROM employees
WHERE department_id = 60 OR department_id = 80
ORDER BY hire_date DESC, first_name ASC;