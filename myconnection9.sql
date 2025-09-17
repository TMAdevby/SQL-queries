CREATE TABLE address(
id number constraint ad_id_un UNIQUE,
country VARCHAR2(100),
city VARCHAR2(100));

select * from address;

CREATE TABLE friends(
id number,
name VARCHAR2(100) check (length(name) > 3) ,
email VARCHAR2(100),
address_id number references address (id) ON DELETE SET NULL ,
birthday date);

select * from friends;

alter table friends MODIFY (id UNIQUE);

alter table friends drop constraint SYS_C007828;

alter table friends add constraint fr_id_pk primary key (id);

CREATE INDEX fr_email_in ON friends (email);

alter table friends MODIFY ( email constraint fr_email_nn not null);

DROP TABLE friends;

DROP TABLE address;

