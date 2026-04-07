create database ecommerce_db;

use ecommerce_db;
create table customers(
	customerId int primary key,
    customerName varchar(100),
    email varchar(100),
    city varchar(50),
    country varchar(50));
    create TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Category VARCHAR(50),
    Price DECIMAL(10,2)
);
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    FOREIGN KEY (CustomerID) REFERENCES customers(customerId)
);
create table OrderDetails(
	OrderdetailId int primary key,
    OrderID int,
    ProductId int,
    Quantity int,
    SalesAmount decimal(10,2),
    foreign key (OrderID) references Orders(OrderID),
    foreign key (ProductID) references Products(ProductID));
INSERT INTO customers VALUES
(1, 'Arjun Nair', 'arjun@gmail.com', 'Trivandrum', 'India'),
(2, 'Priya Menon', 'priya@gmail.com', 'Kochi', 'India'),
(3, 'Rahul Das', 'rahul@gmail.com', 'Bangalore', 'India'),
(4, 'Anjali Singh', 'anjali@gmail.com', 'Delhi', 'India');

insert into Products values
(101,'Laptop','Electronics',60000),
(102,'Phone','Electronics',30000),
(103,'HeadSet','Accessories',2000),
(104,'Chair','Furniture',5000);

INSERT INTO Orders VALUES
(1001, 1, '2024-01-10'),
(1002, 2, '2024-01-15'),
(1003, 1, '2024-02-05'),
(1004, 3, '2024-02-20'),
(1005, 4, '2024-03-01');

INSERT INTO OrderDetails VALUES
(1, 1001, 101, 1, 60000),
(2, 1001, 103, 2, 4000),
(3, 1002, 102, 1, 30000),
(4, 1003, 104, 1, 5000),
(5, 1004, 101, 1, 60000),
(6, 1005, 103, 3, 6000);

SELECT * FROM Customers;
SELECT * FROM Products;
SELECT * FROM Orders;
SELECT * FROM OrderDetails;