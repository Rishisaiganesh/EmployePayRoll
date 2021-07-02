
create database PayingrollService;
use PayingrollService;
create table EmpPayroll(
EmployeeId int identity(1,1) primary key,
EmployeeName varchar(255),
Salary float,
StartingDate Date
);
