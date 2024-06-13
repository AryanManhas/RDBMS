-- Original table (not in 1NF)
CREATE TABLE Library (
    Book_ID INT PRIMARY KEY,
    Title VARCHAR(100),
    Authors VARCHAR(255),
    Publisher VARCHAR(100),
    Published_Date DATE,
    ISBN VARCHAR(20),
    Copies INT
);

-- Transforming to 1NF
CREATE TABLE Books (
    Book_ID INT PRIMARY KEY,
    Title VARCHAR(100),
    Publisher VARCHAR(100),
    Published_Date DATE,
    ISBN VARCHAR(20),
    Copies INT
);

CREATE TABLE Authors (
    Book_ID INT,
    Author_Name VARCHAR(100),
    FOREIGN KEY (Book_ID) REFERENCES Books(Book_ID)
);

-- Transforming to 2NF
-- No partial dependencies present, as each non-prime attribute is fully functionally dependent on the primary key.

-- 2NF Table for Books
CREATE TABLE Books_2NF (
    Book_ID INT PRIMARY KEY,
    Title VARCHAR(100),
    Publisher_ID INT,
    Published_Date DATE,
    ISBN VARCHAR(20),
    Copies INT,
    FOREIGN KEY (Publisher_ID) REFERENCES Publishers_2NF(Publisher_ID)
);

-- 2NF Table for Publishers
CREATE TABLE Publishers_2NF (
    Publisher_ID INT PRIMARY KEY AUTO_INCREMENT,
    Publisher_Name VARCHAR(100),
    Publisher_Details TEXT
);


-- Transforming to 3NF
CREATE TABLE Publishers (
    Publisher_ID INT PRIMARY KEY AUTO_INCREMENT,
    Publisher_Name VARCHAR(100)
);

ALTER TABLE Books
ADD COLUMN Publisher_ID INT,
ADD FOREIGN KEY (Publisher_ID) REFERENCES Publishers(Publisher_ID);

-- Now the Books table is in 3NF, as Publisher is non-transitively
-- dependent on the primary key.

CREATE TABLE Published_Books (
    Book_ID INT PRIMARY KEY,
    Publisher_ID INT,
    FOREIGN KEY (Book_ID) REFERENCES Books(Book_ID),
    FOREIGN KEY (Publisher_ID) REFERENCES Publishers(Publisher_ID)
);

-- Now the data regarding the association between books and publishers is separated into its own table, removing transitive dependency.

-- Create a table for accounts
CREATE TABLE Accounts (
    Account_ID INT PRIMARY KEY,
    Balance DECIMAL(10, 2)
);

-- Insert sample data into Accounts table
INSERT INTO Accounts (Account_ID, Balance)
VALUES
    (1, 1000.00),
    (2, 2000.00);

-- Start a transaction
START TRANSACTION;

-- Deduct $100 from Account 1
UPDATE Accounts SET Balance = Balance - 100 WHERE Account_ID = 1;

-- Add $100 to Account 2
UPDATE Accounts SET Balance = Balance + 100 WHERE Account_ID = 2;

-- Commit the transaction if all updates succeed
COMMIT;

select * from Accounts;

