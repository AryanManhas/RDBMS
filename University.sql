create database university;
use university;
create table department(
dept_name varchar(20) not null,
building varchar(10),
budget int not null,
primary key(dept_name)
);

create table student(
id int not null,
name varchar(20),
dept_name varchar(20) not null,
tot_cred int not null,
primary key(id),
foreign key(dept_name) references department(dept_name)
);

create table instructor(
id int not null,
name varchar(20),
dept_name varchar(20) not null,
salary int not null,
primary key(id),
foreign key(dept_name) references department(dept_name)
);

create table advisor(
s_id int not null,
i_id int not null,
primary key(s_id),
foreign key(s_id) references student(id),
foreign key(i_id) references instructor(id)
);

create table course(
course_id int not null,
title varchar(77),
dept_name varchar(44),
credits int not null,
primary key(course_id),
foreign key(dept_name) references department(dept_name)
);

create table prereq(
course_id int not null,
prereq_id int not null,
primary key (course_id,prereq_id),
foreign key(course_id) references course(course_id)
);

create table classroom(
building varchar(20) not null,
room_number int not null,
capacity int not null,
primary key(building,room_number)
);

create table time_slot(
time_slot_id int not null,
day varchar(20),
start_time char(5),
end_time char(5),
primary key(time_slot_id,day,start_time)
);

create table section(
course_id int not null,
sec_id int not null,
semester int not null,
year int not null,
building varchar(20) not null,
room_number int not null,
time_slot_id int not null,
day varchar(20),
start_time char(5),
primary key(course_id,sec_id,semester,year),
foreign key(building,room_number)references classroom(building,room_number),
foreign key(time_slot_id,day,start_time)references time_slot(time_slot_id,day,start_time),
foreign key(course_id)references course(course_id)
);

create table takes(
id int not null,
course_id int not null,
sec_id int not null,
semester int not null,
year int not null,
grade int not null,
primary key(id,course_id,sec_id,semester,year),
foreign key(id) references student(id)
);

create table teaches(
id int not null,
course_id int not null,
sec_id int not null,
semester int not null,
year int not null,
primary key(id,course_id,sec_id,semester,year),
foreign key(id) references instructor(id)
);

CREATE VIEW EmployeeProjects AS
SELECT Employees.EmployeeID, Employees.FirstName, Employees.LastName, Projects.ProjectName
FROM Employees
INNER JOIN Projects ON Employees.Department = Projects.Department;

CREATE OR REPLACE VIEW EmployeeProjects AS
SELECT Employees.EmployeeID, Employees.FirstName, Employees.LastName, Projects.ProjectName
FROM Employees
INNER JOIN Projects ON Employees.Department = Projects.Department
WHERE Projects.StartDate <= CURRENT_DATE AND Projects.EndDate >= CURRENT_DATE;

DROP VIEW IF EXISTS EmployeeProjects;

SELECT Orders.OrderID, Users.Username, Orders.ProductName, Orders.OrderDate
FROM Orders
JOIN Users ON Orders.UserID = Users.UserID;

INSERT INTO Users (UserID, Username, Email, Age)
VALUES (4, 'EmilyBrown', 'emily@example.com', 28);

INSERT INTO Orders (OrderID, UserID, ProductName, OrderDate)
VALUES (104, 4, 'Tablet', '2024-04-21');

UPDATE Users
SET Age = 31
WHERE Username = 'JohnDoe';

UPDATE Users
SET Age = 29                 
WHERE UserID = 4;


SELECT Username
FROM Users                                                
WHERE UserID IN (SELECT UserID FROM Orders);


UPDATE Users
SET Age = 31
WHERE UserID = (
    SELECT UserID
    FROM Orders
    WHERE ProductName = 'Laptop'
    
);



DELETE FROM Orders                                
WHERE UserID IN (
    SELECT UserID
    FROM Users
    WHERE Age = 30
);

INSERT INTO Orders (UserID, ProductName, OrderDate)
VALUES (
    (SELECT UserID FROM Users WHERE Username = 'JohnDoe'),
    'Tablet',
    '2024-04-21'
);
SELECT FirstName, LastName
FROM Employees
WHERE EmployeeID IN (
    SELECT EmployeeID
    FROM Projects
    INNER JOIN Employees ON Projects.Department = Employees.Department
    WHERE ProjectName = 'Website Redesign'
    
    
);

INSERT INTO Projects (ProjectName, Department, StartDate, EndDate)
VALUES ('Mobile App Development', 'IT', '2024-06-01', '2024-12-31');

UPDATE Employees
SET Salary = Salary * 1.10
WHERE EmployeeID IN (
    SELECT EmployeeID
    FROM Projects
    INNER JOIN Employees ON Projects.Department = Employees.Department
    WHERE ProjectName = 'Financial Analysis'
);
UPDATE Employees
SET Salary = Salary * 1.10
WHERE Department = 'IT'
AND EmployeeID IN (
    SELECT DISTINCT EmployeeID
    FROM Projects
    INNER JOIN Employee_Projects ON Projects.ProjectID = Employee_Projects.ProjectID
    WHERE Department = 'IT'
);


UPDATE Employees
SET Salary = Salary * 1.10
WHERE Department = 'IT'
AND EmployeeID IN (
    SELECT DISTINCT EmployeeID
    FROM Employee_Projects
    INNER JOIN Projects ON Employee_Projects.ProjectID = Projects.ProjectID
    WHERE Department = 'IT'
);

UPDATE Employees
SET Salary = Salary * 1.05 
WHERE EmployeeID IN (
    SELECT DISTINCT EmployeeID
    FROM Projects
    WHERE StartDate > '2024-04-01'
);
UPDATE Employees
SET Salary = Salary * 1.10
WHERE Department = 'IT'
AND EmployeeID IN (
    SELECT DISTINCT EmployeeID
    FROM Projects
    INNER JOIN Employee_Projects ON Projects.ProjectID = Employee_Projects.ProjectID
    WHERE Department = 'IT'
);

DELETE FROM Employee_Projects
WHERE EmployeeID NOT IN (
    SELECT DISTINCT EmployeeID
    FROM Projects
    INNER JOIN Employee_Projects ON Projects.ProjectID = Employee_Projects.ProjectID
);

CREATE TABLE Suppliers (
    SupplierID INT PRIMARY KEY,
    SupplierName VARCHAR(100),
    ContactName VARCHAR(100),
    City VARCHAR(100)
);

INSERT INTO Suppliers (SupplierID, SupplierName, ContactName, City)
VALUES 
    (1, 'Supplier1', 'John Smith', 'New York'),
    (2, 'Supplier2', 'Jane Doe', 'Los Angeles'),
    (3, 'Supplier3', 'Mike Johnson', 'Chicago');
CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    SupplierID INT,
    Price DECIMAL(10, 2),
    FOREIGN KEY (SupplierID) REFERENCES Suppliers(SupplierID)
);

INSERT INTO Products (ProductID, ProductName, SupplierID, Price)
VALUES 
    (101, 'Product1', 1, 50.00),
    (102, 'Product2', 2, 75.00),
    (103, 'Product3', 3, 100.00);

UPDATE Products
SET Price = Price * 1.05
WHERE SupplierID = (SELECT SupplierID FROM Suppliers WHERE SupplierName = 'Supplier2');


INSERT INTO Products (ProductName, SupplierID, Price)
VALUES (
    'Product4',
    (SELECT SupplierID FROM Suppliers WHERE SupplierName = 'Supplier1'),
    60.00
);

DELETE FROM Products
WHERE SupplierID = (SELECT SupplierID FROM Suppliers WHERE SupplierName = 'Supplier3');

INSERT INTO Products (ProductID, ProductName, SupplierID, Price)
SELECT 104, 'Product4', SupplierID, 80.00
FROM Suppliers
WHERE City = 'New York'; -- For example, you want to choose a supplier from New York

INSERT INTO UserOrders (OrderID, Username, Email, Age, ProductName, OrderDate)
SELECT o.OrderID, u.Username, u.Email, u.Age, o.ProductName, o.OrderDate
FROM Orders o
JOIN Users u ON o.UserID = u.UserID;

INSERT INTO Orders (UserID, ProductName, OrderDate)
SELECT UserID, 'Tablet', CURRENT_DATE
FROM Users
WHERE Age > 25;

