CREATE DATABASE IF NOT EXISTS CIS395_LibraryDatabase;
use CIS395_LibraryDatabase;

-- Create Tables 
CREATE TABLE Books (
    BookID INT AUTO_INCREMENT PRIMARY KEY,
    Title VARCHAR(200) NOT NULL,
    Author VARCHAR(150),
    ISBN VARCHAR(20) UNIQUE,
    Publisher VARCHAR(45),
    YearPublished YEAR, 
    Genre VARCHAR(45)
);

CREATE TABLE MEMBERS (
MemberID INT auto_increment PRIMARY KEY,
FirstName VARCHAR(45),
LastName VARCHAR(45),
Address VARCHAR(45),
PhoneNumber VARCHAR(45),
Email VARCHAR(45)
);

CREATE TABLE PUBLISHERS (
PublisherID INT auto_increment PRIMARY KEY, 
PublisherName VARCHAR(45),
Address VARCHAR(45),
Phone VARCHAR(45)
);

CREATE TABLE LOANS (
LoanID INT auto_increment PRIMARY KEY,
LoanDate DATE,
ReturnDate DATE
);

-- Insert Sample Data
INSERT INTO BOOKS (BookID, Title, Author, ISBN, Publisher, YearPublished, Genre) VALUES 
(1, 'The Great World', 'Nadir Kushbo', '1234567891011', 'Penguin Books', 2010, 'Fiction'),
(2, 'Ancient History', 'Mizan kabul', '11234567891012', 'Kureghor', 2009, 'History');

INSERT INTO MEMBERS (MemberID, FirstName, LastName, Address, PhoneNumber, Email) VALUES 
(11, 'Karim', 'Rahman', 'nadir hatt comilla', '3476844967', 'karim06@gmail.com'),
(12, 'Rahim', 'Chowdhury', 'Sunamganj Sylhet', '9176584875', 'Rahim36@gmail.com');

INSERT INTO PUBLISHERS ( PublisherID, PublisherName, Address, Phone) VALUES 
(21, 'Penguin books', 'kormitula', '1254687964'),
(22, 'Kureghot', 'Boddar Hatt', '6549871234');

INSERT INTO LOANS ( LoanID, LoanDate, ReturnDate) VALUES 
(31, '11/12/2024', '12/12/2024'),
(32, '10/12/2024', '25/12/2024');

-- Update Example
UPDATE Books SET Genre = 'Historical Fiction' WHERE BookID = 1;

-- Delete Example
DELETE FROM LOANS WHERE LoanID = 32;


-- Verify Books
SELECT * FROM Books;

-- Verify Members
SELECT * FROM MEMBERS;

-- Verify Publishers
SELECT * FROM PUBLISHERS;

-- Verify Loans
SELECT * FROM LOANS;


