use Market;
--SELECT:
--select all column in a Emp table.
select * from OracleData.Emp;

--select one column in a emp table.
select Ename from OracleData.Emp;

--select two or more column in a emp table.
select Ename,job,Sal from OracleData.Emp;

--select salesman employee details
select Ename,Job,sal,comm from OracleData.Emp
where Job='SALESMAN';


--ORDER BY:
--Orderby ename in a emp table
select Ename,Job,Sal from OracleData.Emp
order by Ename;

--Orderby salary of the emp table.
select Ename,Job,Sal,Deptno from OracleData.Emp
order by Sal;

--highest to lowest salary for Employee table.
select Ename,Job,Sal,Deptno from OracleData.Emp
order by Sal desc;

--order by using length of Ename in Employee table.
select Ename,Job,Sal from OracleData.Emp
order by LEN(Ename);

--OFFSET and FETCH:
--skip the first 3 data in a Employee table.
select * from OracleData.Emp
order by Sal
offset 3 rows;

--find the second and third highest sal in emp table.
select * from OracleData.Emp
order by Sal desc
offset 1 row
fetch next 2 rows only;

--the dept table order by Dname and skip first two rows.
select * from OracleData.Dept
order by Dname
offset 2 rows;

--Select Top:
--three ways to represent
--by number
select top 1 Ename,Sal
from OracleData.Emp
order by Sal desc;

--by percent
select top 1 percent Ename
from OracleData.Emp
order by Ename;
--if table having 321 rows then it will give order after top 4 rows.
--because it divide row by 100 and take ceil of number

--select top with ties
select top 2 with ties
	ename,sal
from
	OracleData.Emp
order by Sal desc;
--it is given 2 rows with ties because the two sal value contains one more time.
--for that reason scott details.