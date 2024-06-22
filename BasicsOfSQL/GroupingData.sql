use Market;
select * from Customer;
--group by clause
--1)
select count(CustomerName) as 'Count',Customername
from Customer
group by Customername;
--2)
select CustomerName,max(price) maximum
from Customer
group by Customername
order by maximum;
--3)
select CustomerName,min(price) minimum
from Customer
group by Customername
order by minimum;
--4)
select Customername,ItemName
from Customer
group by Customername,ItemName
order by Customername;
--5)
select deptno,job,sum(Sal) as TotalSalary
from OracleData.Emp
group by Deptno,Job
order by TotalSalary;
--6)
select deptno,job,Avg(Sal) as AverageSalary
from OracleData.Emp
group by Deptno,Job
order by AverageSalary;

--Grouping Sets
select MGR,Job,Sum(Sal)
from OracleData.Emp
group by 
	grouping sets(
	(MGR,Job),
	--(MGR,Job),
	(Job)
	--()
	);
--Cube
select DeptNo,Dname,Loc
from OracleData.Dept
group by
	cube(DeptNo,Dname,Loc);

select Customername,itemName,Sum(Price)
from Stransaction
group by
	cube(Customername,ItemName);
--Having clause
--1)
select Customername,count(Customername) as Counting
from Customer
group by Customername
having COUNT(Customername)>1;
--2)
select Customername,min(price) minimum
from Customer
group by Customername
having min(price)<100
order by minimum desc;
--3)
select Job,Avg(Sal) as 'AverageSalary'
from OracleData.Emp
group by Job
having count(job)>1;
--4)
select Job,sum(Sal) as 'TotalSalary'
from OracleData.Emp
group by Job
having min(Sal)>1000 and max(Sal)<4000;