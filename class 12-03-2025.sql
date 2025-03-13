select last_name,length(last_name),salary
from employees
WHERE last_name LIKE 'J%'or last_name LIKE 'A%'or last_name LIKE 'M%'
order BY last_name;

select last_name,manager_id
from employees
WHERE manager_id IN(SELECT  FROM employees
where manager_id is not null
)
order BY last_name;
SELECT
    * FROM employees;

select first_name||' '||last_name "Name", employee_id
from employees
where employee_id not in(select manager_id
from employees
where manager_id is not null);

--Question 57
--57. Display details of departments in which the maximum salary
--is more than 10000.

--Answer 57
select*
from departments
where department_id not in(select department_id
from employees
where max(salary)<10000)
group by department_id);

--Answer from sir
 SELECT * FROM DEPARTMENTS WHERE DEPARTMENT_ID IN
 ( SELECT DEPARTMENT_ID FROM EMPLOYEES
 GROUP BY DEPARTMENT_ID
 HAVING MAX(SALARY)>10000);
 
-- Question 58
-- 58. Display details of departments managed by ‘Smith’
--Answer 58
select*
from employees
where department_id ='smith';

--Answer from sir
SELECT * FROM DEPARTMENTS WHERE MANAGER_ID IN
 (SELECT EMPLOYEE_ID FROM EMPLOYEES WHERE FIRST_NAME='SMITH');
 
 select*
from departments;

--Question 60
--60. Display employees who did not do any job in the past.
--SELECT * FROM EMPLOYEES WHERE EMPLOYEE_ID
--NOT IN (SELECT EMPLOYEE_ID FROM JOB_HISTORY)
--Answer 60
SELECT
    * FROM job_history;
    SELECT
    * FROM employees;
select first_name||' '||last_name "Name", employee_id
from employees
where employee_id not in(select employee_id
from job_history;
where manager_id is not null);

--Answer from sir

 SELECT * FROM EMPLOYEES 
 WHERE EMPLOYEE_ID NOT IN
 (SELECT EMPLOYEE_ID FROM JOB_HISTORY);
 
 SELECT
     * FROM employees;
 SELECT
     * FROM job_history;
     
--Question 63
-- 63. Display details of manager who manages more than 5 employees.
--Answer 63
SELECT last_name,manager_id
FROM employees;
group by manager_id;
select*from departments;

select last_name,manager_id,employee_id
from employees;

SELECT FIRST_NAME FROM EMPLOYEES
 WHERE EMPLOYEE_ID IN
 (SELECT MANAGER_ID FROM EMPLOYEES
 GROUP BY MANAGER_ID
 HAVING COUNT(manager_id)>5);
 
 
 SELECT FIRST_NAME FROM EMPLOYEES
 WHERE EMPLOYEE_ID IN
 (SELECT MANAGER_ID FROM EMPLOYEES
 GROUP BY MANAGER_ID
 HAVING manager_id);
--Question 65
-- 65. Display the departments into which no employee joined in last two years
--Answer 65
SELECT
    * FROM departments 
(select department_id from employees where floor
((sysdate-hire_date)/365)<2);

-- Answer from sir
SELECT  * FROM DEPARTMENTS
 WHERE DEPARTMENT_ID NOT IN
 ( SELECT DEPARTMENT_ID FROM EMPLOYEES WHERE
 FLOOR((SYSDATE-HIRE_DATE)/365) < 2 );
--Question 67
--  67. Display details of current job for employees who worked as IT Programmers in the past
--Answer 67
    
 SELECT * FROM employees
 WHERE employee_id IN
 (SELECT EMPLOYEE_ID FROM JOB_HISTORY
 where job_id ='IT_PROG');
 
-- Answer from sir
 SELECT * FROM JOBS
 WHERE JOB_ID IN
 (SELECT JOB_ID FROM EMPLOYEES WHERE EMPLOYEE_ID IN
        (SELECT EMPLOYEE_ID FROM JOB_HISTORY WHERE JOB_ID='IT_PROG'));
    