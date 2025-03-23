-- Answer 1

CREATE TABLE yunus(
    eid NUMBER (5),
    ename VARCHAR2(29),
    salary NUMBER (7),
    hire_date DATE,
    address VARCHAR2 (50)
);
DESCRIBE yunus;

ALTER TABLE yunus 
add constraint yunus_eid_pk primary key(eid); 

ALTER TABLE yunus 
ADD CONSTRAINT yunus_eid_pk PRIMARY KEY (eid);

SELECT *FROM hr.EMPLOYEES;
SELECT *FROM hr.DEPARTMENTS;

-- Answer 2

SELECT department_id,round(avg(salary)),MAX(salary)
FROM HR.EMPLOYEES
group by DEPARTMENT_ID
HAVING MAX(SALARY>12000);

select department_id,round(avg(salary)),max(salary)
from HR.EMPLOYEES
group by DEPARTMENT_ID
HAVING MAX (salary>12000);

-- Anwer 3

SELECT first_name
FROM HR.EMPLOYEES
where FIRST_NAME LIKE'S%';

-- Answer 4
SELECT*from hr.DEPARTMENTS;

SELECT avg(e.salary),d.department_name
FROM HR.EMPLOYEES e, HR.DEPARTMENTS d
where department_name = 'Sales';


SELECT round(avg(e.salary)),d.department_name
FROM EMPLOYEES e join DEPARTMENTS d on d.department_id=e.department_id 
where d.department_name = 'Sales'
group by d.department_name;

