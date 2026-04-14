CREATE TABLE Cust_master (
Cust_no VARCHAR2(5) PRIMARY KEY,
Cust_name VARCHAR2(20),
Address1 VARCHAR2(30),
Address2 VARCHAR2(30),
City VARCHAR2(20),
State VARCHAR2(20),
Ph_no NUMBER(10)
);



INSERT INTO Cust_master VALUES ('C1','Priya','RingRoad','Puja Park','Ahmedabad','Gujarat','8989878548');
INSERT INTO Cust_master VALUES ('C2','Puja','LajpatNager','Shyamalcolony','Banaras','UP','7898456213');
INSERT INTO Cust_master VALUES ('C3','Ankit','Borivali','Panchayatnager','Mumbai','Maharashtra','7885984251');
INSERT INTO Cust_master VALUES ('C4','Ravi','VajdiRoad','Nandbhoomicolony','Delhi','Delhi','7898452034');
INSERT INTO Cust_master VALUES ('C5','Alpa','JamanagerRoad','Railwaycolony','Ahmedabad','Gujarat','7465241589');
  
  
SELECT * FROM cust_master;
SELECT *FROM cust_master WHERE state ='Gujarat';
SELECT *FROM cust_master ORDER BY cust_name;
SELECT DISTINCT city FROM cust_master;
UPDATE cust_master SET address1 ='CG Road'; WHERE cust_no='c1';
SELECT *FROM cust_master WHERE state ='Gujarat';
SELECT  DISTINCT city FROM cust_master WHERE state ='Gujarat';
ALTER TABLE cust_master ADD pin_code NUMBER(6);
desc cust_master;

ALTER TABLE cust_master DROP COLUMN pin_code;
desc cust_master;

DELETE FROM cust_master WHERE ph_no = 7898452034;
SELECT * FROM cust_master;

RENAME cust_master TO customer_detail;
desc customer_detail;
