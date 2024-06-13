CREATE TABLE Employees1 (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Department VARCHAR(50),
    Salary DECIMAL(10, 2)
);

INSERT INTO Employees1 (EmployeeID, FirstName, LastName, Department, Salary)
VALUES (1, 'John', 'Doe', 'HR', 50000.00),
       (2, 'Jane', 'Smith', 'IT', 60000.00),
       (3, 'Mike', 'Johnson', 'Finance', 70000.00);
CREATE TABLE Products1 (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Price DECIMAL(10, 2),
    StockQuantity INT
);

INSERT INTO Products1 (ProductID, ProductName, Price, StockQuantity)
VALUES (1, 'Laptop', 999.99, 50),
       (2, 'Smartphone', 699.99, 100),
       (3, 'Headphones', 99.99, 200);


CREATE TABLE Customers1 (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    Age INT
);

INSERT INTO Customers1 (CustomerID, FirstName, LastName, Email, Age)
VALUES (1, 'Alice', 'Johnson', 'alice@example.com', 30),
       (2, 'Bob', 'Smith', 'bob@example.com', 25),
       (3, 'Charlie', 'Doe', 'charlie@example.com', 35);
       
       SELECT *
FROM Employees1
INNER JOIN Products1 ON Employees1.Department = Products1.ProductName;
SELECT *
FROM Employees1
INNER JOIN Products1 ON Employees1.Department = Products1.ProductName;
SELECT *
FROM Employees1
INNER JOIN Products1 ON Employees1.Department = Products1.ProductName;

       SELECT *
FROM Employees1
LEFT OUTER JOIN Customers1 ON Employees1.LastName = Customers1.LastName;

SELECT *
FROM Products1
RIGHT OUTER JOIN Customers1 ON Products1.ProductName = Customers1.FirstName;
SELECT *
FROM Employees1
FULL JOIN Products1 ON Employees1.Department = Products1.ProductName;

SELECT *
FROM Products1
RIGHT OUTER JOIN Customers1 ON Products1.ProductName = Customers1.FirstName;

SELECT *
FROM Customers1
RIGHT OUTER JOIN Products1 ON Customers1.FirstName = Products1.ProductName;


SELECT e1.FirstName AS Employee1_FirstName, e1.LastName AS Employee1_LastName,
       e2.FirstName AS Employee2_FirstName, e2.LastName AS Employee2_LastName
FROM Employees1 e1
INNER JOIN Employees1 e2 ON e1.EmployeeID <> e2.EmployeeID;

SELECT *
FROM Employees1
CROSS JOIN Customers1;

SELECT *
FROM Customers1
RIGHT OUTER JOIN Products1 ON Customers1.FirstName = Products1.ProductName;

SELECT *
FROM Employees1
INNER JOIN Products1 ON Employees1.Department = Products1.ProductName;

SELECT *
FROM Employees1
INNER JOIN Products1 ON Employees1.Department = 'IT';


      