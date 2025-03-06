CREATE TABLE hr.emp1287528(
eid_id  NUMBER(6)CONSTRAINT emp1287528_id_pk PRIMARY KEY,
ename varchar2(30) not null,
salary number(8,2) not null,
hire_date date not null,
address varchar2(50)
);

DESCRIBE emp1287528;

SELECT*FROM emp1287528;

INSERT INTO emp1287528 VALUES(1,'Atiq',5000,'21-Feb-2004','Dhaka');
INSERT INTO emp1287528 VALUES(2,'Babul',5200,'22-Jan-2002','khulna');
INSERT INTO emp1287528 VALUES(3,'Runa',5600,'23-Mar-2007','Rongpur');
INSERT INTO emp1287528 VALUES(4,'Masud',6000,'29-Feb-2004','Dhaka');
INSERT INTO emp1287528 VALUES(5,'Tonny',5650,'22-Jan-2001','khulna');
INSERT INTO emp1287528 VALUES(6,'Ruman',5900,'23-Mar-2007','Rongpur');

ALTER TABLE emp1287528 add(
department_id NUMBER(6));