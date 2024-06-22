--In the College database studentdetail table to add gender column
ALTER TABLE StudentDetails
ADD gender char(1);

--Add Address column in studentdetails table
ALTER TABLE StudentDetails
ADD StudentAddress varchar(100);

--Add Address column in faculty table
ALTER TABLE Faculty
ADD FacultyAddress varchar(100);

--add duration column course table
ALTER TABLE Course
ADD Duration tinyint;

--Rename of existing tables
exec sp_rename 'StudentDetails','StudentData';


--Modify existing column in a table
alter table course
alter column duration tinyint not null;

--modify phonenumber datatype bigint to varchar(10)
alter table studentdata
alter column phonenumber varchar(10);

--modify Facultyname with constraint of not null
alter table Faculty
alter column Facultyname varchar(25) not null;

--modify salary with constraint of default sal amount
alter table Faculty
add constraint df_salary
default 20000 for salary;

--create a dummy table
create table dummy(
dummycolumn int not null,
dummycolumn1 varchar(25)
);

--drop the unwanted column in a dummy table
alter table dummy
drop column dummycolumn1;

--drop the constraint of the column in dummy table.
alter table dummy
alter column dummycolumn int;

--drop one or more column in a table
alter table dummy
drop column dummycolumn,dummycolumn1;