SELECT*from hr.EMPLOYEES;

-- TO_CHAR DATE FORMATE MODEL

SELECT first_name,last_name,
TO_CHAR(hire_date,'fmDY-MON-RR')as "HIRE DATE"
from hr.EMPLOYEES;

SELECT first_name,last_name,
TO_CHAR(hire_date,'fmDY-MON-YY')as "HIRE DATE"
from hr.EMPLOYEES;

SELECT first_name,last_name,
TO_CHAR(hire_date,'fmDAY-MONTH-YYYY')as "HIRE DATE"
from hr.EMPLOYEES;

SELECT first_name,last_name,
TO_CHAR(hire_date,'fmDY-MM-YYY')as "HIRE DATE"
from hr.EMPLOYEES;

SELECT first_name,last_name,
TO_CHAR(hire_date,'fmDY-MON-YEAR')as "HIRE DATE"
from hr.EMPLOYEES;

