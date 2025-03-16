-- 1.Create a table and name using your ID preceded by emp (as emp106588),
-- which have 5 fields as eid,ename,salary,hire_date,and address with appropriate date types and create primary key on eid.






--Answer 1

CREATE TABLE emp106588(
      eid number(4) constraint emp106588_eid_pk primary key,
      ename varchar2(30) not null,
      salary number (9,2),
      hire_date date,
      address varchar2(60)          
      );
  
  describe emp106588;
  
  SELECT
      * FROM emp106588;
--Answer 2
alter table emp106588 add(
dept_name varchar2 (20));

--Answer 3
insert into emp106588 values(1,'Md.Rahim Khan',200000,'01-JAN-2026','Dhanmondi','IT');
insert into emp106588 values(2,'Md.Fahim Khan',100000,'02-FEB-2026','Mirpur','IT');
insert into emp106588 values(3,'Md.Tahim Khan',50000,'03-MAR-2026','Khilgaon','AD');
insert into emp106588 values(4,'Md.Mahim Khan',20000,'04-FEB-2026','Azimpur','SE');

--Answer 4
CREATE view empvuse 
as SELECT ename,dept_name,salary FROM emp106588
where dept_name='SE';

SELECT
    * FROM empvuse;
    
--Answer 5
create SEQUENCE emp106588_eid_seq
            START WITH 5
            INCREMENT by 1
            MAXVALUE 9999
            NOCACHE
            NOSCALE;

--Answer 6
  insert into emp106588 values(emp106588_eid_seq.nextval,'Md.Abir Khan',20000,'07-FEB-2026','Uttara','SE');
  
  SELECT
      * FROM emp106588;