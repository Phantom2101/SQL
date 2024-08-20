create database bank;
use bank;

-- Create the Branch table with constraints
CREATE TABLE Branch (
    branchname VARCHAR(50) PRIMARY KEY,
    branchcity VARCHAR(50) NOT NULL,
    asset FLOAT CHECK (asset > 0)
);

-- Create the Customer table with constraints
CREATE TABLE Customer (
    custname VARCHAR(50) PRIMARY KEY,
    custstreet VARCHAR(50),
    custcity VARCHAR(50) NOT NULL
);

-- Create the Account table with constraints
CREATE TABLE Account (
    accnum INT PRIMARY KEY,
    branchname VARCHAR(50),
    balance FLOAT CHECK (balance > 500),
    FOREIGN KEY (branchname) REFERENCES Branch(branchname)
);

-- Create the Loan table with constraints
CREATE TABLE Loan (
    loanno INT PRIMARY KEY,
    branchname VARCHAR(50),
    amount FLOAT CHECK (amount > 0),
    FOREIGN KEY (branchname) REFERENCES Branch(branchname)
);

-- Create the Borrower relation between Customer and Loan
CREATE TABLE Borrower (
    custname VARCHAR(50),
    loanno INT,
    PRIMARY KEY (custname, loanno),
    FOREIGN KEY (custname) REFERENCES Customer(custname),
    FOREIGN KEY (loanno) REFERENCES Loan(loanno)
);

-- Create the Depositor relation between Customer and Account
CREATE TABLE Depositor (
    custname VARCHAR(50),
    accnum INT,
    PRIMARY KEY (custname, accnum),
    FOREIGN KEY (custname) REFERENCES Customer(custname),
    FOREIGN KEY (accnum) REFERENCES Account(accnum)
);
-- Insert data into Branch table
INSERT INTO Branch (branchname, branchcity, asset)
VALUES
('Main', 'New York', 5000000),
('Central', 'Los Angeles', 3000000),
('Westside', 'San Francisco', 2000000),
('Downtown', 'Chicago', 2500000),
('Eastend', 'Boston', 1500000);

-- Insert data into Customer table
INSERT INTO Customer (custname, custstreet, custcity)
VALUES
('John Doe', '123 Elm St', 'New York'),
('Jane Smith', '456 Oak St', 'Los Angeles'),
('Emily Davis', '789 Pine St', 'San Francisco'),
('Michael Brown', '101 Maple St', 'Chicago'),
('Sarah Wilson', '202 Birch St', 'Boston'),
('David Lee', '303 Cedar St', 'New York'),
('Jessica Taylor', '404 Walnut St', 'Los Angeles'),
('Daniel Moore', '505 Spruce St', 'San Francisco'),
('Olivia Johnson', '606 Fir St', 'Chicago'),
('Sophia Martinez', '707 Ash St', 'Boston'),
('James White', '808 Palm St', 'New York'),
('Mia Harris', '909 Cypress St', 'Los Angeles'),
('Chris Martin', '111 Redwood St', 'San Francisco'),
('Grace Thompson', '222 Sequoia St', 'Chicago'),
('Liam Robinson', '333 Poplar St', 'Boston');

-- Insert data into Account table
INSERT INTO Account (accnum, branchname, balance)
VALUES
(1001, 'Main', 7500),
(1002, 'Central', 8200),
(1003, 'Westside', 6400),
(1004, 'Downtown', 9200),
(1005, 'Eastend', 5800),
(1006, 'Main', 10300),
(1007, 'Central', 6500),
(1008, 'Westside', 8700),
(1009, 'Downtown', 9900),
(1010, 'Eastend', 5600),
(1011, 'Main', 7300),
(1012, 'Central', 7800),
(1013, 'Westside', 8500),
(1014, 'Downtown', 8900),
(1015, 'Eastend', 6100);

-- Insert data into Loan table
INSERT INTO Loan (loanno, branchname, amount)
VALUES
(2001, 'Main', 100000),
(2002, 'Central', 150000),
(2003, 'Westside', 120000),
(2004, 'Downtown', 90000),
(2005, 'Eastend', 110000),
(2006, 'Main', 80000),
(2007, 'Central', 95000),
(2008, 'Westside', 130000),
(2009, 'Downtown', 70000),
(2010, 'Eastend', 85000);

-- Insert data into Borrower table
INSERT INTO Borrower (custname, loanno)
VALUES
('John Doe', 2001),
('Jane Smith', 2002),
('Emily Davis', 2003),
('Michael Brown', 2004),
('Sarah Wilson', 2005),
('David Lee', 2006),
('Jessica Taylor', 2007),
('Daniel Moore', 2008),
('Olivia Johnson', 2009),
('Sophia Martinez', 2010);

-- Insert data into Depositor table
INSERT INTO Depositor (custname, accnum)
VALUES
('John Doe', 1001),
('Jane Smith', 1002),
('Emily Davis', 1003),
('Michael Brown', 1004),
('Sarah Wilson', 1005),
('David Lee', 1006),
('Jessica Taylor', 1007),
('Daniel Moore', 1008),
('Olivia Johnson', 1009),
('Sophia Martinez', 1010),
('James White', 1011),
('Mia Harris', 1012),
('Chris Martin', 1013),
('Grace Thompson', 1014),
('Liam Robinson', 1015);

select * from Branch;
select * from Customer;
select * from Account;
select * from Loan;
select * from Borrower;
select * from Depositor;
