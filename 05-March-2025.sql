
CREATE table emp(
emp_id number(6) CONSTRAINT emp_id_pk PRIMARY KEY,
name varchar2(30) not null,
salary number(8,2) not null,
email varchar2(25) not null,
CONSTRAINT emp_email_unq UNIQUE(email)
);
describe emp;
alter table emp add (
department_id number(6),
dept_name varchar2(30)
);



insert into emp values(1, 'Imran', 30000, 'imran@gmail.com',101, 'JAVA');
insert into emp values(2, 'Masud', 30000, 'Masud@gmail.com',102, 'JAVA');
insert into emp values(3, 'Istique', 30000, 'Istique@gmail.com',102, 'JAVA');
insert into emp values(4, 'Arif', 30000, 'Arif@gmail.com',101, 'JAVA');


select * from emp;

insert into emp values(5, 'Reja', 30000, 'Reja@gmail.com',101, 'JAVA');











