Create database GL;
use GL;
create table employee(
Id int primary key,
Name varchar(50) not null,
Email_Id varchar(50) not null,
Phone_Number varchar(50)
);

desc employee;