use northwind;

-- 1. Write a query to list the product id, product name, and unit price of every
-- product that Northwind sells.
SELECT ProductID, ProductName, UnitPrice
FROM products;

-- 2. Write a query to identify the products where the unit price is $7.50 or less.
SELECT ProductID, ProductName, UnitPrice
FROM products
WHERE UnitPrice < 7.5;

-- 3. What are the products that we carry where we have no units on hand, but 1 or more
-- units are on backorder?
SELECT *
FROM products
WHERE UnitsInStock = 0
	AND UnitsOnOrder >= 1;
-- ProductID 31 / Gorgonzola Telino / UnitsOnBackOrder 70

/* 4. Examine the products table. How does it identify the type (category) of each item sold? Where can you find a list of all categories? Write a set of queries to answer these
questions, ending with a query that creates a list of all the seafood items we carry */
SELECT * 
FROM products;
-- So product table uses the FK 'CategoryID' as the identifier to relate to the categories table whose PK is CategoryID. 
-- This is known as a 1-to-many relationship.
SELECT CategoryID, CategoryName
FROM categories; -- BECAUSE OF THIS QUERY I NOW KNOW SEAFOOD CATEGORY IS 8
SELECT *
FROM products
WHERE CategoryID = 8
	AND UnitsInStock >= 1;

-- 5. Examine the products table again. How do you know what supplier each product comes from?
-- Where can you find info on suppliers? Write a set of queries to find the specific identifier for "Tokyo Traders" 
-- and then find all products from that supplier.
SELECT *
FROM suppliers
WHERE CompanyName ='Tokyo Traders';
SELECT *
FROM products
WHERE SupplierID = 4;
--  supplier can be looked up by doing a seperate query to return all data from suppliers table.
-- three product rows returned for tokyo traders suppliers

-- 6. How many employees work at northwind? What employees have "manager"
-- somewhere in their job title? Write queries to answer each question.
SELECT *
FROM employees;
-- 9 employees
SELECT *
FROM employees
WHERE Title LIKE '%manager%';
-- only one employee has manager in their title. 