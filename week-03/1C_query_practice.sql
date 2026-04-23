use northwind;
-- JESSICA NAVARRO 04/21/2026

-- 1. Write a query to list the product id, product name, and unit price of every product.
-- This time, display them in ascending order by price.
SELECT ProductID, ProductName, UnitPrice
FROM products
ORDER BY UnitPrice ASC; -- 77 rows returned

-- 2. What are the products that we carry where we have at least 100 units on hand?
-- Order them in descending order by price.
SELECT *
FROM products
WHERE UnitsInStock >= 100
ORDER BY UnitPrice DESC; -- ten rows returned

-- 3. What are the products that we carry where we have at least 100 units on hand?
-- Order them in descending order by price. If two or more have the same price,
-- list those in ascending order by product name.
SELECT *
FROM products
ORDER BY UnitPrice DESC, ProductName ASC; -- 77 rows returned organized by unit price Big to small, and name a-z


-- 4. Write a query against the orders table that displays the total number of distinct
-- customers who have placed orders, based on customer ID. 
-- Use an alias to label the count calculation as CustomerCount.
SELECT COUNT(DISTINCT CustomerID) AS Customer_Count
FROM orders; -- 89 total distinct customers

-- 5. Write a query against the orders table that displays the total number of distinct
-- customers who have placed orders, by customer ID, for each country where orders
-- have been shipped. Again, use an alias to label the count as CustomerCount.
-- Order the list by the CustomerCount, largest to smallest.
SELECT COUNT(DISTINCT CustomerID) AS CustomerCount, (ShipCountry)
FROM orders
GROUP BY 2
ORDER BY 1 DESC; -- USA ranks 1, Germany ranks 2, and France ranks 3

-- 6. What are the products that we carry where we have less than 25 units on hand, but 1
-- or more units of them are on order? 
-- Write a query that orders them by quantity on order (high to low), then by product name.
SELECT ProductName, UnitsInStock, UnitsOnOrder
FROM products
WHERE UnitsInStock < 25
AND UnitsOnOrder >= 1
ORDER BY 3 DESC, 1 ASC; -- 17 Rows returned: Louisiana Hot Spiced Okra / 4 in stock / 100 on order, Wimmers Gute Semelkndel / 22 / 80, etc...


-- 7. Write a query to list each of the job titles in employees, along with a count of how
-- many employees hold each job title.
SELECT DISTINCT Title, COUNT(EmployeeID)
FROM employees
GROUP BY 1; 
/* Sales Representative, 6
Vice President, Sales, 1
Sales Manager, 1
Inside Sales Coordinator, 1*/

-- 8. What employees have a monthly salary that is between $2000 and $2500?
-- Write a query that orders them by job title.
SELECT Title, FirstName, LastName, Salary
FROM employees
WHERE Salary BETWEEN 2000 AND 2500
ORDER BY Title; 
/*  Inside Sales Coordinator | Laura Callahan | $2100.5
Sales Representative | Michael Suyama | $2004.07
Sales Representative | Anne	Dodsworth | $2333.33
Vice President, Sales | Andrew Fuller | $2254.49 */
