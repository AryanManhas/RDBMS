create database assignment;
use assignment;
CREATE TABLE ORDERS (
    ORDER_NUM VARCHAR(6) PRIMARY KEY,
    ORDER_DATE DATE,
    CUST CHAR(4),
    REP CHAR(3),
    MFR CHAR(3),
    PRODUCT VARCHAR(10),
    QTY INT, 
    AMOUNT DECIMAL(10, 2)
);
-- Create the PRODUCTS table
CREATE TABLE PRODUCTS (
    MFR_ID CHAR(3),
    PRODUCT_ID VARCHAR(10),
    DESCRIPTION VARCHAR(20),
    PRICE DECIMAL(10, 2),
    QTY_ON_HAND INT,
    PRIMARY KEY(MFR_ID, PRODUCT_ID)
);

-- Create the CUSTOMERS table
CREATE TABLE CUSTOMERS (
    CUST_NUM CHAR(4) PRIMARY KEY,
    COMPANY VARCHAR(20),
    CUST_REP CHAR(3),
    CREDIT_LIMIT DECIMAL(10, 2)
);

-- Create the OFFICES table
CREATE TABLE OFFICES (
    OFFICE CHAR(2) PRIMARY KEY,
    CITY VARCHAR(20),
    REGION VARCHAR(10),
    MGR CHAR(3),
    TARGET DECIMAL(10, 2),
    SALES DECIMAL(10, 2)
);

-- Create the SalesReps table
CREATE TABLE SalesReps (
    emp_num CHAR(3) PRIMARY KEY,
    name VARCHAR(20),
    age INT,
    rep_office CHAR(2),
    title VARCHAR(10),
    manager CHAR(3), 
    hire_date DATE,
    quota DECIMAL(10, 2),
    sales DECIMAL(10, 2)
);


-- Insert data into CUSTOMERS table
INSERT INTO CUSTOMERS VALUES
    ('2101', 'Jones Mfg.', '106', 65000),
    ('2102', 'First Corp.', '101', 65000),
    ('2103', 'Acme Mfg.', '105', 50000),
    ('2105', 'AAA Investments', '101', 45000),
    ('2106', 'Fred Lewis Corp.', '102', 65000),
    ('2107', 'Ace International', '110', 35000),
    ('2108', 'Holm & Landis', '109', 55000),
    ('2109', 'Chen Associates', '103', 25000),
    ('2111', 'JCP Inc.', '103', 50000),
    ('2112', 'Zetacorp', '108', 50000),
    ('2113', 'Ian & Schmidt', '104', 20000),
    ('2114', 'Orion Corp.', '102', 20000),
    ('2115', 'Smithson Corp.', '101', 20000),
    ('2117', 'J.P. Sinclair', '106', 35000),
    ('2118', 'Miswest Sytems', '108', 60000),
    ('2119', 'Solomon Inc.', '109', 25000),
    ('2120', 'Rico Enterprises', '102', 50000),
    ('2121', 'QMA Assoc.', '103', 54000),
    ('2122', 'Three-Way Lines', '105', 30000),
    ('2123', 'Carter & sons', '102', 40000),
    ('2124', 'Peter Brothers', '107', 40000);

-- Insert data into OFFICES table
INSERT INTO OFFICES VALUES
    ('11', 'New York', 'Eastern', '106', 575000, 692637),
    ('12', 'Chicago', 'Eastern', '104', 800000, 735042),
    ('13', 'Atlanta', 'Eastern', '105', 350000, 367911),
    ('21', 'Los Angeles', 'Western', '108', 725000, 835915),
    ('22', 'Denver', 'Western', '108', 300000, 186042);

-- Insert data into ORDERS table
INSERT INTO ORDERS VALUES
    ('112961', '1999-12-17', '2117', '106', 'REI', '2A44L', 7, 31500),
    ('112963', '1999-12-17', '2103', '105', 'ACI', '41004', 28, 3276),
    ('112968', '1999-10-12', '2102', '101', 'ACI', '41004', 34, 3978),
    ('112975', '1999-10-12', '2111', '103', 'REI', '2A44G', 6, 2100),
    ('112979', '1999-10-12', '2114', '102', 'ACI', '4100Z', 6, 15000),
    ('112983', '1999-12-27', '2103', '105', 'ACI', '41004', 6, 702),
    ('112987', '1999-12-31', '2103', '105', 'ACI', '4100Y', 11, 27500),
    ('112989', '2000-01-03', '2101', '106', 'FEA', '114', 6, 1458),
    ('112992', '1999-11-04', '2118', '108', 'ACI', '41002', 10, 760),
    ('112993', '1999-01-04', '2106', '102', 'REI', '2A45C', 24, 1896),
    ('112997', '2000-01-08', '2124', '107', 'BIC', '41003', 1, 652),
    ('113003', '2000-01-25', '2108', '109', 'IMM', '779C', 3, 5625),
    ('113007', '2000-01-08', '2112', '108', 'IMM', '773C', 3, 2925),
    ('113012', '2000-01-11', '2111', '105', 'ACI', '41003', 35, 3745),
    ('113013', '2000-01-14', '2118', '108', 'BIC', '41003', 1, 652),
    ('113024', '2000-01-20', '2114', '108', 'QSA', 'XK47', 20, 7100),
    ('113027', '2000-01-22', '2103', '105', 'ACI', '41002', 54, 4104),
    ('113034', '2000-01-29', '2107', '110', 'REI', '2A45C', 8, 632),
    ('113036', '2000-01-30', '2107', '110', 'ACI', '4100Z', 9, 22500),
    ('113042', '2000-02-02', '2113', '101', 'REI', '2A44R', 5, 22500),
    ('113045', '2000-02-02', '2112', '108', 'REI', '2A44R', 10, 45000),
    ('113048', '2000-02-10', '2120', '102', 'IMM', '779C', 2, 3750),
    ('113049', '2000-02-10', '2118', '108', 'QSA', 'XK47', 2, 776),
    ('113051', '2000-02-10', '2118', '108', 'QSA', 'XK47', 4, 1420),
    ('113055', '2000-02-15', '2108', '101', 'ACI', '4100X', 6, 150),
    ('113057', '2000-02-18', '2111', '103', 'ACI', '4100X', 24, 600),
    ('113058', '2000-02-23', '2108', '109', 'FEA', '112', 10, 1480),
    ('113062', '2000-02-24', '2124', '107', 'FEA', '114', 10, 2430),
    ('113065', '2000-02-27', '2106', '102', 'QSA', 'XK47', 6, 2130),
    ('113069', '2000-03-02', '2109', '107', 'IMM', '775C', 22, 31350);

INSERT INTO PRODUCTS VALUES
    ('ACI', '41002', 'Size 2 Widget', 76, 167),
    ('ACI', '41003', 'Size 3 Widget', 107, 207),
    ('ACI', '41004', 'Size 4 Widget', 117, 139),
    ('ACI', '4100X', 'Widget Adjuster', 25, 37),
    ('ACI', '4100Y', 'Widget Remover', 2750, 25),
    ('ACI', '4100Z', 'Size 1 Widget', 55, 277),
    ('ACI', '4101', 'Widget Installer', 2500, 28),
    ('BIC', '41003', 'Handle', 652, 3),
    ('BIC', '41089', 'Retainer', 225, 78),
    ('BIC', '41675', 'Plate', 180, 0),
    ('FEA', '112', 'Housing', 148, 115),
    ('FEA', '114', 'Motor Mount', 243, 5),
    ('IMM', '773C', '300-lb Brace', 975, 28),
    ('IMM', '775C', '500 -lb Brace', 1425, 5),
    ('IMM', '779C', '900 -lb Brace', 1875, 9),
    ('IMM', '887H', 'Brace Holder', 54, 223),
    ('IMM', '887P', 'Brace Pin', 250, 24),
    ('IMM', '887X', 'Brace Retainer', 475, 32),
    ('QSA', 'XK47', 'Reducer', 355, 15),
    ('QSA', 'XK48', 'Reducer', 134, 203),
    ('QSA', 'XK48A', 'Reducer', 177, 37),
    ('REI', '2A44G', 'Hinge Pin', 350, 14),
    ('REI', '2A44L', 'Left Hinge', 4500, 12),
    ('REI', '2A44R', 'Right Hinge', 4500, 12),
    ('REI', '2A45C', 'Ratchet Link', 79, 210);

-- Insert data into SalesReps table
INSERT INTO SalesReps VALUES
    ('101', 'Dan Roberts', 45, '12', 'Sales Rep', '104', '1996-10-20', 300000, 305673),
    ('102', 'Sue Smith', 48, '21', 'Sales Rep', '108', '1996-12-10', 350000, 474050),
    ('103', 'Paul Cruz', 29, '12', 'Sales Rep', '104', '1997-03-01', 275000, 286775),
    ('104', 'Bob Smith', 33, '12', 'Sales Mgr', '106', '1997-05-19', 200000, 142594),
    ('105', 'Bill Adams', 37, '13', 'Sales Rep', '104', '1996-02-12', 350000, 367911),
    ('106', 'Sam Clark', 52, '11', 'Vp Sales', NULL, '1998-06-14', 275000, 299912),
    ('107', 'Nancy Angelli', 49, '22', 'Sales Rep', '108', '1998-11-14', 300000, 186042),
    ('108', 'Larry Fitch', 62, '21', 'Sales Mgr', '106', '1999-10-12', 350000, 361865),
    ('109', 'Mary Jones', 31, '11', 'Sales Rep', '106', '1999-10-12', 300000, 392725),
    ('110', 'Tom Snyder', 41, NULL, 'Sales Rep', '101', '2000-01-13', NULL, 75985);
select * from salesreps;

-- 1.    Show the name, sales, and quota of Bill Adams
SELECT name, sales, quota 
FROM SalesReps 
WHERE name = 'Bill Adams';


-- 2.    List the company names and the product description of all the products each has ordered. Arrange descending by company.
SELECT c.COMPANY, p.DESCRIPTION
FROM CUSTOMERS c
JOIN ORDERS o ON c.CUST_NUM = o.CUST
JOIN PRODUCTS p ON o.PRODUCT = p.PRODUCT_ID
ORDER BY c.COMPANY DESC;

-- 3.    Show the total value of the inventory on hand for each product. Arrange in descending order by total value
SELECT PRODUCT_ID, SUM(PRICE * QTY_ON_HAND) AS Total_Value
FROM PRODUCTS
GROUP BY PRODUCT_ID
ORDER BY Total_Value DESC;

-- 4.    How many customers are there?
SELECT COUNT(*) AS Total_Customers
FROM CUSTOMERS;

-- 5.    List the offices with a target over $600,000.
SELECT *
FROM OFFICES
WHERE TARGET > 600000;

-- 6.    What is the average of all the sales people?
SELECT AVG(sales) AS Average_Sales
FROM SalesReps;

-- 7.    List orders over $25,000, including the name of the salesperson who took the order and the name of the customer who placed it.
SELECT o.ORDER_NUM, o.AMOUNT, s.name AS Salesperson, c.COMPANY AS Customer
FROM ORDERS o
JOIN SalesReps s ON o.REP = s.emp_num
JOIN CUSTOMERS c ON o.CUST = c.CUST_NUM
WHERE o.AMOUNT > 25000;

-- 8.    How many sales offices have salespeople who are over quota?
SELECT COUNT(DISTINCT rep_office) AS Offices_Over_Quota
FROM SalesReps
WHERE quota < sales;

-- 9.    Show the name, sales and office for each salesperson. Order by increasing sales.
SELECT name, sales, rep_office AS Office
FROM SalesReps
ORDER BY sales;

-- 10. List all the companies who have ordered any size widget, and the widget they ordered
SELECT DISTINCT c.COMPANY, p.DESCRIPTION AS Widget_Ordered
FROM CUSTOMERS c
JOIN ORDERS o ON c.CUST_NUM = o.CUST
JOIN PRODUCTS p ON o.PRODUCT = p.PRODUCT_ID
WHERE p.DESCRIPTION LIKE '%Widget%';

-- 11. List the city, region and amount that sales are over/under target for each office.
SELECT CITY, REGION, SALES - TARGET AS Difference
FROM OFFICES;

-- 12. What is the total number of each part that has been ordered?
SELECT PRODUCT, SUM(QTY) AS Total_Quantity_Ordered
FROM ORDERS
GROUP BY PRODUCT;
-- 13. List the salespeople, the city they work in, and the manager of the office in which they work
SELECT s.name AS Salesperson, o.CITY, s.manager AS Manager
FROM SalesReps s
JOIN OFFICES o ON s.rep_office = o.OFFICE;
-- 14. List all orders showing order number, amount, customer name and the customer’s credit limit where the order was greater than $20,000.
SELECT o.ORDER_NUM, o.AMOUNT, c.COMPANY AS Customer_Name, c.CREDIT_LIMIT
FROM ORDERS o
JOIN CUSTOMERS c ON o.CUST = c.CUST_NUM
WHERE o.AMOUNT > 20000;
-- 15. Are there any customers who are over their credit limit? If so, list the customer, the total amount the customer has on order, and the credit limit.
SELECT c.COMPANY AS Customer, SUM(o.AMOUNT) AS Total_Order_Amount, c.CREDIT_LIMIT
FROM CUSTOMERS c
JOIN ORDERS o ON c.CUST_NUM = o.CUST
GROUP BY c.COMPANY, c.CREDIT_LIMIT
HAVING SUM(o.AMOUNT) > CAST(c.CREDIT_LIMIT AS DECIMAL(10,2));
-- 16. List the salespeople with a higher quota than their manager.
SELECT s.name AS Salesperson
FROM SalesReps s
JOIN SalesReps m ON s.manager = m.emp_num
WHERE s.quota > m.quota;

-- 17. List salespeople who work in different offices than their managers, show the name and office where each work.
SELECT s.name AS Salesperson, s.rep_office AS Salesperson_Office, m.rep_office AS Manager_Office
FROM SalesReps s
JOIN SalesReps m ON s.manager = m.emp_num
WHERE s.rep_office != m.rep_office;

-- 18. What is the total order size for each salesperson? Order by increasing sales
SELECT s.name AS Salesperson, SUM(o.QTY) AS Total_Order_Size
FROM SalesReps s
JOIN ORDERS o ON s.emp_num = o.REP
GROUP BY s.name
ORDER BY Total_Order_Size;

-- 19. List all the customers whose sales representative is a manager. Arrange increasing by company.
SELECT c.COMPANY AS Customer
FROM CUSTOMERS c
JOIN SalesReps s ON c.CUST_REP = s.emp_num
WHERE s.title = 'Sales Mgr'
ORDER BY c.COMPANY;

-- 20. What is the total order size for each salesperson whose orders total more than $30,000?
SELECT s.name AS Salesperson, SUM(o.QTY) AS Total_Order_Size
FROM SalesReps s
JOIN ORDERS o ON s.emp_num = o.REP
GROUP BY s.name
HAVING SUM(o.AMOUNT) > 30000;

-- 21. List the offices where the sales target for the office exceeds the sum of the individual sales people’s quotas.
SELECT o.OFFICE, o.TARGET, SUM(s.quota) AS Total_Quota
FROM OFFICES o
JOIN SalesReps s ON o.OFFICE = s.rep_office
GROUP BY o.OFFICE, o.TARGET
HAVING o.TARGET > SUM(s.quota);

-- 22. List the salespeople whose quotas are equal to or higher than the target of the Atlanta sales office.
SELECT s.name AS Salesperson, s.quota, o.TARGET
FROM SalesReps s
JOIN OFFICES o ON s.rep_office = o.OFFICE
WHERE o.CITY = 'Atlanta' AND s.quota >= o.TARGET;

-- 23. List the salespeople who do not work in offices managed by Larry Fitch(employee 108).
SELECT s.name AS Salesperson, o.MGR AS Office_Manager
FROM SalesReps s
JOIN OFFICES o ON s.rep_office = o.OFFICE
WHERE o.MGR != '108';

-- 24. List the products for which an order of $25,000 or more has been received.
SELECT DISTINCT p.DESCRIPTION AS Product_Description
FROM PRODUCTS p
JOIN ORDERS o ON p.PRODUCT_ID = o.PRODUCT
WHERE o.AMOUNT >= 25000;

-- 25. List the companies who placed an order with a sales rep that is not the sales rep that usually calls on them. Include the names of the salesreps, indicating by attribute name who took the order.
SELECT DISTINCT c.COMPANY AS Company, 
                s1.name AS Current_SalesRep,
                s2.name AS SalesRep_Who_Took_Order
FROM CUSTOMERS c
JOIN ORDERS o ON c.CUST_NUM = o.CUST
JOIN SalesReps s1 ON c.CUST_REP = s1.emp_num
JOIN SalesReps s2 ON o.REP = s2.emp_num
WHERE c.CUST_REP != o.REP;
