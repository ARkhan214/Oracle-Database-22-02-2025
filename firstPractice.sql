-- select*from hr.employees
    select last_name,first_name,salary "Past salary",
        (salary*2) as "new salary",((salary*2)*0.25) as "savings",10000 as "House rent",10000 as "parents",10000 as "For wife",
        (salary*2)-((salary*2)*0.25)-10000-10000-10000 as "Tour"
from hr.employees;