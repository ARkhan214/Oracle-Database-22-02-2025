--10-Mar-2025 Class Work
--self Join
select worker.last_name as"emp",manager.last_name as"mgr" 
FROM employees worker JOIN employees manager
on (worker.manager_id = manager.employee_id);

select w.last_name as"emp",m.last_name as"mgr" 
FROM employees w JOIN employees m
on (w.manager_id = m.employee_id);

--nonequijoin


--inner versus outer joins
SELECT e.last_name,e.department_id,d.department_name
from employees e LEFT OUTER JOIN departments d
   ON (e.department_id = d.department_id);

SELECT e.last_name,e.department_id,d.department_name
from employees e RIGHT OUTER JOIN departments d
   ON (e.department_id = d.department_id);
   
   SELECT e.last_name,e.department_id,d.department_name
from employees e FULL OUTER JOIN departments d
   ON (e.department_id = d.department_id);
   
   