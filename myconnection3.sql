select * from EMPloyees;

select * from EMPLOYEES where INSTR(LOWER(FIRST_NAME),'b') > 0; 

select * from EMPLOYEES where INSTR(LOWER(FIRST_NAME),'a',1,2) > 0 ;

select * from DEPARTMENTS;

select SUBSTR(department_name,1, INSTR(department_name,' ')-1 ) from DEPARTMENTS
where INSTR(department_name,' ') > 0;

select first_name, SUBSTR(FIRST_NAME,2,LENGTH(first_name)-2) from
EMPLOYEES;

select first_name,job_id,substr(job_id, instr(job_id,'_')+1) from EMPLOYEES 
where length(substr(job_id, instr(job_id,'_')+1)) > 2 
AND substr(job_id, instr(job_id,'_')+1) != 'CLERK';

select first_name,job_id from EMPLOYEES 
where job_id like '%\_%' escape'\' AND
substr(job_id, instr(job_id,'_')+1) != 'CLERK';

select * from EMPLOYEES where TO_CHAR(HIRE_DATE, 'DD') = '01';

select * from EMPLOYEES where TO_CHAR(HIRE_DATE, 'YYYY') = '2008';

select TO_CHAR(SYSDATE + 1,'fm"Tomorrow is "DdthSP"day of" Month') from dual;

select first_name, hire_date, TO_CHAR(hire_date,'fmDdth" of "Month, YYYY')
as "date" from EMPLOYEES;

SELECT salary, salary * 1.2, TO_CHAR(salary * 1.2,'$99,999.99') from EMPLOYEES; 

select sysdate, 
TO_CHAR(sysdate, 'fm(SS-MON-YYYY), +SS, + MI, + HH, + DD, + MONTH, + YYYY') 
from dual;

select salary, TO_CHAR((TO_NUMBER('$12,345.55', '$99,999.99') + salary),
'$99,999.99')  as new_salary from EMPLOYEES;

select first_name, hire_date,ROUND( MONTHS_BETWEEN
 (TO_DATE('SEP, 18:45:00 18 2009','MON, HH24:MI:SS DD YYYY'),hire_date),2)as betw 
  from EMPLOYEES;
  
select first_name, salary,commission_pct, TO_CHAR
(salary + salary * NVL2(commission_pct,commission_pct,0),'$99,999.00')
as new_sal from EMPLOYEES;

select first_name, last_name, 
NVL2(NULLIF(length(first_name), length(last_name)),'different length','same length')
as nn from EMPLOYEES;

select first_name,commission_pct,NVL2(commission_pct,'Yes','No') info from EMPLOYEES; 

select first_name,COALESCE(commission_pct,manager_id,salary)info from EMPLOYEES;

select first_name,salary, CASE
WHEN salary < 5000 THEN 'Low level'
WHEN salary >= 5000 AND salary <= 10000 THEN 'Normal level'
ELSE 'High level'
END info from EMPLOYEES; 

select * from COUNTRIES;

select COUNTRY_NAME, 
DECOde(region_id, 1,'Europe',2,'America',3,'Asia',4,'Africa')
part from COUNTRIES;

select COUNTRY_NAME, 
CASE region_id 
WHEn 1 THEN 'Europe'
WHEn 2 THEN 'America'
WHEn 3 THEN 'Asia'
WHEn 4 THEN 'Africa'
ELSE 'Unknown' 
END as part
from COUNTRIES;

select first_name, salary,
CASE 
WHEN salary < 10000 AND commission_pct is null THEN 'BAD'
WHEN salary BETWEEN 10000 and 15000 AND commission_pct IS NOT NULL THEN 'NORMAL'
WHEN salary >= 15000 THEN 'GOOD'
ELSE 'UNNOUN' 
END cond
from EMPLOYEES;


