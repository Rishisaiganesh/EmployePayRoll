
create database PayingrollService;
use PayingrollService;
create table EmpPayroll(
EmployeeId int identity(1,1) primary key,
EmployeeName varchar(255),
Salary float,
StartingDate Date
);
insert into EmpPayroll(EmployeeName, Salary, StartingDate)
values('Rishi', 250000, convert (date,'2009-10-19'));
select * from EmpPayroll;