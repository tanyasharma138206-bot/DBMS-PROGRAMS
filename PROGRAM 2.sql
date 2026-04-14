create table cust_master(
    id varchar2(5),
    name varchar2(20),
    type varchar2(20),
    Price NUMBER(10),
    Quality VARCHAR2(20),
    Item_pack_date DATE
    );
--cre create

-- insert
INSERT INTO cust_master VALUES (11,'Dairymilk','Chocolate', 500 ,'Good','12-aug-2000' );
INSERT INTO cust_master VALUES (12,'Kajukatri','Mithai', 1000,'Verygood','15-jan-2016' );
INSERT INTO cust_master VALUES (13,'Pizza','Fastfood', 350, 'Average','20-Feb-2015');
INSERT INTO cust_master VALUES (14,'Orangejuice','Juice',50,'Best','05-feb-2016' );
INSERT INTO cust_master VALUES (15,'Vanilla_cack','Bakery item',2000,'Good','01-jan-2016');
-- fetch 


SELECT * FROM cust_master;
SELECT Price,Quality,Item_pack_date FROM cust_master;
SELECT * FROM cust_master ORDER BY Quality;
SELECT DISTINCT Quality FROM cust_master;
UPDATE cust_master
  SET Quality = 'Verygood'
  WHERE Quality ='Good';

SELECT * FROM cust_master
  WHERE Quality ='Verygood';

ALTER TABLE cust_master 
  ADD item_pur_date DATE;
  
desc cust_master;

SELECT * FROM cust_master
  WHERE Price>500;

DELETE FROM cust_master
  WHERE Price = 50;  
  
RENAME cust_master TO cust_detail;  
  
  
