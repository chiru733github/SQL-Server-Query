--select distinct clause
--It will unique values in a given table
select distinct Deptno
from OracleData.Emp;

select distinct sal
from OracleData.Emp;
--it skip duplicate data.

select distinct MGR,Sal
from OracleData.Emp;

--Where clause
--Condition based data is fetched.
--give detail of emp who has getting sal less than 2000;
select * from OracleData.Emp
where Sal<2000;

--who getting sal more than 1000;
select Ename,Sal from OracleData.Emp
where Sal>1000;

--fetch manager details
select * from OracleData.Emp
where Job='MANAGER';

--fetch who getting comm in the emp
select * from OracleData.Emp
where not comm is null;

--fetch who deptno 10 in the emp table
select * from OracleData.Emp
where Deptno=10;

--fetch detail who have start letter a in their name
select Ename from OracleData.Emp
where Ename like 'A%';

--fetch detail sal is more than 1000 and less than 2000
select Ename,Sal from OracleData.Emp
where Sal>1000 AND Sal<2000;
--Or
select Ename,Sal from OracleData.Emp
where Sal between 1000 and 2000;

--null
select * from OracleData.Emp
where MGR is not null;

--fetch detail who don't comm in emp table
select * from OracleData.Emp
where comm is null;

--fetch detail who are getting comm in emp table
select * from OracleData.Emp
where comm is not null;

--AND Operator
select * from OracleData.Emp
where Job='SALESMAN' AND Sal>1250;
--If all condition is true then only it will fetch data.
select * from OracleData.Emp
where job='MANAGER' and Deptno=10;

select * from OracleData.Emp
where job='ANALYST' and comm is null;

--OR Operator
--If any one condition is true then it will fetch the data
select * from OracleData.Emp
where job='MANAGER' OR Job='SALESMAN';

select * from OracleData.Emp
where sal<2000 or Deptno=30;

select * from OracleData.Emp
where Job='MANAGER' OR Sal>2450;

--In Operator
--1)
select * from OracleData.Emp
where Deptno in(10,20);
--2)
select * from OracleData.Emp
where Job in('MANAGER','ANALYST');
--3)
select * from OracleData.Emp
where Ename in('JONES','SCOTT','FORD');
--4)
select * from OracleData.Dept
Where Dname in('Accounting','Research','IT');

--LIKE operator
--1)
select * from OracleData.Emp
where Ename like '%N';
--2)
select * from OracleData.Dept
where Dname like '%search';
--3)
select * from Customer
where Customername like '%i';
--4)
select * from OracleData.Emp
where Job like '%MAN';
select * from OracleData.Emp
where Job like 'MAN%';
--5)
select * from OracleData.Emp
where Job like '_AN%';
select * from OracleData.Emp
where Job like '%E_';

--Alias
--1)
select Ename+' is working on '+Job as 'Ename is working on Job'
from OracleData.Emp;
--2)
select Dname+' is presented in Location '+Loc as 'Department with Location'
from OracleData.Dept;
--3)
select Customername+' with itemName is '+ItemName as 'Name with ItemName'
from Customer;
--4)
select Ename+' getting salary is'+str(Sal) as 'Name with salary'
from OracleData.Emp;