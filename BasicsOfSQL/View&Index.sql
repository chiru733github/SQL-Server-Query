use Market;
--1)
select * 
from Orders
where Id=4;
create clustered index CustomerId
on Orders(Id);

--2)
select * 
from Hotel
where price=200;
create clustered index prices
on Hotel(price);

--3)
select * from STransaction;
create clustered index items
on Stransaction(itemname);

--4)
create index salary
on Oracledata.Emp(Sal);

--Drop
drop index salary on Oracledata.Emp;
select * from OracleData.Emp
where sal = 3000;
go

--View
create view EmployeewithDepartment
as
select e.Ename,d.Dname
from OracleData.Emp e
inner join OracleData.Dept d
on e.Deptno=d.DeptNo;
go

--2)
create view EmployeeNamewithManager
as
select e1.Ename Employee,e2.Ename manager
from OracleData.Emp e1
inner join OracleData.Emp e2
on e2.Empno=e1.MGR;
go
exec sp_rename
@objname='EmployeeNamewithManager',
@newname='EmpWithManager';
go
--3)
create view SalesEmployee
as
select Ename,Job,Sal,Comm
from OracleData.Emp
where Job='SALESMAN'
with check option;
go

--4)
create view EmployeeWithAnnualSal
as
select Ename,Sal*12 as AnnualSal
from OracleData.Emp;
go
--5)
create view EmployeeWorkLocDallas
as
select e.Ename,e.Job,d.Loc
from OracleData.Emp e
inner join OracleData.Dept d
on e.Deptno=d.DeptNo
where d.Loc='dallas';
go
--To list all views in a SQL Server Database
SELECT 
	OBJECT_SCHEMA_NAME(v.object_id) schema_name,
	v.name
FROM 
	sys.views as v;

--To see view implementation
exec sp_helptext 'EmpWithManager';