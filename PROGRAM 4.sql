CREATE TABLE person(
  person_id number(10),
  fname VARCHAR2(30) NOT NULL,
  lname VARCHAR2(30) NOT NULL,
  city VARCHAR2(30) NOT NULL,
  salary number(30)
);

-- insert
INSERT INTO person(person_id,fname,lname,city,salary) VALUES 
('1', 'Sneha', 'Sheth', 'Rajkot', 10000),
('2', 'Puja', 'Parmar', 'Ahmedabad', 2000),
('3', 'Riya', 'Gajar', 'Pune', 8000),
('4', 'Sandip', 'Jadeja' ,'Pune', 5000),
('5', 'Alpesh', 'Prajapati', 'Mumbai', 20000);
-- fetch

 
SELECT * FROM  person;
SELECT person_id,fname FROM person;
SELECT fname FROM person;
SELECT*FROM person;
SELECT*FROM person order by salary;
SELECT distinct city FROM person;

update person set city='kolkata' where person_id='4';
 SELECT*FROM person;

SELECT fname FROM person where lname='Prajapati';

alter TABLE person add(state VARCHAR2(15),birthdate date,pincode number(6));
 desc person;

SELECT*FROM person where salary>'6000';

delete FROM person where salary<'3000';
 SELECT * FROM  person;

rename  person to person_master;
 SELECT * FROM  person_master;
