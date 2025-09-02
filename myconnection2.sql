select * from EMPLOYEES where LENGTH(first_name) > 10;

select * from EMPLOYEES where MOD(salary, 1000) = 0;

select * from EMPLOYEES;

select PHONE_NUMBER, SUBSTR(PHONE_NUMBER,1,3)from EMPLOYEES 
  where PHONE_NUMBER like '___.___.____' ; 

select * from EMPLOYEES where first_name like '%m' AND LENGTH (FIRST_NAME) > 5;

select NEXT_DAY(TRUNC(SYSDATE), 5) "next friday" from dual;

select * from EMPLOYEES where MONTHS_BETWEEN(SYSDATE,HIRE_DATE) > 150;

select REPLACE(PHONE_NUMBER, '.', '-') num from EMPLOYEES;

select upper(first_name), lower(email), initcap(job_id) from EMPLOYEES;

select CONCAT(first_name, salary) name_sal from EMPLOYEES;

select hire_date, ROUND(hire_date,'MM'), TRUNC(hire_date, 'YYYY')from EMPLOYEES;

select RPAD(first_name,10,'$'),LPAD(first_name,15,'!') from Employees;

select first_name, INSTR(first_name,'a',1,2)from EMPLOYEES;

select '!!!HELLO!!MY FRIEND!!!!!!!!', TRIM (both '!' from '!!!HELLO!!MY FRIEND!!!!!!!!') 
from dual;

select salary, salary*3.1415 as bon,ROUND(salary*3.1415),
    TRUNC(salary*3.1415, -3)/1000 from EMPLOYEES; 
    
select hire_date, ADD_MONTHS(hire_date, 6 ), LAST_DAY(hire_date) from EMPLOYEES;   
