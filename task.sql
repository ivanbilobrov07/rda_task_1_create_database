# Write your SQL code for the database creation here. Good luck! 

CREATE database ShopDB;
USE ShopDB;

CREATE TABLE Products(
	ID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(50),
    Description VARCHAR(100),
    Price INT,
    WarehouseAmount INT
);

CREATE TABLE Customers(
	ID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(50),
    Address VARCHAR(100)
);

CREATE TABLE Orders(
	ID INT AUTO_INCREMENT PRIMARY KEY,
    CustomerID INT,
    Date Date,
    FOREIGN KEY (CustomerID) REFERENCES Customers(ID) ON DELETE SET NULL
);

CREATE TABLE OrderItems(
	ID INT AUTO_INCREMENT PRIMARY KEY,
    OrderID INT,
    ProductID INT,
    FOREIGN KEY (OrderID) REFERENCES Orders(ID) ON DELETE SET NULL,
    FOREIGN KEY (ProductID) REFERENCES Products(ID) ON DELETE SET NULL
);
