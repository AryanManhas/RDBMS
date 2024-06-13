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

select * from Accounts;

-- Start a transaction
START TRANSACTION;

-- Deduct $100 from Account 1
UPDATE Accounts SET Balance = Balance - 100 WHERE Account_ID = 1;

-- Add $100 to Account 2
UPDATE Accounts SET Balance = Balance + 100 WHERE Account_ID = 2;

-- Commit the transaction if all updates succeed
COMMIT;

select * from Accounts;

