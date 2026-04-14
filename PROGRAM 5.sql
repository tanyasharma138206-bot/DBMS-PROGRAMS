create table Bank_branch(
Branch_id varchar2(10) primary key,
Branch_name varchar2(20),
Branch_address varchar2(20),
Branch_city varchar2(20),
Branch_state varchar2(20),
Branch_Open_date DATE
);

insert into Bank_branch values('B001','BOI','JagnathRoad','Rajkot','Gujarat','22-mar-2015');
insert into Bank_branch values('B002','SBI','BoriwaliRoad','Mumbai','Maharashtra','12-jan-2000');
insert into Bank_branch values('B003','HDFC','AgraRoad','Agra','U.P.','04-feb-1998');
insert into Bank_branch values('B004','DenaBank','CGRoad','Ahmedabad','Gujarat','20-sep-2012');
insert into Bank_branch values('B005','ICICI','MajavdiRoad','Junagadh','Gujarat','07-may-2011');



select * from Bank_branch;

select branch_id from Bank_branch;

select branch_id,branch_address from Bank_branch;

select branch_name,branch_address,branch_city from Bank_branch;

select branch_city,branch_state,Branch_Open_date from bank_branch;

select * from Bank_branch order by Branch_id;

select * from Bank_branch order by Branch_name;

select * from Bank_branch order by Branch_city;

select * from Bank_branch order by Branch_state;

alter table Bank_branch MODIFY  Branch_state varchar2(40);
desc Bank_branch;

update Bank_branch set Branch_name='Union' where Branch_id='B003';
select * from Bank_branch where Branch_id='B003';

update Bank_branch set Branch_state='Delhi' where Branch_name='BOI';
select * from Bank_branch;

update Bank_branch set Branch_Open_date='04-nov-2015' where Branch_name='Union';
select * from Bank_branch;

alter table Bank_branch add  Branch_pincode number(10);
desc Bank_branch;

update Bank_branch set Branch_pincode='360006' where Branch_name='DenaBank';
select * from Bank_branch;

delete from bank_branch where Branch_Open_date='07-may-2011';
select * from Bank_branch;

alter table Bank_branch rename to branch_master;
desc branch_master;

create table branch_info as select  * from branch_master;

create table branch_info as select  * from branch_master;
select * from branch_info;




