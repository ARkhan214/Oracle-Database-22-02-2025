select first_name,last_name,phone_number
from employees
order by first_name
FETCH first 5 rows only;

select first_name,last_name,phone_number
from employees;

SELECT mod(968790800,30000)
from dual;

SELECT country_id,region_id,country_name
from countries
OFFSET 3 rows FETCH FIRST 4 ROWs ONLY;


SELECT country_id,region_id,country_name
from countries
WHERE 

SELECT* from departments;

SELECT*from job_history;

SELECT employee_id,department_id,end_date
from job_history
where employee_id='&ID';













SELECT* from jobs;

SELECT* from locations;

SELECT* from regions;


SELECT
    * FROM employees;
--    question 1
    select last_name,salary
    from employees
    where salary>12000
    or salary<5000;
    
--    question 2
    select last_name,department_id
    from employees
    where department_id =20
    or department_id =50
    order by last_name;
    
--    question 3
    select last_name as"Employee",salary as "Monthly Salary" 
    from employees
    where salary between 5000 and 12000 and
    department_id in (20,50);
    
    
    
    select last_name,salary,department_id 
    from employees;
    
    
--    question 4
    select last_name,salary,commission_pct
    from employees
    where commission_pct='null';
    
--    question 5
     select last_name,salary,commission_pct
    from employees
    where commission_pct<=0.20
    order by last_name;
   
--   question 6
select last_name,salary,(salary*15.5)/100,salary+((salary*15.5)/100) as "New_salary"
from employees;











