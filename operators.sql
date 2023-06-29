use mgr_db;

select *, (year+salary) from employee;
select *, (salary-year) from employee;
select *, (year*salary) from employee;
select *, (year%salary) from employee;
select *, (year/salary) from employee;

-- except that particular record show all the results. 
select * from employee where not salary = 100000;

select * from employee where emp_name="lokesh vamsi" and emp_id=110;
select * from employee where emp_name="lokesh vamsi" and emp_id=110 and dept_id = 20;

-- if we want to search on multiple conditions then we can use the in clause.

select * from employee where salary in (100000,200000,300000);

select * from employee where salary>100000;
select * from employee where salary>=100000;
select * from employee where salary !=100000; 
select * from employee where salary <> 100000; 
select * from employee where salary<=50000;

-- select * from employee where emp_name like 's%';

select * from employee;
-- employee name starting with s and ending with a.
select * from employee where emp_name like 'a%' and emp_name like '%a';
select * from employee where emp_name like '%a';
-- whenever we want names starting with 2nd character as a
select * from employee where emp_name like '_a%';
-- whenever we want names start with 3rd character as s
select * from employee where emp_name like '__s%';
select * from employee where emp_name like '%a_';
-- whenever we want to end with 3rd character as a.
select * from employee where emp_name like '%a__';
select * from employee where emp_name not like 's%';

-- selects employees starting from 2nd character to 5th character.
select substr(emp_name,2,5) as extract from employee;
select substr(emp_name,1,5) as extract from employee;

select substr("vgr infotech",1,10) as extractstr;
-- filter words starting with vowels use in operator
select * from employee where dept_id=10;
select sum(salary) from employee where dept_id=10;
select sum(salary) from employee where dept_id=20;
select sum(salary) from employee where dept_id=30;
select sum(salary) from employee where dept_id=50;

select count(*) from employee where dept_id=10;

-- count of employee in both department 10 and 20. 
select count(*) from employee where dept_id=10 or dept_id=20;
select count(*) from employee where desig = "software";

-- Order By:
-- sorts the salaries in ascending order.
select salary from employee order by salary;
select salary from employee order by salary desc;

select dept_id from employee order by dept_id;
select dept_id from employee order by dept_id desc;

select desig from employee order by desig;
select desig from employee order by desig desc;

-- GroupBY
select count(*) from employee;
select dept_id, count(*) from employee group by dept_id;

select max(salary) as maxsal from employee;
-- get max of salary from each department.
select dept_id,max(salary) as maxsal from employee group by dept_id;

select min(salary) as maxsal from employee;
select dept_id,min(salary) as maxsal from employee group by dept_id;

-- get sum of salary from each department.
select sum(salary) as sumsal from employee;
select dept_id,sum(salary) as sumsal from employee group by dept_id;

-- get average of salary for each department.
select avg(salary) as sumsal from employee;
select dept_id,avg(salary) as sumsal from employee group by dept_id;

-- total of minimum sum of slaries for each department using total method.

-- having , it is like filter clause on the aggregated data.
-- using having we are getting the dept_id and sum of salary of dept with more than 1000000. 
select dept_id,sum(salary) as sumsal from employee group by dept_id having sum(salary)>1000000;

select dept_id,avg(salary) from employee group by dept_id having avg(salary)=57320.0000;

-- using roll up we will get the sum of all the salaries for all departments. 
select dept_id,sum(salary) sumsal from employee group by dept_id with rollup; 










