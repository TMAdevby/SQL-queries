CREATE TABLE locations2 AS (select * from locations where 1= 2);

select * from locations2;

select * from locations;


Insert Into LOCATIONS2 VALUES 
(0200, INITCAP('1215 france scver') , 12568,INITCAP('paris'), null,upper('fr')); 
Insert Into LOCATIONS2 VALUES 
(0300, INITCAP('3562 river coast') , 225588,INITCAP('marsele'), null,upper('fr'));
commit;

INSERT INTO LOCATIONS2 (SELECT * FROM locations where length(STATE_PROVINCE)> 9);
commit;

CREATE TABLE locations4europe AS (SELECT*FROM locations where 1=2);
commit;
select * from locations4europe;
select * from regions;
select * from COUNTRIES;




INSERT ALL
WHEN 1 = 1 then
INTO locations2 

WHEN country_id IN
(select country_id from COUNTRIES where region_id = 1) then 
INTO locations4europe (location_id, street_address, city, country_id)
VALUES(location_id, street_address, city, country_id)
SELECT * from locations;
commit;

UPDATE locations2 SET POSTAL_CODE = 11111 where location_id IN (2400,2500,2600);

ROLLBACK;

UPDATE locations2 SET 
POSTAL_CODE = (select postal_code from locations where location_id = 2600) 
where POSTAL_CODE IS NULL;
commit;

DELETE from locations2 where COUNTRY_ID = 'IT';
SAVEPOINT s1;

UPDATE locations2 SET STREET_ADDRESS = 'Sezam st. 18'
where LOCATION_ID > 2500;
SAVEPOINT s2;

DELETE from locations2 where STREET_ADDRESS = 'Sezam st. 18';
ROLLBACK to SAVEPOINT s1;
commit;