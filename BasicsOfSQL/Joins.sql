--cross
select *
from Hotel,STransaction as s;

select c.Customername,h.ItemName,c.Price
from Customer as c,Hotel as h;
--self
select e2.Ename,e2.Job,e1.Ename,e2.Job
from OracleData.Emp as e1 
join OracleData.Emp as e2
ON e1.Empno=e2.MGR;


--inner join
select e.Ename,d.Dname
from OracleData.Emp as e
inner join OracleData.Dept as d
on e.Deptno=d.DeptNo;

select d.Dname,e.ename
from OracleData.Dept as d
inner join OracleData.Emp as e
on d.DeptNo=e.Deptno;

create table student(
Rollno int primary key identity(1,1),
StuName varchar(25) not null,
StuAddress varchar(30),
age int check(age>=18));

insert into student(StuName,StuAddress,age)
values('Chiru','Tirupati',23),
('dileep','Puttur',24),
('Santhosh','Hsr layout',24),
('shoiab','HSR layout',25),
('Badri','BTM lake',23)

create table Course(
courseId int,
stuRollno int foreign key references student(Rollno));

insert into Course
values(1,1),(2,2),(2,3),(3,4),(1,5),(4,5)

--3)
select C.CourseId,S.Stuname,S.age
from student as s
inner join Course as c
on s.Rollno=c.stuRollno;

--Left join
select h.itemName,s.CustomerName
from STransaction as s
left join Hotel as h
on s.itemName=h.ItemName;

select e.job,d.dname
from OracleData.Emp as e
left join OracleData.Dept as d
on e.Deptno=d.DeptNo;


--right join
select e.job,d.dname
from OracleData.Emp as e
right join OracleData.Dept as d
on e.Deptno=d.DeptNo;

select C.CourseId,S.Stuname,S.age
from student as s
right join Course as c
on s.Rollno=c.stuRollno;

--full join
select e.ename,e.job,d.dname
from OracleData.Emp as e
full join OracleData.Dept as d
on e.Deptno=d.DeptNo;

select h.itemName,s.CustomerName,s.Price
from STransaction as s
full join Hotel as h
on s.itemName=h.ItemName;