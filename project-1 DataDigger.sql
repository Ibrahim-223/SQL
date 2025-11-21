create database project1;
use project1;

create table Customers(
CustomersId int primary key,
Name varchar(15),
Email varchar(20),
Address varchar(20)
);

insert into Customers (CustomersId, Name, Email, Address) values 
(1, 'John', 'john@gmail.com', 'b/103 Alaska'),
(2, 'Alice', 'alice@gmail.com', 'loss angeles'),
(3, 'Bob', 'bob@gmail.com', 'Ahmed avenue'),
(4, 'Julia', 'julia@gmail.com', '103-maninagar'),
(5, 'Alice', 'alice01@gmail.com', 'south america'),
(6, 'Moris', 'moris@gmail.com', 'India'),
(7,'Rohan', 'rohan@gmail.com', 'New york'),
(8, 'Dart', 'dart@gmail.com', 'Africa'),
(9,'Alex', 'alex2@gmail.com', 'New york');

select * from Customers;

set sql_safe_updates = 0;

update Customers 
set Address = 'Ajwad residency'
where Address = 'south america';

delete from Customers where CustomersId = 9;

select * from customers where name = 'Alice';

create table Orders(
OrderId int primary key,
CustomersId int,
OrderDate date,
TotalAmount int,
foreign key(CustomersId)
references Customers(CustomersId)
);

create table Orders(
OrderId int primary key,
CustomersId int,
OrderDate date,
TotalAmount int,
foreign key(CustomersId)
references Customers(CustomersId)
);

insert into Orders(OrderId, CustomersId, OrderDate, TotalAmount) values
(101, 1, '2025-01-10', 2500),
(102, 2, '2025-02-14', 1550),
(103, 3, '2025-10-12', 5220),
(104, 4, '2025-10-14', 4550),
(105, 5, '2025-04-02', 1550),
(106, 6, '2025-11-12', 5220),
(107, 7, '2025-03-25', 4550),
(108, 8, '2025-01-12', 5220);

select * from Orders where OrderId = 107;

update Orders
set TotalAmount = 5000
where OrderId = 105;

delete from Orders
where OrderId = 108;

select * from orders 
where orderDate between '2025-04-02' and '2025-01-10';

select 
max(TotalAmount) as highest_order,
min(TotalAmount) as minimum_order,
avg(TotalAmount) as Average from Orders;

create table Products(
ProductId int primary key,
productName varchar(15),
price int,
stock int
);

insert into Products(ProductId, productName, price, stock) values
(111, 'Keyboard', 1850, 10),
(112, 'Mouse', 450, 16),
(113, 'Monitor', 2000, 7),
(114, 'USB Cable', 250, 25),
(115, 'Earphones', 1999, 11),
(116, 'Charger', 1200, 4),
(117, 'Notebook', 150, 0);

select * from Products;

select * from Products order by price desc;

update Products 
set price = 1400
where productName = 'charger';

delete from Products where stock = 0;

select * from products where price between 500 and 2000;

select 
max(price) as Expensive,
min(price) as cheapest 
from Products;

select * from Products;

create table OrderDetails(
OrderDetailId varchar(5),
OrderId int,
ProductId int,
Quantity int,
SubTotal int,
foreign key(OrderId) 
references Orders(OrderId),
foreign key(ProductId)
references Products(ProductId)
);

insert into OrderDetails (OrderDetailId, OrderId, ProductId, Quantity, SubTotal) values
('A01', 101, 111, 10, 5000),
('A02', 102, 112, 14, 5300),
('A03', 103, 113, 6, 4800),
('A04', 104, 114, 11, 5000),
('A05', 105, 115, 10, 2100),
('A06', 106, 116, 3, 4600);


select * from OrderDetails where OrderId = 105;

SELECT 
    SUM(SubTotal) AS Total_Revenue
FROM OrderDetails;

select * from OrderDetails
limit 3;

select 
    ProductId,
    count(*) as Times_Sold
from OrderDetails
group by ProductId;

