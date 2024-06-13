use lab;

create table result
( id int , name varchar(30) , marks int , primary key(id));

alter table result
rename column id  to roll_no ;

insert into result(roll_no , name , marks)
values
( '22' , 'Mayank' , '100'),
( '23' , 'Kuldeep' , '56'),
( '24', 'Rahul' , '78'),
( '56', 'Virat' , '89'),
( '63' , 'Starc' , '45'),
( '67' , 'Ishan' , '67'),
( '78' , 'Riyan' , '97');

select * from result
inner join result on student.S_name = result.roll_no;

select * from result order by marks asc;

select * from result order by marks desc;

select name, sum(marks) as tot_marks from result group by name;

select name, avg(marks) as avg_marks from result group by name;

select min(marks) as min_marks from result;

select max(marks) as max_marks from result;

select avg(marks) as avg_marks from result;

select count(*) as total_stu from result;

select sum(marks) as total_marks from result;

CREATE TABLE Users (
    UserID INT PRIMARY KEY,
    Username VARCHAR(50),
    Email VARCHAR(100),
    Age INT
);

INSERT INTO Users (UserID, Username, Email, Age)
VALUES (1, 'JohnDoe', 'john@example.com', 30),
       (2, 'JaneSmith', 'jane@example.com', 25),
       (3, 'MikeJohnson', 'mike@example.com', 35);
       
       
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    UserID INT,
    ProductName VARCHAR(100),
    OrderDate DATE,
    FOREIGN KEY (UserID) REFERENCES Users(UserID)
);

INSERT INTO Orders (OrderID, UserID, ProductName, OrderDate)
VALUES (101, 1, 'Laptop', '2024-04-20'),
       (102, 2, 'Smartphone', '2024-04-21'),
       (103, 1, 'Headphones', '2024-04-21');


SELECT Users.UserID, Users.Username, Orders.ProductName
FROM Users
INNER JOIN Orders ON Users.UserID = Orders.UserID;
SELECT Users.UserID, Users.Username, Orders.ProductName
FROM Users
LEFT JOIN Orders ON Users.UserID = Orders.UserID;
CREATE VIEW UOrders AS
SELECT Users.UserID, Users.Username, Orders.ProductName, Orders.OrderDate
FROM Users
INNER JOIN Orders ON Users.UserID = Orders.UserID;

CREATE OR REPLACE VIEW UOrders AS
SELECT Users.UserID, Users.Username, Orders.ProductName, Orders.OrderDate
FROM Users
INNER JOIN Orders ON Users.UserID = Orders.UserID;
DROP VIEW IF EXISTS UOrders;

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Department VARCHAR(50),
    Salary DECIMAL(10, 2)
);
INSERT INTO Employees (EmployeeID, FirstName, LastName, Department, Salary)
VALUES 
    (1, 'John', 'Doe', 'IT', 60000.00),
    (2, 'Jane', 'Smith', 'HR', 55000.00),
    (3, 'Mike', 'Johnson', 'Finance', 70000.00);
CREATE TABLE Projects (
    ProjectID INT PRIMARY KEY,
    ProjectName VARCHAR(100),
    Department VARCHAR(50),
    StartDate DATE,
    EndDate DATE
);
INSERT INTO Projects (ProjectID, ProjectName, Department, StartDate, EndDate)
VALUES
    (101, 'Website Redesign', 'IT', '2024-04-01', '2024-06-30'),
    (102, 'Employee Training Program', 'HR', '2024-05-01', '2024-08-31'),
    (103, 'Financial Analysis', 'Finance', '2024-03-15', '2024-09-30');
SELECT Employees.FirstName, Employees.LastName, Projects.ProjectName
FROM Employees
INNER JOIN Projects ON Employees.Department = Projects.Department;




SELECT *                                                                   
FROM Users
RIGHT OUTER JOIN Orders ON Users.UserID = Orders.UserID;

SELECT u1.Username AS User1, u2.Username AS User2
FROM Users u1
JOIN Users u2 ON u1.UserID <> u2.UserID;

SELECT *                    
FROM Users
CROSS JOIN Orders;

CREATE VIEW UserOrdersView AS
SELECT Users.UserID, Users.Username, Users.Email, Orders.OrderID, Orders.ProductName, Orders.OrderDate
FROM Users
INNER JOIN Orders ON Users.UserID = Orders.UserID;

CREATE OR REPLACE VIEW UserOrdersView AS
SELECT Users.UserID, Users.Username, Users.Email, Orders.OrderID, Orders.ProductName, Orders.OrderDate
FROM Users
LEFT JOIN Orders ON Users.UserID = Orders.UserID;

DROP VIEW IF EXISTS UserOrdersView;
  

SELECT *
FROM Employees
INNER JOIN Projects ON Employees.Department = Projects.Department;

SELECT *
FROM Employees
LEFT JOIN Projects ON Employees.Department = Projects.Department;

SELECT *                                                                 
FROM Employees
RIGHT JOIN Projects ON Employees.Department = Projects.Department;

SELECT e1.FirstName AS Employee1, e2.FirstName AS Employee2
FROM Employees e1
INNER JOIN Employees e2 ON e1.Department = e2.Department AND e1.EmployeeID != e2.EmployeeID;

SELECT Employees.EmployeeID, Employees.FirstName, Employees.LastName, Projects.ProjectName
FROM Employees
FULL  JOIN Projects ON Employees.Department = Projects.Department;

SELECT e1.FirstName, e1.LastName, e2.FirstName AS Supervisor_FirstName, e2.LastName AS Supervisor_LastName
FROM Employees e1
INNER JOIN Employees e2 ON e1.SupervisorID = e2.EmployeeID;

SELECT *
FROM Employees e1
INNER JOIN Employees e2 ON e1.Department = e2.Department AND e1.EmployeeID != e2.EmployeeID;

SELECT *
FROM Employees e1
INNER JOIN Projects p ON e1.EmployeeID = p.LeadEmployeeID;

SELECT Employees.EmployeeID, Employees.FirstName, Employees.LastName, Projects.ProjectName
FROM Employees
FULL JOIN Projects ON Employees.Department = Projects.Department;




SELECT *
FROM Employees
CROSS JOIN Projects;

SELECT e1.FirstName AS Employee1, e2.FirstName AS Employee2
FROM Employees e1
INNER JOIN Employees e2 ON e1.EmployeeID != e2.EmployeeID;

SELECT Users.UserID, Users.Username, Orders.ProductName
FROM Users
FULL JOIN Orders ON Users.UserID = Orders.UserID;

SELECT Employees.EmployeeID, Employees.FirstName, Employees.LastName, Projects.ProjectName
FROM Employees
FULL JOIN Projects ON Employees.Department = Projects.Department;









