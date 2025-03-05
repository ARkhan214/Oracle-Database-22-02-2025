SELECT*from HR.EMPLOYEES;
SELECT*from HR.departments;
SELECT*from HR.LOCATIONS;
SELECT*from HR.COUNTRIES;
SELECT*from HR.JOBS;
SELECT*from HR.JOB_HISTORY;


SELECT e.FIRST_name,d.department_name,l.street_address,l.city,c.COUNTRY_NAME
FROM HR.EMPLOYEES e
join HR.departments d on e.department_id=d.DEPARTMENT_ID
join HR.LOCATIONS l on l.LOCATION_id=d.LOCATION_id
join HR.COUNTRIES c on l.country_id=c.country_id;