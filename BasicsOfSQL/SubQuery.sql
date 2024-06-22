--SubQuery
--1)
select Ename
from OracleData.Emp
where Sal>(select Sal
			from OracleData.Emp
			where Ename='ADAMS');

--2)
select Ename,Sal
from OracleData.Emp
where sal<(select Sal
			from OracleData.Emp
			where Ename='KING');
--3)
select Ename,Deptno
from OracleData.Emp
where Deptno=(select Deptno
				from OracleData.Emp
				where Ename='JONES');
--4)
select Empno,Ename,Sal*12 as AnnualSalary
from OracleData.Emp
where Sal>(select Sal
			from OracleData.Emp
			where Ename='WARD');

--5)
select Ename,Hiredate
from OracleData.Emp
where HireDate>(select HireDate
				from OracleData.Emp
				where Job='PRESIDENT');

--6)
select Ename,Sal
from OracleData.Emp
where Sal < (select Sal
			from OracleData.Emp
			where Empno=7839);

--7)
select *
from OracleData.Emp
where Deptno=20 and Job=(select Job
						from OracleData.Emp
						where Ename='SMITH');

--8)
select Dname
from OracleData.Dept
where DeptNo = (select DeptNo
				from OracleData.Emp
				where Ename='SMITH');

--9)
select Dname,Loc
from OracleData.Dept
where DeptNo IN (select DeptNo
				from OracleData.Emp
				where Ename like '%R');

--10)
select Ename,Sal
from OracleData.Emp
where Deptno = (select Deptno
				from OracleData.Dept
				where Loc='CHICAGO');
