Select*from hr.employees
order by salary
offset 4 rows fetch first 5 rows only;

Select*from hr.employees
where substr(last_name,2,2)='an';

Select*from hr.employees
where substr(last_name,1,4)='King';

Select*from hr.employees
where last_name='King';


Select first_name,last_name,
concat (first_name,concat(' ',last_name)) as "Full Name"
from hr.employees;

Select first_name,last_name, first_name||' '||last_name as "Full Name"
from hr.employees;

Select rpad (first_name,12,'a')
from hr.employees;

Select first_name,last_name,
length(last_name) as "cahjfjhcfn"
from hr.employees;

Select first_name,last_name,
lpad (last_name,12,'*')
from hr.employees;

Select last_name,
instr (last_name,'e')
from hr.employees;

Select first_name,last_name,
upper(last_name)
from hr.employees;

Select first_name,last_name,
lower(last_name)
from hr.employees;

Select first_name,last_name,
initcap(last_name)
from hr.employees;




