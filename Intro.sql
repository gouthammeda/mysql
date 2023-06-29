show databases;

create database mgr_db;

use mgr_db;
show tables;


create table employee(emp_id int, emp_name varchar(20), desig varchar(20),dept_id int, salary float,year int);
-- drop table employee;
desc employee;

alter table employee add age int;
alter table employee rename column salary to empsalary;
alter table employee modify column empsalary bigint;
alter table employee modify column emp_name varchar(30);
alter table employee drop age;
alter table employee rename to employee_vgr;

insert into employee values(101,"Goutham","Software eng",20,100000,2020);
select * from employee;

insert into employee(emp_id,emp_name,salary) values(103,'gnana',200000);
insert into employee(emp_id) values(104);

insert into employee values
(101,"nk reddy","software",10,100000,2000),
(102,"nikil nishanth","finance",20,200000,2001),
(103,"Kullaireddy palle","account",30,300000,2002),
(104,"Ramesh nagoor","hr",40,400000,2003),
(105,"ygnana prakesh","software",10,200000,2000),
(106,"mounish ganneru","finance",20,300000,2001),
(107,"lavanyas reddy","account",30,400000,2002),
(108,"sujay last","hr",40,500000,2003),
(109,"Busireddy harish","software",10,90000,2000),
(110,"lokesh vamsi","finance",20,80000,2001),
(111,"swamy knp","account",30,70000,2002),
(112,"cmsrikar bangalore","hr",40,60000,2003),
(113,"adiri jyothsna","software",10,50000,2000),
(114,"shashimeti kumar","finance",20,40000,2001),
(115,"lokeshvamsi reddy","account",30,30000,2002),
(116,"hemanth kumar","hr",40,20000,2003),
(117,"lavanya sreddy","software",10,55000,2000),
(118,"Sirigiri venkat","finance",20,45000,2001),
(119,"reddy hemanth","account",30,35000,2002),
(120,"sindhu javillivakam","hr",40,25000,2003),
(121,"mshwetha ban","software",10,65000,2000),
(122,"Hemanth nandarapu","finance",20,75000,2001),
(123,"naveen simma","account",30,85000,2002),
(124,"asshan basha","hr",40,95000,2003),
(125,"venkat ven","software",10,6000,2000),
(126,"mounika moni","finance",20,75000,2001),
(127,"saritha siri","account",30,85000,2002),
(128,"swarna murthy","hr",40,95000,2003),
(125,"Sharath muppal1","software",10,6000,2000),
(126,"deepika aradhya","finance",20,7000,2001),
(127,"madhavi megha","account",30,8000,2002),
(128,"ismail7 isma","hr",40,9000,2003),
(129,"manasa reddy","software",10,600,2000),
(130,"mshwetha mm","finance",20,700,2001),
(132,"bigdata prem","account",30,800,2002),
(132,"alok kumar","hr",40,900,2003),
(133,NULL,"software",10,600,2000),
(134,NULL,"finance",20,700,2001),
(135,NULL,"account",30,800,2002),
(136,NULL,"hr",40,900,2003);

select * from employee limit 10;

-- if we set to 0 then updates can be made.
set sql_safe_updates=0;
set sql_safe_updates=1;

update employee set salary=100001 where salary=100000;
update employee set emp_name="nikil reddy" where emp_name="nk reddy";
update employee set desig="emp_hr" where dept_id=40;

select * from employee where dept_id=40;
select * from employee;

update employee set desig= "Jr Software" where dept_id = 10 and year = 2000;

-- updating two fields at a time.
update employee set desig = "Jr Software", emp_name = "vgr raju" where dept_id=10 and year = 2000;

select * from employee where dept_id=10;
-- delete from employee where dept_id=10;

-- if any of one condition is met record will be updated.
update employee set desig = "Sr Software" where dept_id=20 or year = 2;
select * from employee where dept_id=20;

-- if drop the table then both the data and metadata will be deleted permanantly.
drop table employee;

select * from employee;

-- if we truncate then metadata will be present and data alone gets dropped.
truncate table employee;

-- for drop and truncate we can't rollback the data for delete we can rollback the data.
delete from employee where dept_id=30;

-- after rollback records will be inserted into table.
set autocommit=0;
rollback;

delete from employee where emp_name="Ramesh nagoor";
select * from employee where emp_name = "Ramesh nagoor";










