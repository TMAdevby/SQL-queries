select * from EMPLOYEES;

CREATE TABLE friends AS 
select employee_id id,first_name name, last_name surname 
from employees 
where commission_pct IS NOT NULL;

select * from Friends;

ALTER TABLE friends ADD (email VARCHAR2(100));

ALTER TABLE friends MODIFY (email VARCHAR2(100) DEFAULT 'no email');

UPDATE FRIENDS SET email = 'no email' where email IS NULL;

DROP TABLE friends;

INSERT INTO friends(id,name,surname) VALUES('180', 'Serg','Cherepok');

ALTER TABLE friends RENAME COLUMN id TO friends_id;

DROP TABLE friends;

CREATE TABLE friends 
(id integer,
name VARCHAR2(100),
surname VARCHAR2(100),
email VARCHAR2(100),
salary number(6,2) DEFAULT 1000,
city VARCHAR2(100),
birthday DATE DEFAULT  TO_DATE('01-JAN-1990', 'DD-MON-YYYY'));

INSERT INTO FRIENDS VALUES
(1,'Maksim','Tipun','mt@mail.ru','5000','Brest','02-MAY-1985');
INSERT INTO FRIENDS (id,name,surname,email,city) VALUES 
(2,'Nata','Sin','nata@mail.ru','Brest');

Delete from FRIENDS where id = 2;
commit;

ALTER TABLE FRIENDS DROP COLUMN salary;

ALTER TABLE friends SET UNUSED (birthday);

ALTER TABLE friends DROP UNUSED COLUMNS;

ALTER TABLE friends READ ONLY;

DELETE FROM friends where id = 1;

ALTER TABLE friends READ WRITE;

TRUNCATE table friends;
