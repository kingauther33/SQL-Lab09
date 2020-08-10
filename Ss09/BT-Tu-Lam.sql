USE master;
GO
ALTER DATABASE BtapTuLam09
SET SINGLE_USER
WITH ROLLBACK IMMEDIATE;
GO
DROP DATABASE BtapTuLam09

CREATE DATABASE BtapTuLam09
GO

USE Lab09
GO

CREATE TABLE Customers (
	CustomerID int IDENTITY(1,1) PRIMARY KEY,
	CustomerName varchar(50),
	Address varchar(100),
	Phone varchar(12)
)
GO

CREATE TABLE Books (
	BookCode int PRIMARY KEY,
	Category varchar(50),
	Author varchar(50),
	Publisher varchar(50),
	Title varchar(100),
	Price int,
	InStore int
)
GO

CREATE TABLE BookSold (
	BookSoldID int PRIMARY KEY,
	CustomerID int,
	BookCode int,
	Date datetime,
	Price int,
	Amount int,
	CONSTRAINT fk_customerID FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
	CONSTRAINT fk_bookcode FOREIGN KEY (BookCode) REFERENCES dbo.Books(BookCode)
)
GO

INSERT INTO dbo.Books
(
    BookCode,
    Category,
    Author,
    Publisher,
    Title,
    Price,
    InStore
)
VALUES
(
    01, -- BookCode - int
    'Van hoc', -- Category - varchar
    'Nguyen Nhat Anh', -- Author - varchar
    'NXB Tre', -- Publisher - varchar
    'Mat Biec', -- Title - varchar
    70000, -- Price - int
    50 -- InStore - int
),

(
    02, -- BookCode - int
    'Van hoc', -- Category - varchar
    'Nguyen Nhat Anh', -- Author - varchar
    'NXB Tre', -- Publisher - varchar
    'Lam Loan Voi Bau Troi', -- Title - varchar
    60000, -- Price - int
    35 -- InStore - int
),

(
    03, -- BookCode - int
    'Van hoc', -- Category - varchar
    'Nguyen Nhat Anh', -- Author - varchar
    'NXB Tre', -- Publisher - varchar
    'Bo Cau Khong Dua Thu', -- Title - varchar
    65000, -- Price - int
    45 -- InStore - int
),

(
    04, -- BookCode - int
    'Khoa hoc', -- Category - varchar
    'Kip Thorne', -- Author - varchar
    'W. W. Norton & Company', -- Publisher - varchar
    'The Science of Interstellar', -- Title - varchar
    60000, -- Price - int
    35 -- InStore - int
),

(
    05, -- BookCode - int
    'Khoa hoc', -- Category - varchar
    'Charles Darwin', -- Author - varchar
    'John Murray', -- Publisher - varchar
    'On The Origin of Species', -- Title - varchar
    100000, -- Price - int
    30 -- InStore - int
),

(
    06, -- BookCode - int
    'Van hoc', -- Category - varchar
    'Herper Lee', -- Author - varchar
    'HarperCollins', -- Publisher - varchar
    'To Kill a Mockingbird', -- Title - varchar
    110000, -- Price - int
    50 -- InStore - int
)

INSERT INTO dbo.Customers
(
    --CustomerID - column value is auto-generated
    CustomerName,
    Address,
    Phone
)
VALUES
(
    -- CustomerID - int
    'An', -- CustomerName - varchar
    '100 Hang Dau', -- Address - varchar
    '09344553123' -- Phone - varchar
),

(
    -- CustomerID - int
    'Toan', -- CustomerName - varchar
    '100 Hang Than', -- Address - varchar
    '09437475673' -- Phone - varchar
),

(
    -- CustomerID - int
    'Tung', -- CustomerName - varchar
    '100 Hang Mam', -- Address - varchar
    '09457575717' -- Phone - varchar
),

(
    -- CustomerID - int
    'Thu', -- CustomerName - varchar
    '100 Hang Khoai', -- Address - varchar
    '09273757172' -- Phone - varchar
),

(
    -- CustomerID - int
    'Thi', -- CustomerName - varchar
    '100 Hang Luoc', -- Address - varchar
    '09244234123' -- Phone - varchar
),

(
    -- CustomerID - int
    'Tu', -- CustomerName - varchar
    '100 Hang Manh', -- Address - varchar
    '09448674234' -- Phone - varchar
),

(
    -- CustomerID - int
    'Lam', -- CustomerName - varchar
    '100 Hang Giay', -- Address - varchar
    '02434453123' -- Phone - varchar
),

(
    -- CustomerID - int
    'Tu Anh', -- CustomerName - varchar
    '100 Hang Bong', -- Address - varchar
    '02433445561' -- Phone - varchar
),

(
    -- CustomerID - int
    'Thu Anh', -- CustomerName - varchar
    '100 Lo Ren', -- Address - varchar
    '09434345312' -- Phone - varchar
),

(
    -- CustomerID - int
    'Lan Anh', -- CustomerName - varchar
    '100 Hang Buom', -- Address - varchar
    '02432342123' -- Phone - varchar
)

SELECT * FROM dbo.Books b

INSERT INTO dbo.BookSold
(
    BookSoldID,
    CustomerID,
    BookCode,
    [Date],
    Price,
    Amount
)
VALUES
(
    10, -- BookSoldID - int
    10, -- CustomerID - int
    1, -- BookCode - int
    '2019-11-30 09:19:10', -- Date - datetime
    70000, -- Price - int
    1 -- Amount - int
),

(
    11, -- BookSoldID - int
    8, -- CustomerID - int
    5, -- BookCode - int
    '2020-04-04 09:19:10', -- Date - datetime
    100000, -- Price - int
    1 -- Amount - int
),

(
    12, -- BookSoldID - int
    1, -- CustomerID - int
    2, -- BookCode - int
    '2019-11-30 09:19:10', -- Date - datetime
    60000, -- Price - int
    2 -- Amount - int
),

(
    13, -- BookSoldID - int
    3, -- CustomerID - int
    3, -- BookCode - int
    '2019-11-30 09:19:10', -- Date - datetime
    65000, -- Price - int
    1 -- Amount - int
),

(
    14, -- BookSoldID - int
    2, -- CustomerID - int
    4, -- BookCode - int
    '2019-12-30 09:19:10', -- Date - datetime
    60000, -- Price - int
    2 -- Amount - int
),

(
    15, -- BookSoldID - int
    5, -- CustomerID - int
    6, -- BookCode - int
    '2020-05-04 09:19:10', -- Date - datetime
    110000, -- Price - int
    1 -- Amount - int
),

(
    16, -- BookSoldID - int
    7, -- CustomerID - int
    4, -- BookCode - int
    '2020-05-07 09:19:10', -- Date - datetime
    60000, -- Price - int
    2 -- Amount - int
),

(
    17, -- BookSoldID - int
    6, -- CustomerID - int
    1, -- BookCode - int
    '2020-05-04 09:19:10', -- Date - datetime
    70000, -- Price - int
    2 -- Amount - int
),

(
    18, -- BookSoldID - int
    4, -- CustomerID - int
    6, -- BookCode - int
    '2020-05-07 09:19:10', -- Date - datetime
    110000, -- Price - int
    1 -- Amount - int
),

(
    19, -- BookSoldID - int
    9, -- CustomerID - int
    1, -- BookCode - int
    '2020-05-04 09:19:10', -- Date - datetime
    70000, -- Price - int
    2 -- Amount - int
)

SELECT * FROM dbo.BookSold bs

DROP VIEW IF EXISTS BooksForSales
CREATE VIEW BooksForSales AS
	SELECT bs.BookCode, b.Title, bs.Price, bs.Amount  FROM dbo.BookSold bs
	INNER JOIN dbo.Books b ON bs.BookCode = b.BookCode

SELECT * FROM dbo.BooksForSales bfs

CREATE VIEW CustomersInStore AS
	SELECT c.CustomerID, c.CustomerName, c.Address, bs.Amount FROM dbo.Customers c
	INNER JOIN dbo.BookSold bs ON c.CustomerID = bs.CustomerID
	INNER JOIN dbo.Books b ON bs.BookCode = b.BookCode

SELECT * FROM dbo.CustomersInStore cis

CREATE VIEW CustomersTimes AS
	SELECT c.CustomerID, c.CustomerName, c.Address, b.Title FROM dbo.Customers c
	INNER JOIN dbo.BookSold bs ON c.CustomerID = bs.CustomerID
	INNER JOIN dbo.Books b ON bs.BookCode = b.BookCode
	WHERE bs.[Date] >=  '2020'

SELECT * FROM dbo.CustomersTimes ct

DROP VIEW IF EXISTS CustomerMoney
CREATE VIEW CustomerMoney AS
	SELECT c.CustomerID, c.CustomerName, c.Address, bs.Price*bs.Amount AS [TongTienMuaSach]
	FROM dbo.Customers c
	INNER JOIN dbo.BookSold bs ON c.CustomerID = bs.CustomerID
	INNER JOIN dbo.Books b ON bs.BookCode = b.BookCode

SELECT * FROM dbo.CustomerMoney cm