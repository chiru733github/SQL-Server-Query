--Union Operator
--1)
select Deptno 
from OracleData.Emp
union 
select deptno 
from OracleData.Dept;
--2)
select Customername
from Customer
union
select Customername
from Customer;
--3)
select Customername
from Customer
union
select Customername
from Stransaction;
--4)
select ItemName
from Customer
union
select ItemName
from STransaction;

--intersect
--1)
select Deptno 
from OracleData.Emp
Intersect 
select deptno 
from OracleData.Dept;
--2)
select ItemName
from Customer
intersect
select ItemName
from STransaction;
--3)
select Empno
from OracleData.Emp
intersect
select MGR
from OracleData.Emp;
--4)
select Customername
from Customer
Intersect
select Customername
from Stransaction;

--Except
--1)
select Deptno
from OracleData.Dept
Except
select Deptno
from OracleData.Emp;
--2)
select Customername
from Customer
except
select Customername
from STransaction;
--3)
select Empno
from OracleData.Emp
except
select MGR
from OracleData.Emp
order by Empno;
--4)
select Id
from Customer
except
select SNo
from Hotel;