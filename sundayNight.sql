SELECT department_id,round(avg(salary)),MAX(SALARY)
FROM HR.EMPLOYEES
where SALARY>12000
group BY department_id;

SELECT*from HR.EMPLOYEES;

SELECT*from HR.departments;

DESCRIBE HR.departments;

SELECT*from HR.JOBS;

SELECT e.first_name,j.job_id,e.salary
FROM HR.employees e
join HR.jobs j on e.job_id=j.job_id;


SELECT e.first_name, d.department_name, l.street_address, l.city, c.country_name
from hr.Employees e
join hr.Departments d on e.department_id=d.department_id
join hr.Locations l on l.location_id=d.location_id
join hr.Countries c on l.country_id=c.country_id;






