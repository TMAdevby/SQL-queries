select manager_id, TO_CHAR(null) job_id,TO_NUMBER(null) department_id, SUM(salary)
from employees
group by manager_id
UNION
select TO_NUMBER(null),job_id,TO_NUMBER(null),SUM(salary)
from EMPLOYEES
group by job_id
UNION
select TO_NUMBER(null),TO_CHAR(null),department_id, SUM(salary)
from employees
group by department_id;

select department_id from employees where manager_id = 100
MINUS
select department_id from employees where manager_id IN (145, 201);