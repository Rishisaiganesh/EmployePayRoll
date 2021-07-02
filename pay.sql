
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

alter table EmpPayroll
add Gender varchar(255);
update EmpPayroll set Gender='Femail' where EmployeeName='rani' or EmployeeName = 'Madhu';
update EmpPayroll set Gender='Male'where EmployeeName='Rishi';

select sum(Salary) from EmpPayroll where Gender='Male'; 
select avg(Salary) from EmpPayroll;
select min(Salary) from EmpPayroll;
select max(Salary) from EmpPayroll;
select count(EmployeeId) from EmpPayroll;

alter table EmpPayroll
add PhoneNumber varchar(255)
update EmpPayroll set PhoneNumber='9090909090' where EmployeeName='Rishi';
alter table EmpPayroll
add Addresss varchar(255)
update EmpPayroll set Addresss='India' where EmployeeName='Rishi';
alter table EmpPayroll
add Department varchar(255)
update EmpPayroll set Department='Digital Marketing' where EmployeeName='Rishi';


alter table EmpPayroll
add Basicpay float;
alter table EmpPayroll
add Deductions float;
alter table EmpPayroll
add Taxable_Pay float;
alter table EmpPayroll
add Net_Pay float;
alter table EmpPayroll
add Income_Tax float;

insert into EmpPayroll(EmployeeName,Basicpay,StartingDate,Gender,PhoneNumber,Addresss,Deducation,Taxable_Pay,Income_Tax,Net_Pay)
values('Terisa', 50000, convert (date,'2010-8-19'), 'female', '2234567890', 'India',1000, 3000, 1000, 30000);
update EmpPayroll set Department = 'Marketing' where EmployeeId=3
select * from EmpPayroll;
