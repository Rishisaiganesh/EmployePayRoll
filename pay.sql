
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
select Salary from EmpPayroll where EmployeeName='Rishi';
select * from EmpPayroll where StartingDate between cast('2005-8-19' as date) and cast('2014-05-19' as date);