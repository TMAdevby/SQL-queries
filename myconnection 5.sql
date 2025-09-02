select * from employees;

select * from employees where 
LENGTH(first_name) = (select MAX(LENGTH(first_name)) from EMPLOYEES);

select * from EMPLOYEES where salary > (select AVG(salary) from EMPLOYEES);

select * from DEPARTMENTS;
select * from LOCATIONS;

select city, SUM(salary) from EMPLOYEES e join DEPARTMENTS d 
ON (e.department_id = d.department_id) 
join LOCATIONS l on (l.location_id = d.location_id)
group by city 
HAVING SUM(salary) =( select MIN(SUM(salary)) from EMPLOYEES e 
join DEPARTMENTS d ON (e.department_id = d.department_id) 
join LOCATIONS l on (l.location_id = d.location_id)
group by city);

select * from EMPLOYEES where MANAGER_ID IN (select EMPLOYEE_ID from EMPLOYEES
where salary > 15000);

select * from DEPARTMENTS d left OUTER JOIN EMPLOYEES e 
ON (d.department_id = e.department_id)
where first_name is null;

select * from DEPARTMENTS where DEPARTMENT_ID NOT IN 
(select DISTINCT department_id from EMPLOYEES 
where department_id is not null);

select * from EMPLOYEES where EMPLOYEE_ID not in
(select MANAGER_ID from EMPLOYEES where MANAGER_ID is not null); 

select * from EMPLOYEES where EMPLOYEE_ID in 
(select DISTINCT MANAGER_ID from EMPLOYEES);

select * from EMPLOYEES e 
where (select COUNT(*) from employees
where manager_id = e.employee_id) > 6;

select * from EMPLOYEES e join DEPARTMENTS d
    on(e.department_id = d.department_id)
    where d.DEPARTMENT_NAME = 'IT';
    
select * from EMPLOYEES where DEPARTMENT_ID =
 (select department_id from DEPARTMENTS where department_name = 'IT');
 
select * from EMPLOYEES where manager_id IN 
(select employee_id from employees where TO_char(hire_date,'YYYY') = '2005')
and hire_date < TO_DATE('2005-01-01', 'YYYY-MM-DD');

select * from JOBS;

select * from EMPLOYEES e JOIN JOBS j 
on(e.job_id = j.job_id) where MANAGER_ID in 
( SELECT employee_id from EMPLOYEES where TO_CHAR(HIRE_DATE,'MM') = '01') and 
LENGTH(job_title) > 15;


