--question 1
select last_name,length(last_name),salary
from employees
WHERE last_name LIKE 'J%'or last_name LIKE 'A%'or last_name LIKE 'M%'
order BY last_name;

--question 2
select last_name,length(last_name),salary
from employees
WHERE last_name LIKE 'J%'or last_name LIKE 'A%'or last_name LIKE 'M%'
order BY last_name;


--question 3
select last_name,salary "Earns",salary*3 as"Dream salary"
from employees;

--question 4
select last_name,hire_date,salary
from employees;