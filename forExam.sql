SELECT*FROM hr.EMPLOYEES;

SELECT salary
FROM HR.EMPLOYEES
where JOB_ID like '%REP%';
-- use join
SELECT e.first_name,d.department_name,l.city,c.Country_name,l.STREET_ADDRESS,j.end_date
FROM hr.EMPLOYEES e
JOIN HR.DEPARTMENTS d ON e.DEPARTMENT_ID=d.DEPARTMENT_ID
JOIN HR.LOCATIONS l on l.LOCATION_ID=d.LOCATION_ID
JOIN HR.COUNTRIES c on l.COUNTRY_ID=c.COUNTRY_ID
JOIN HR.JOB_HISTORY j on e.DEPARTMENT_ID=j.DEPARTMENT_ID;

-- Answer to the question no 1
create table hugaMara(
employee_id number (6) constraint hugaMara_id_pk PRIMARY key,
full_name varchar2 (30) not null,
salary NUMBER(8,2) not NULL,
hire_date DATE not NULL,
address varchar2 (50),
email varchar2(30),
constraint hugaMara_email_unq UNIQUE(email));

describe hugaMara;
SELECT*from hugaMara;

-- Value insert in table

insert into hugaMara values(1,'Md Rahim Khan',200000,'20-Jan-2026','Dhaka','md@gmail.com');
insert into hugaMara values(2,'Md Fahim Khan',100000,'30-Jan-2026','Dhaka','mdfahim@gmail.com');
insert into hugaMara values(3,'Md Salman Khan',150000,'7-Jan-2026','Dhaka','mdsalman@gmail.com');

-- Answer to the question no 2
SELECT e.DEPARTMENT_ID,
round(avg(e.SALARY))
FROM HR.EMPLOYEES e
JOIN hr.DEPARTMENTS d ON e.DEPARTMENT_ID=d.DEPARTMENT_ID
group BY e.DEPARTMENT_ID
having max(e.salary)>12000;


select d.department_id,
round(avg(e.salary)) as"Avg Salary"
from hr.employees e
join hr.departments d on e.department_id = d.department_id
GROUP BY d.department_id
HAVING MAX(e.salary)>12000;

SELECT e.DEPARTMENT_ID,
round(avg(e.SALARY))
FROM HR.EMPLOYEES e
JOIN hr.DEPARTMENTS d ON e.DEPARTMENT_ID=d.DEPARTMENT_ID
where d.DEPARTMENT_ID =90
group BY e.DEPARTMENT_ID;


-- Answer to the question no 3
SELECT first_name ||' '||last_name "Full Name"
FROM hr.EMPLOYEES
where LAST_NAME like 'S%';

-- Answer to the question no 4
SELECT round(avg(e.salary)),d.DEPARTMENT_ID
from HR.EMPLOYEES e
JOIN hr.DEPARTMENTS d on e.DEPARTMENT_ID=d.DEPARTMENT_ID
where d.department_name='sales'
group BY d.DEPARTMENT_ID;

SELECT round(avg(e.salary)),d.DEPARTMENT_ID
from HR.EMPLOYEES e
JOIN hr.DEPARTMENTS d on e.DEPARTMENT_ID=d.DEPARTMENT_ID
group BY d.DEPARTMENT_ID
having d.department_name='sales';



Select*from hr.departments;

-- Answer to the question no 5
SELECT first_name||' '||last_name as "Name",hire_date
from hr.employees;