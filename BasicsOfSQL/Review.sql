--1)Select the name and salary of the employee with the highest salary:
use Market;
select Ename,Sal
from OracleData.Emp
where Sal = (select max(Sal)
			from OracleData.Emp);
--or
select Ename,Sal
from OracleData.Emp
order by Sal desc
offset 0 rows
fetch first 1 row only;
--2)Select the name and age of all employees who work in the same department
--as the employee named "John Smith"
select Ename,Sal
from OracleData.Emp
where Deptno = (select Deptno
				from OracleData.Emp
				where Ename='John Smith');


--3)Select all orders along with the name of the customer who placed the order
select Customername,ItemName
from Orders
where not Itemname is null;
--4) print last two rows from a table
select *
from OracleData.Emp 
order by sal asc
offset (select count(*) from OracleData.Emp)-2 rows;

