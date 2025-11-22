# DataDigger SQL Project

This project demonstrates a mini e‑commerce database system using MySQL.
It includes table creation, data insertion, updates, deletes, and
analytical queries.

# Database Schema

### 1. Customers

Stores customer details. - CustomersId (PK) - Name - Email - Address

### 2. Orders

Stores customer orders. - OrderId (PK) - CustomersId (FK → Customers) -
OrderDate - TotalAmount

### 3. Products

Stores product catalog. - ProductId (PK) - productName - price - stock

### 4. OrderDetails

Stores item‑wise order details. - OrderDetailId - OrderId (FK →
Orders) - ProductId (FK → Products) - Quantity - SubTotal

## Key Operations in the SQL File

### ✔ CRUD Operations

-   Insert, update, delete on all tables.
-   Example: updating addresses, deleting customers, modifying product
    prices.

### ✔ Analytical Queries

-   Max/Min/Average TotalAmount from Orders.
-   Sorting products by price.
-   Count how many times each product was sold.
-   Total revenue from all orders.
-   Retrieve orders within date ranges.

### ✔ Joins (Implicit via FK)

The structure supports extracting: - Customer‑wise orders - Order‑wise
products - Product sales frequency

## How to Use

1.  Run the script in MySQL Workbench or any MySQL-compatible client.
2.  Ensure foreign key checks are enabled.
3.  Execute the file step‑by‑step to understand the flow.

## Author

Generated based on your SQL project file **project-1 DataDigger.sql**.
