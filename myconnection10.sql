CREATE TABLE emp1000 AS select 
first_name, last_name, salary,department_id from employees;

select * from emp1000;

CREATE FORCE VIEW v1000 AS select 
first_name,last_name,salary,department_name,e.city 
from emp1000 e  JOIN departments d ON 
(e.department_id = d.department_id);

select * from v1000;
DROP VIEW v1000;

ALTER TABLE emp1000 ADD (city VARCHAR(50));

CREATE SYNONYM syn1000 for v1000;

DROP VIEW v1000;

DROP SYNONYM syn1000;

DROP TABLE emp1000;

CREATE SEQUENCE seq1000
START WITH 12
INCREMENT BY 4 MAXVALUE 200 CYCLE;

ALTER SEQUENCE seq1000 
NOMAXVALUE
NOCYCLE;

select * from EMPLOYEES;

INSERT INTO employees (employee_id, last_name, email, hire_date, job_id)
VALUES(seq1000.nextval,'TREGULOV','tr',SYSDATE,'IT_PROG'); 
INSERT INTO employees (employee_id, last_name, email, hire_date, job_id)
VALUES(seq1000.nextval,'Ivanov','iv',SYSDATE -5 ,'IT_PROG');

COMMIT;
