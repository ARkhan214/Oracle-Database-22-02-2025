SELECT*FROM employees;
SELECT*FROM departments;

SELECT first_name,last_name,department_id,salary,department_name
from employees NATURAL JOIN departments;


SELECT e.first_name, d.department_name, l.street_address, l.city, c.country_name
from Employees e
join Departments d on e.department_id=d.department_id
join Locations l on l.location_id=d.location_id
join Countries c on l.country_id=c.country_id;


SELECT e.first_name,j.job_id,e.salary
FROM employees e
join jobs j on j.job_id=e.job_id;