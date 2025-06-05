-- Create a database named store
CREATE DATABASE store;

-- Inside the store database, create a table named sales with the following columns:
USE store;

CREATE TABLE sales (
    id INT PRIMARY KEY,
    product_name VARCHAR(100),
    quantity INT,
    price_per_unit DECIMAL(10, 2)
);

-- Inside the store database, create a table named sales with the following
columns:
USE store;

CREATE TABLE sales (
    id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(100),
    quantity INT,
    price_per_unit DECIMAL(10, 2)
);
-- Insert at least five records into the sales table.
-- Use realistic product names (e.g., “Laptop”, “Smartphone”, “Desk Chair”, etc.)
-- and provide your own values for quantity and price_per_unit.
-- �� Tip: Make sure your quantities and prices vary so that queries involving SUM
-- and COUNT produce meaningful results.
INSERT INTO sales (product_name, quantity, price_per_unit) VALUES
('Laptop', 5, 899.99),
('Smartphone', 10, 499.50),
('Desk Chair', 7, 129.99),
('Monitor', 3, 199.95),
('Wireless Mouse', 15, 24.75);
-- Write a SQL query to count the total number of sales records in the
SELECT COUNT(*) AS total_sales FROM sales;
-- Write a SQL query to count how many products have a quantity greater
than 5.
SELECT COUNT(*) AS products_with_quantity_gt_5
FROM sales
WHERE quantity > 5;
-- Write a SQL query to find the total quantity of products sold.
SELECT SUM(quantity) AS total_quantity_sold
FROM sales;
-- Write a SQL query to calculate the total sales amount across all products.
SELECT SUM(quantity * price_per_unit) AS total_sales_amount
FROM sales;
-- Write a SQL query to calculate the total sales amount for products where the
-- price_per_unit is greater than 1,000.
SELECT SUM(quantity * price_per_unit) AS high_value_sales_total
FROM sales
WHERE price_per_unit > 1000;
