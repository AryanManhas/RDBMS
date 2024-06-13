use lab;
create table order22(
orderid int primary key,
productid int,
productname varchar(50),
quantity int,
price decimal(10,2),
totalprice decimal(10,2));

desc order22;

create table product22
( productid int primary key,
productname varchar(50));

desc product22;

create table orderdetails2(
orderid int,
productid int,
quantity int,
price decimal(10,2),
primary key (orderid),
foreign key (productid) references product22 (productid));

desc orderdetails2;

-- 3NF --

create table employeedepartments(
employeeid int primary key,
employeename varchar(50), 
departmentid int,
departmentname varchar(50));

create table employee1(
employeeid int primary key,
employeename varchar(50),
departmentid int,
foreign key(departmentid) references departments(departmentid));

create table departments(
departmentid int primary key,
department name varchar(50),






