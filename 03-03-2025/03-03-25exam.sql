SELECT*FROM employees;

--question 1
--Way 1
SELECT fiest_name, hire_date
from employees
where hire_date BETWEEN '01-JAN-2002' and '31-DEC-2005'; 
--Way 2
SELECT first_name, hire_date
from employees
where to_char(hire_date,'yy') between 02 and 05; 
--Way 3
SELECT first_name, hire_date
from employees
where hire_date>'01-JAN-2002' and hire_date<'31-DEC-2005';

--question 2
--Way 1
select first_name,hire_date
from employees
where job_id in ('IT_PROG','SA_MAN');
--Way 2
select first_name,hire_date
from employees
where  job_id like '%PROG%' or job_id like '%MAN%';

--question 3
--Way 1
select employee_id,hire_date
from employees
where hire_date >('01-Jan-08');

--question 4
--Way 1
select *from employees
where employee_id='150'
or employee_id='160';

--Way 2
select *from employees
where employee_id in(150,160);

--question 5
--Way 1
select first_name,salary,commission_pct,hire_date
from employees
where salary<10000;


