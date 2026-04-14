CREATE TABLE job(
  job_id  varchar2(25)not null,
  job_name varchar2(25)not null,
  min_sal number(30),
  max_sal number(30)
);


insert into job(job_id ,job_name, min_sal, max_sal)values
('IT_PROG', 'Programmer' ,4000,10000),
('MK_MGR ','Marketing manager', 9000, 15000),
('FI_MGR', 'Finance manager' ,8200, 12000),
('FI_ACC' ,'Account' ,4200,9000),
('LEC' ,'Lecturer' ,6000, 17000),
('COMP_OP','Computer Operator' ,1500 ,3000);


CREATE TABLE Employee(
  emp_no number(30),
  emp_name varchar2(25),
  emp_sal number(30),
  emp_comm  number(30), 
  dept_no  number(30)
);

insert into Employee(emp_no,emp_name,emp_sal,emp_comm,dept_no)values
('101', 'Smith', 800,0, 20),
('102','Snehal',1600,300,25),
('103', 'Adama' ,1100, 0 ,20),
('104' ,'Aman' ,0,3000 ,15),
('105' ,'Anita' ,5000, 5000 ,10),
('106', 'Sneha' ,2450, 2450 ,10),
('107' ,'Anamika' ,2975 ,0,30);

CREATE TABLE deposit(
  A_no  number(30),
  cname varchar2(25),
  Bname varchar2(25),
  Amount  number(30),
  Adate date
);

insert into deposit(A_no,cname,Bname,Amount,Adate)values
(101, 'Anil', 'andheri' ,7000, '01-jan-06'),
(102, 'sunil', 'virar' ,5000, '15-jul-06'),
(103, 'jay', 'villeparle', 6500, '12-mar-06'),
(104, 'vijay', 'andheri', 8000 ,'17-sep-06'),
(105, 'keyur', 'dadar' ,7500, '19-nov-06'),
(106,' mayur',' borivali' ,5500, '21-dec-06');




select*from job;
select*from Employee;
select*from deposit;

select A_no,Amount from deposit where date between ('01-jan-2006') and ('25-jul-2006');

select*from job where min_sal>4000;

select emp_name as salary from Employee where dept_no=20;


select emp_no,emp_name,dept_no from Employee where dept_no in (10,20);


select*from Employee where emp_name like'A%';

select*from Employee where emp_name like'a%';

select*from Employee where emp_name like'A_a%';

select emp_name,emp_no,emp_sal from Employee where emp_name like'Ani__';

select cname from deposit order by cname;
