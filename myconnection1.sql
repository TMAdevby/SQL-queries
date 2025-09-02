select * from employees;
select * from EMPLOYEES where FIRST_NAME = 'David';

select * from EMPLOYEES where JOB_ID = 'FI_ACCOUNT';

select first_name,last_name,salary,department_id 
  from EMPLOYEES where department_id = 50 AND salary > 4000 order by 3;
  
select * from employees where department_id in (20,30);

select * from EMPLOYEES where first_name like '_a%a';

select * from EMPLOYEES where department_id in (50,80)
  AND COMMISSION_PCT is not null ORDER BY 4;
  
select * from EMPLOYEES where first_name like '%n%n%' OR first_name like 'N%n%';

select * from EMPLOYEES where first_name like '_____%' 
  order by DEPARTMENT_ID desc NULLs LAST;
  
select * from EMPLOYEES where SALARY BETWEEN 3000 and 7000 AND 
  (COMMISSION_PCT is null OR COMMISSION_PCT = 0)
  AND JOB_ID in ('PU_CLERK', 'ST_MAN', 'ST_CLERK');
  
select * from EMPLOYEES where first_name like '%\%%' ESCAPE '\';

select job_id, first_name, salary from EMPLOYEES where employee_id >= 120
  AND job_id != 'IT_PROG' order by JOB_ID, FIRST_NAME DESC;