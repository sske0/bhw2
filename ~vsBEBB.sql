CREATE DATABASE DemoApp 

CREATE TABLE Users (
  Id INT IDENTITY(1,1) PRIMARY KEY,
  Name NVARCHAR(40) NOT NULL,
  Surname NVARCHAR(40) NOT NULL,
  Email NVARCHAR(50) UNIQUE,
  RegistrationDate DATETIME DEFAULT CURRENT_TIMESTAMP CHECK (RegistrationDate <= CURRENT_TIMESTAMP),
  ContactNumber NVARCHAR(20) DEFAULT '+994000000000',
  Age INT CHECK (Age > 18),
  Address NVARCHAR(100),
);

CREATE TABLE Categories (
  Id INT IDENTITY(1,1) PRIMARY KEY,
  Name NVARCHAR(40) NOT NULL,
  Slug VARCHAR(50) UNIQUE,
  CreatedAt DATETIME DEFAULT CURRENT_TIMESTAMP,
  IsActive BIT
);

INSERT INTO Users (Name, Surname, Email)
VALUES ('Name', 'Surname', 'n.s@bruh.com'),
       ('Name1', 'Surname1', 'n1.s@bruh.com'),
       ('Name2', 'Surname2', 'n2.s@bruh.com');


INSERT INTO Categories (Name, Slug, IsActive)
VALUES ('Category', 'category', 1),
       ('Category1', 'category1', 0),
       ('Category2', 'category2', 1);


SELECT * FROM Users
SELECT * FROM Categories