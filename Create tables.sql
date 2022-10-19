CREATE TABLE Library.dbo.Books (
    BookID int IDENTITY(1,1) NOT NULL PRIMARY KEY,
    Book_title varchar(50),
    author char (50),
	ISBN int,
	copies int,
	available int,
	available_copies int,
);

CREATE TABLE Library.dbo.Borrowed (
    Borrow_ID int PRIMARY KEY,
    bookID varchar,
    Checkout_time date,
	Checkin_time date,
	Returned_by date,
);

CREATE TABLE Library.dbo.Copies (
    Book_ID int PRIMARY KEY,
	ISBN int,
	BorrowerID varchar,
);

CREATE TABLE Library.dbo.Users (
    UserID int PRIMARY KEY,
    firstname varchar,
    surname varchar,
);