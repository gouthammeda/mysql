select abs(-3);
select sqrt(10);
select power(3,6);
-- round of to the nearest integer which is 10.
select round(9.9);
select round(9.4);
-- rounds of to the nearest integer value.
select ceiling(9.045);
select ceiling(-49.045);
select floor(10.10);

select floor(10.1010101010101);
-- sign of positive integer will give 1
select sign(2191919191);
-- sign of positive integer will give -1
select sign(-20202020202);
select sign(0);
use mgr_db;
-- string functions.
-- select len('tiruvunathapuram');
select length('tiruvunathapuram');
select right('tiruvunathapuram',5);
select left('tiruvunathapuram',5);
select upper('tiruvunathapuram');
-- it will remove the left places in the name.
select ltrim("      raju");
select rtrim("raju      ");
-- position of d in india it is the 3rd place.
select position('d' in 'india');
select replace('bangalore','bangalore','andrapradesh');
select reverse('vgr');
-- get results from 4th character to 11th character
select substring('tiruvunathapuram',4,11);
select concat("yuvaraj","varra");
select concat("vgr","infotech");

select desig,length(desig) from employee;
-- gets the right side character from the string.
select desig,right(desig,5) from employee;
select desig,left(desig,5)  from employee;
select desig,upper(desig) from employee;
-- r is contained in which position.
select desig,position('r' in desig) from employee;
select desig,reverse(desig) from employee;
select concat(emp_name,desig) from employee;
select desig,concat_ws("-",emp_name,desig) from employee;

select current_date();
select current_timestamp();
select current_user();

select curdate();
select month(CURDATE());
select DAY(CURDATE());
select YEAR(CURDATE());
SELECT month(CURDATE()),DAY(CURDATE()),YEAR(CURDATE());
-- select datename('2022-11-06'); doesn't exist

SELECT DATEDIFF('2007-12-31 23:59:59','2007-12-30');
-- difference from cur date to december 31st. 
SELECT DATEDIFF(curdate(),'2007-12-31 23:59:59');
SELECT CURTIME() + 0;
SELECT DAYNAME(curdate());

SELECT DAYOFMONTH('2001-11-00'), MONTH('2005-00-00');

SELECT DATE_ADD('2008-01-02', INTERVAL 31 DAY);
SELECT ADDDATE('2008-01-02', INTERVAL 31 DAY);

SELECT ADDTIME('2007-12-31 23:59:59.999999', curtime());
SELECT CONVERT_TZ('2004-01-01 12:00:00','IST','UST');
SELECT CONVERT_TZ('2004-01-01 12:00:00','+00:00','+10:00');

select date(curdate());
SELECT DATE_ADD('2018-05-01',INTERVAL 32 DAY);
SELECT DATE_SUB('2018-05-01',INTERVAL 1 YEAR);
SELECT DATE_SUB(curdate(),INTERVAL 1 YEAR);
SELECT DATE_SUB(curdate(),INTERVAL 10 day);
SELECT DATE_ADD('2020-12-31 23:59:59',INTERVAL 1 SECOND);
SELECT DATE_ADD(curtime(),INTERVAL 120 SECOND);
SELECT DATE_SUB(curtime(),INTERVAL 120 SECOND);

SELECT DATE_FORMAT('2009-10-04 22:23:00', '%W %M %Y');

SELECT MONTHNAME('2008-02-03');
SELECT MONTHNAME(curdate());
SELECT DAYNAME('2008-02-03');
SELECT DAYNAME(curtime());
SELECT DAYOFWEEK(curtime());
select QUARTER(curdate());

select EXTRACT(year from curdate());
SELECT EXTRACT(MONTH FROM CURDATE()) AS month;
select EXTRACT(day from curdate());
select EXTRACT(second from  curtime());
select EXTRACT(second from  curtime());
select EXTRACT(year from curdate()) as year,EXTRACT(month from curdate()) as month, EXTRACT(day from curdate()) as date, EXTRACT(second from curdate()) as seconds;

create table emp_tbl(empid int,empname varchar(20),salary int,deptid int);
insert into emp_tbl values(1,"monika",19000,1),(2,"gireesh",20000,2),(3,"yuvaraj",25000,3),
(4,"vekatesh",18000,2),(5,"manasa",19000,3),(6,"lavanya",18000,1),(7,"rajasekahr",19000,null),
(8,"sarita",18000,null);
select * from emp_tbl;

create table dept_tbl(id int,deptname varchar(20),deptlocation varchar(20),depthead varchar(20));
insert into dept_tbl values(1,"IT","hydrabad","lavanya"),(2,"HR","CHENNAI","gireesh"),
(3,"finance","Mumbai","sarita"),(4,"sales","Pune","venkatesh");
select * from dept_tbl;

-- get matching records from both the tables.
select * from emp_tbl inner join dept_tbl on emp_tbl.deptid=dept_tbl.id; 
-- complete left table records and matching right table records, it will return nulls in right table for not matching records.
select * from emp_tbl left join dept_tbl on emp_tbl.deptid=dept_tbl.id; 

-- complete right table records and matching left table records, it will return nulls in left table for not matching records.
select * from emp_tbl right join dept_tbl on emp_tbl.deptid=dept_tbl.id; 

-- full outer join all the records from both the tables.
select * from emp_tbl left join dept_tbl on emp_tbl.deptid=dept_tbl.id
union 
select * from emp_tbl right join dept_tbl on emp_tbl.deptid=dept_tbl.id;

-- multiply each row of one table with each row of another table 
select * from emp_tbl cross join dept_tbl;

create table a(id int);
insert into a values(1),(2),(3),(4),(5),(6);
create table b(id1 int);
insert into b values(1),(5),(2),(8),(3);

select * from a inner join b on a.id=b.id1;
select * from a left join b on a.id=b.id1;
select * from a right join b on a.id=b.id1;

create table a1(id int);
insert into a1 values(1),(0),(0),(null),(0);
create table b1(id1 int);
insert into b1 values(1),(0),(0),(null),(null);

-- for inner join nulls will not be applicable.
select * from a1 inner join b1 on a1.id=b1.id1;-- count is 7 records  
select * from a1 left join b1 on a1.id=b1.id1;-- count is 8 records, here nulls are applicable so we get the 8th record
select * from a1 right join b1 on a1.id=b1.id1;-- count is 9 records here nulls are applicable as well.

create table emp_m(empid int,empname varchar(20),job varchar(20),mid int,salary int,deptno int);
insert into emp_m values (68318,"suresh","software",null,6000,20),(66928,"pooja","Account",68319,2750,20),(67832,"kumar","finance",68319,2550,30),
(65464,"priya","software",68319,2957,20),(67858,"raju","hr",65646,3100,40),(69062,"lavanya","hr",65646,3100,30),(69062,"raj","hr",66928,900,40);
select * from emp_m;

select * from emp_m as e join emp_m as m on e.empid=m.mid where e.salary>m.salary;

select * from a1 left join b1 on a1.id=b1.id1
union all
select * from a1 right join b1 on a1.id=b1.id1;



