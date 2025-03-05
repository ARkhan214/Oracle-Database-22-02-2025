SELECT last_name 
FROM employees
WHERE last_name LIKE'_a%';

SELECT e.last_name, d.department_name, d.location_id
FROM employees , departments  
WHERE e.department_id =d.department_id;


CREATE TABLE emp1287528(
eid_id  NUMBER(6)CONSTRAINT emp1287528_id_pk PRIMARY KEY,
ename varchar2(30) not null,
salary number(8,2) not null,
hire_date date not null,
address varchar2(50)
);

describe emp1287528;

SELECT*from emp1287528;

ALTER TABLE emp1287528 add(
department_id NUMBER(6),
dept_name varchar2(30),
ariq_bhi varchar2(8)
);
ALTER TABLE emp1287528 add(
ariq_bhi varchar2(8));

ALTER TABLE emp1287528 add(
dsjflkdsj NUMBER(4));

ALTER TABLE emp1287528 add(
sadiar VARCHAR2(30));


INSERT INTO emp1287528 VALUES(1,'Atiq',2000,'21-jan-2004','Dhaka',106,'jee','Dhaka','2','Barisal');
INSERT INTO emp1287528 VALUES(2,'Btiq',2000,'22-jan-2004','khulna',106,'jee','Dhaka','4','Brisal');
INSERT INTO emp1287528 VALUES(3,'Ctiq',2000,'23-jan-2004','Rongpur',102,'Gee','Dhaka','5','Arisal');

select*from emp1287528;

DESCRIBE emp1287528;


--Answer 2
SELECT d.department_id,round(avg(e.salary)),MAX(e.salary)
FROM employees e
JOIN departments d on d.department_id=e.department_id
GROUP BY department_id
having MAX(e.salary);

--Answer 3
SELECT first_name
FROM employees
where first_name like 'S%';

--Answer 4
SELECT e.first_name,e.avg(salary),e.job_id,d.DEPARTMENT_NAME
FROM employees e
join departments d on d.DEPARTMENT_ID=e.DEPARTMENT_ID
where job_id like 'SA%';

--Answer 5
SELECT first_name||' '||last_name as"Full Name",hire_date
FROM employees;



select*from employees;