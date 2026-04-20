use northwind;
-- a) What is the name of the table that holds the items Northwind sells?
-- The table 'Products' contains the items sold by northwin as well as other unique identifiers.

-- b) What is the name of the table that holds the types/categories of the items Northwind sells
-- The 'Categories' table holds the different types of products sold by Northwind, as well a description and picture of each item category.

-- Create a SELECT statement to retrieve all columns from the employees table.
-- a) Who is the Northwind employee whose name makes it look like she’s a bird?
-- Include the answer as a comment underneath the SELECT statemen
SELECT *
FROM employees
WHERE LastName = 'Peacock';

-- Create a SELECT statement to retrieve all columns from the products table.
SELECT *
FROM products
LIMIT 10
 -- 77 row(s) returned originally
 
 -- Create another SELECT statement to retrieve all columns from the categories table.
-- c) What is the category id of seafood?
SELECT *
FROM categories
-- Category ID is 8

-- Create a final SELECT statement to retrieve the top 50 records from orders, including
-- only the OrderID, OrderDate, ShipName, and ShipCountry columns.
SELECT 'OrderID', 'OrderDate', 'ShipName', 'ShipCountry'
FROM Orders
    LIMIT 50;
