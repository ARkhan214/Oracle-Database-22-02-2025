-- 05.	Which statement produces the number of different departments that have employees with last name Smith? 
SELECT  LAST_NAME,DEPARTMENT_ID from HR.EMPLOYEES
order by LAST_NAME;

SELECT UNIQUE(DEPARTMENT_ID) FROM HR.employees WHERE last_name='Smith'; 

SELECT COUNT (DEPARTMENT_ID) FROM HR.employees WHERE last_name='Smith'; 

SELECT DISTINCT(COUNT(DEPARTMENT_ID)) FROM HR.employees WHERE last_name='Smith'; 

SELECT COUNT(DISTINCT DEPARTMENT_ID) FROM HR.employees WHERE last_name='Smith';