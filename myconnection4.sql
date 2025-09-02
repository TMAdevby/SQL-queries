select * from EMPLOYEES;

select DEPARTMENT_ID, MIN(salary), MAX(salary),MIN(hire_date),MAX(hire_date),COUNT(*)
from EMPLOYEES group by department_id order by COUNT(*) DESC;

select SUBSTR(first_name,1,1),COUNT(*)from EMPLOYEES 
group by SUBSTR(first_name,1,1) HAVING COUNT(*) > 1 order by 2 DESC;

select department_id, salary,COUNT(*)from EMPLOYEES group by department_id,salary;

select TO_CHAR(hire_date,'DAY'),COUNT(*)from EMPLOYEES group by TO_CHAR(hire_date,'DAY')
order by COUNT(*) DESC;

select department_id, SUM(salary), COUNT(*)from EMPLOYEES group by department_id
HAVING COUNT(*) > 30 AND SUM(salary) > 300000  order by COUNT(*) desc;

select region_id, SUM(LENGTH(COUNTRY_NAME)) from countries
group by region_id HAVING SUM(LENGTH(COUNTRY_NAME)) >50 ; 

select job_id, ROUND(AVG(salary)) from EMPLOYEES GROUP BY job_id;

select department_id , COUNT(DISTINCT job_id) from EMPLOYEES group by department_id 
HAVING COUNT(DISTINCT job_id) > 1;

select department_id , job_id, MAX(salary) , MIN(salary) from EMPLOYEES
group by department_id , job_id HAVING AVG(salary) > 10000;

select manager_id, AVG(salary)from EMPLOYEES where COMMISSION_PCT IS NULL
group by MANAGER_ID HAVING AVG(salary) BETWEEN 6000 and 9000;

select ROUND(MAX(AVG(salary)),-3)
from EMPLOYEES group by department_id;
 