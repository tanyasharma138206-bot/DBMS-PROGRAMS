CREATE TABLE CUSTOMER (
    cust_no NUMBER(4) PRIMARY KEY,
    first_name VARCHAR2(20) NOT NULL,
    last_name VARCHAR2(20),
    address VARCHAR2(20),
    city VARCHAR2(8),
    state VARCHAR2(20),
    pin NUMBER(6),
    b_date DATE,
    status CHAR(1)
);


-- 1. Create CUSTOMER table with constraints
CREATE TABLE CUSTOMER (
    cust_no NUMBER(4) PRIMARY KEY,
    first_name VARCHAR2(20) NOT NULL,
    last_name VARCHAR2(20),
    address VARCHAR2(20),
    city VARCHAR2(8),
    state VARCHAR2(20),
    pin NUMBER(6),
    b_date DATE,
    status CHAR(1),
    CONSTRAINT chk_status CHECK (status IN ('V','I','A'))
);

-- 2. Insert data
INSERT INTO CUSTOMER VALUES (1003,'RAJ','BAHADUR','SHANTI VILLA','UDP','KARNATAKA',576101,TO_DATE('01-AUG-1970','DD-MON-YYYY'),'V');
INSERT INTO CUSTOMER VALUES (1004,'FELIX','SIMON','M-J-56','PJM','GOA',403002,TO_DATE('12-FEB-1971','DD-MON-YYYY'),'A');
INSERT INTO CUSTOMER VALUES (1005,'RAJAN','KUTTY','A1 TRADERS','KNR','KERALA',670001,TO_DATE('09-JUN-1971','DD-MON-YYYY'),'A');
INSERT INTO CUSTOMER VALUES (1006,'SHILPA','PAI','12/4B','MNG','KARNATAKA',574154,TO_DATE('11-DEC-1970','DD-MON-YYYY'),'I');
INSERT INTO CUSTOMER VALUES (1007,'BOSCO','RAKSHIT','R.K. PLAZA','BNG','KARNATAKA',576201,TO_DATE('01-JAN-1971','DD-MON-YYYY'),'A');

-- 3. Display all records
SELECT * FROM CUSTOMER;

-- 4. Records where state = KARNATAKA
SELECT * FROM CUSTOMER WHERE state = 'KARNATAKA';

-- 5. Delete row where PIN = 576201
DELETE FROM CUSTOMER WHERE pin = 576201;

-- 6. Update PIN where CUST_NO = 1004
UPDATE CUSTOMER SET pin = 476001 WHERE cust_no = 1004;

-- 7. Update address & PIN for CUST_NO = 1003
UPDATE CUSTOMER
SET address = 'KAVI MUDDANNA MARG',
    pin = 576104
WHERE cust_no = 1003;

-- 8. Delete GOA records & display
DELETE FROM CUSTOMER WHERE state = 'GOA';
SELECT * FROM CUSTOMER;

-- 9. INVALID customers
SELECT * FROM CUSTOMER WHERE status = 'I';

-- 10. Distinct states
SELECT DISTINCT state FROM CUSTOMER;

-- 11. Sort by state (ascending)
SELECT * FROM CUSTOMER ORDER BY state ASC;

-- 12. Sort by state (descending)
SELECT * FROM CUSTOMER ORDER BY state DESC;

-- 13. Karnataka & Valid
SELECT * FROM CUSTOMER 
WHERE state = 'KARNATAKA' AND status = 'V';

-- 14. Karnataka OR Kerala
SELECT * FROM CUSTOMER 
WHERE state IN ('KARNATAKA','KERALA');

-- 15. Karnataka/Kerala ACTIVE
SELECT * FROM CUSTOMER 
WHERE state IN ('KARNATAKA','KERALA') AND status = 'A';

-- 16. Karnataka with PIN 576201
SELECT * FROM CUSTOMER 
WHERE state = 'KARNATAKA' AND pin = 576201;

-- 17. All except customer 1005
SELECT * FROM CUSTOMER 
WHERE cust_no <> 1005;

-- 18. State begins with 'K'
SELECT * FROM CUSTOMER 
WHERE state LIKE 'K%';

-- 19. Name contains 'RAJ'
SELECT * FROM CUSTOMER 
WHERE first_name LIKE '%RAJ%';

-- 20. CUST_NO between 1003 and 1005
SELECT * FROM CUSTOMER 
WHERE cust_no BETWEEN 1003 AND 1005;

-- 21. Date range
SELECT * FROM CUSTOMER
WHERE b_date BETWEEN 
      TO_DATE('10-JAN-1971','DD-MON-YYYY')
  AND TO_DATE('31-DEC-1971','DD-MON-YYYY');

-- 22. City condition
SELECT * FROM CUSTOMER
WHERE city IN ('UDP','MNG','BNG','PJM');

-- 23. Rename table
RENAME CUSTOMER TO CUST;
