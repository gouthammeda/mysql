use mgr_db;

create table product(id int,product varchar(20),price int);
insert into product values(10,'dell',20000),(20,'hp',19000),(30,'lenovo',22000),(40,'acer',25000);
select * from product;

create table sales(id int not null,product varchar(10) not null,salesprice int);
insert into sales values(10,null,20000),(20,'hp',19000),(30,'lenovo',22000),(40,'acer',25000);

create table emp(id int not null default 100,name varchar(20) not null default 'vgr infotech',salary int default 100000);
-- if we not give value for the column it will take default value provided in name.
insert into emp(id,salary) values(101,20000);
insert into emp(salary) values(30000);
insert into emp(id,name) values(101,'raju');
insert into emp() values();
select * from emp;

-- unique means table should not have same value for two records of single column.

create table student(rollno int unique default 100,name varchar(20),subjects varchar(20) unique,marks int);
insert into student values(1,'sujay','kannada',70);
insert into student (name,subject,marks) values('prakash','maths',80);
insert into student values(null,'sujay',null,70);
select * from student; 

-- there can be only one primary key column for a table and it will not allow null. 
create table prod(id int primary key, name varchar(20),price int);
insert into prod values(101,'dell',1000000);

-- foreignkey constraint. 
create table dept_tbl1(deptno int primary key,dname varchar(20),location varchar(20)) ;-- parent table
insert into dept_tbl1 values (10,"hr","bangalore"),(20,"it","hyd"),(30,"f","pune"),(40,"it","delhi");
insert into dept_tbl1 values(50,"it","delhi");

select * from dept_tbl1;

-- we can add a record to child table only if the dept_no exists in parent table.
-- we can only delete the record in the parent table if it is deleted from child table.
create table emp_vgr (empid int,emp_name varchar(20),salary int,deptno int,foreign key (deptno) references dept_tbl1(deptno));  -- child table
insert into  emp_vgr values(101,"yuvaraj",1000,10);
insert into  emp_vgr values(102,"chinnarao",2000,20);
insert into  emp_vgr values(103,"Anil",3000,50);

select * from emp_vgr;
select * from dept_tbl1;

delete from dept_tbl1 where deptno=10;
delete from emp_vgr where deptno=10;





