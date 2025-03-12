-- Using FETCH clause

SELECT first_name, last_name, salary
FROM employees
ORDER BY salary DESC
FETCH NEXT 5 ROWS ONLY;

-- Using OFFSET clause

SELECT first_name, last_name, salary
FROM employees
ORDER BY salary DESC
OFFSET 5 ROWS;

-- Using FETCH and OFFSET Both

SELECT first_name, last_name, salary
FROM employees
ORDER BY salary DESC
OFFSET 5 ROWS FETCH NEXT 5 ROWS ONLY;

--By useing this clause we can see a limit of rows and we can omit number of rows.