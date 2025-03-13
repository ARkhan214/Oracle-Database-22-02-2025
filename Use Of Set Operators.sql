-- 13-03-2025 Class
 select*FROM countries;      select*FROM departments;     select*FROM employees;     SELECT* FROM retired_employees;
select*FROM job_history;    select*FROM jobs;            select*FROM locations;     select* FROM regions;


-- 63. Display details of manager who manages more than 5 employees.


create table retired_employees(
    employee_id number primary key,
    FIRST_NAME VARCHAR2(20), 
LAST_NAME       VARCHAR2(25) NOT NULL ,
EMAIL          VARCHAR2(25) NOT NULL ,
RETIRED_DATE      DATE NOT NULL,
JOB_ID         VARCHAR2(10) NOT NULL ,
SALARY                  NUMBER(8,2)  ,
MANAGER_ID              NUMBER(6)  ,  
DEPARTMENT_ID           NUMBER(4)
);

insert into retired_employees 
  values(301, 'Rick', 'Dayle', 'RDAYLE', '18-MAR-2010', 'AD_PRES', 8000, 124, 90);
insert into retired_employees 
  values(302, 'Meena', 'Rac', 'MRAC', '21-SEP-2011', 'AD_VP', 11000, 149, 90);
insert into retired_employees 
  values(303, 'Mex', 'Haan', 'MHAAN', '13-JAN-2010', 'AD_VP', 9500, 149, 80);
insert into retired_employees 
  values(304, 'Alexandera', 'Runold', 'ARUNOLD', '01-JAN-2011', 'IT_PROG', 7500, 124, 60);
insert into retired_employees 
  values(305, 'Bruk', 'Ernst', 'BERNST', '21-MAY-2010', 'IT_PROG', 6000, 149, 60);
insert into retired_employees 
  values(306, 'Dravid', 'Aust','DAUST', '25-JUN-2009', 'IT_PROG', 4800, 124, 60);
insert into retired_employees 
  values(307, 'Raj', 'Patil', 'RPATIL', '05-FEB-2012', 'IT_PROG', 4800, 201, 60);
insert into retired_employees 
  values(308, 'Rahul', 'Bose', 'RBOSE', '17-AUG-2012', 'FI_MGR', 12008, 124, 100);
insert into retired_employees 
  values(309, 'Dany', 'Fav', 'DFAV', '16-AUG-2011', 'FI_ACCOUNT', 9000, 101, 90);
insert into retired_employees 
  values(310, 'James', 'Ken', 'JKEN', '28-SEP-2010', 'FI_ACCOUNT', 8200, 101, 90);
insert into retired_employees 
  values(311, 'Shana', 'Grag', 'SGRAG', '30-SEP-2010', 'FI_ACCOUNT', 7700, 201, 100);
insert into retired_employees 
  values(312, 'Peter', 'Jois', 'PJOIS', '07-JUN-2014', 'FI_ACCOUNT', 7800, 124, 100);
insert into retired_employees 
  values(313, 'Lui', 'Pops', 'LPOPS', '07-DEC-2010', 'FI_ACCOUNT', 6900, 201, 100);
insert into retired_employees 
  values(314, 'Del', 'Raph', 'DRAPH', '07-DEC-2012', 'PU_MAN', 11000, 101, 30);
insert into retired_employees 
  values(315, 'Alex', 'Khurl', 'AKHURL', '18-MAY-2011', 'PU_CLERK', 3100, 149, 30);

COMMIT;

DESCRIB retired_employees;

TRUNCATE TABLE emp1287;
SELECT
    * FROM emp1287;
DROP TABLE emp1287; 

ROLLBACK

SELECT * FROM emp1287528;

insert into emp1287528 
  values(301, 'Rick', '28778','18-MAR-2010','AD_PRES', 8000,' ggl', 'ghfghf',6,'gfhf');
insert into emp1287528 
  values(302, 'Meena', 'Rac', 'MRAC', '21-SEP-2011', 'AD_VP', 11000, 149, 90);
 
update emp1287528 set dept_name='BBQ';
update emp1287528 set sadiar='Hand';
update emp1287528 set ARIQ_BHI='HEAD';
commit;

insert into emp1287528 
  values(301, 'Rick', '28778','18-MAR-2010','AD_PRES', 8000,' ggl', 'ghfghf',6,'gfhf');
eid_id,ename,salary,hire_date,address,department_id,dept_name,ariq_bhi,dsjflkdsj,sadiar

describe emp1287528;
DROP COLUMN DSJFLKDSJ;55544

select*FROM departments;
select*FROM employees;
    select*FROM jobs;


select*from employees
NATURAL JOIN departments 

 SELECT * FROM DEPARTMENTS
 WHERE DEPARTMENT_ID IN
 (SELECT DEPARTMENT_ID FROM EMPLOYEES
 WHERE EMPLOYEE_ID IN 
 (SELECT EMPLOYEE_ID FROM JOB_HISTORY)
 GROUP BY DEPARTMENT_ID
 HAVING MAX(SALARY) >10000);
 
  29. Display job ID for jobs with average salary
 more than 10000.
 
 SELECT JOB_ID, AVG(SALARY) FROM EMPLOYEES
 GROUP BY JOB_ID
 HAVING AVG(SALARY)>10000;


