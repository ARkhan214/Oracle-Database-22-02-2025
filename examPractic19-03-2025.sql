CREATE table emp12(
eid NUMBER (5) CONSTRAINT emp12_eid_pk PRIMARY KEY,
ename varchar2(30),
salary number (7,2),
hire_date date,
address varchar2(50)
);

DESCRIB emp12;
SELECT
    * FROM emp12;
    
--Answer 2
ALTER TABLE emp12 add(
department_id NUMBER (4),
department_name VARCHAR2(20)
);

--Answer 3
INSERT INTO emp12 VALUES(1,'Arif',4000,'01-Jan-2022','dhaka',80,'jee');
INSERT INTO emp12 VALUES(2,'jarif',4000,'01-Jan-2022','dhaka',40,'jdee');
INSERT INTO emp12 VALUES(3,'Zarif',4000,'01-Jan-2022','dhaka',80,'jtee');
INSERT INTO emp12 VALUES(4,'Rifat',4000,'01-Jan-2022','dhaka',300,'jee');

--Answer 4
CREATE VIEW emp12vu 
as SELECT ename,department_name,salary
from emp12
WHERE department_id=80;

--Answer 5
create SEQUENCE emp12_eid_seq
            START WITH 5
            INCREMENT by 1
            MAXVALUE 9999
            NOCACHE
            NOSCALE;
--Answer 6
INSERT INTO emp12(eid,ename,salary,hire_date,address,department_id,department_name)
select employee_id,first_name,salary,hire_date,country_name,department_id,department_name
from employees
NATURAL JOIN countries NATURAL join departments NATURAL join locations
where department_id = 100;

SELECT
    * FROM employees;
SELECT
    * FROM countries;
SELECT
    * FROM departments;
SELECT
    * FROM emp12;