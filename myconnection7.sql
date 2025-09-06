CREATE TABLE locations2 AS (select * from locations where 1= 2);

select * from locations2;

select * from locations;

Insert Into LOCATIONS2 (select * from locations where country_id = 'IT'); 
commit;

Insert Into LOCATIONS2 VALUES 
(1200, INITCAP('1215 france scver') , 12568,INITCAP('paris'), null,upper('fr')); 
Insert Into LOCATIONS2 VALUES 
(1300, INITCAP('3562 river coast') , 225588,INITCAP('marsele'), null,upper('fr'));
commit;

INSERT INTO LOCATIONS2 (SELECT * FROM locations where length(STATE_PROVINCE)> 9);
commit;

CREATE TABLE locations4europe AS (SELECT*FROM locations where 1=2);