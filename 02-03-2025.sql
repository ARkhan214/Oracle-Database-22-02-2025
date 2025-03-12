--Question 1
select last_name,length(last_name),salary
from employees
WHERE last_name LIKE 'J%'or last_name LIKE 'A%'or last_name LIKE 'M%'
order BY last_name;

--Question 2
select last_name,length(last_name),salary
from employees
WHERE last_name LIKE 'J%'or last_name LIKE 'A%'or last_name LIKE 'M%'
order BY last_name;


--Question 3
--Create a report that produces the following for each employee:
--<employee last name> earns <salary> monthly but wants <3 times salary.>.
--Label the column Dream Salaries.

-- Answer 3
select last_name,salary "Earns",salary*3 as"Dream salary"
from employees;

--Question 4
select last_name,hire_date,salary
from employees;