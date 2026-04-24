USE northwind;
-- Jessica Navarro 4/23/2026

/* 1. Write a query to find the price of the cheapest item that Northwind sells. Then write a
second query to find the name of the product that has that price.*/
SELECT MIN(UnitPrice)
FROM products; -- This query specifically locates the cheapest price a product is sold at, however it does not show the specific product.
SELECT ProductName, UnitPrice
FROM products
WHERE UnitPrice < 3; -- By specifying the product name and price columns the query only returns those i asked for. 


/* 2. Write a query to find the average price of all items that Northwind sells.
(Bonus: Once you have written a working query, try asking Claude or ChatGPT for help
using the ROUND function to round the average price to the nearest cent.) */
SELECT ROUND(AVG(UnitPrice), 2)
FROM products; -- orginally, my query contained the avg outside of the paranthesis and the rounding formula inside a paranthesis, but after consulting CoPilot..
-- it informed me that its more efficient and common to reverse that and it taught me how to emphasize the decimal and where to put it.

/* 3. Write a query to find the price of the most expensive item that Northwind sells. Then
write a second query to find the name of the product with that price, plus the name of
the supplier for that product. */
SELECT MAX(UnitPrice)
FROM products;

SELECT CompanyName, ProductName, ROUND(UnitPrice, 2) as Most_Expensive
FROM products AS p
JOIN suppliers AS s ON p.SupplierID = s.SupplierID
WHERE UnitPrice = (SELECT MAX(UnitPrice) FROM products);


/* 4. Write a query to find total monthly payroll (the sum of all the employees’ monthly
salaries).*/
SELECT ROUND(Sum(Salary), 2) AS monthly_salary
FROM employees;

/* 5. Write a query to identify the highest salary and the lowest salary amounts which any
employee makes. (Just the amounts, not the specific employees!) */
SELECT ROUND(MAX(Salary), 2) as highSAL, ROUND(MIN(Salary), 2) as lowSAL
FROM employees;

/* 6. Write a query to find the name and supplier ID of each supplier and the number of
items they supply. Hint: Join is your friend here. */
SELECT s.SupplierID, s.CompanyName, COUNT(p.ProductID) as product_total
FROM Suppliers as s
JOIN Products as p ON s.SupplierID = p.SupplierID
GROUP BY 1, 2
ORDER BY product_total;

/* 7. Write a query to find the list of all category names and the average price for items in
each category. */
SELECT C.CategoryName, P.ProductName, ROUND(AVG(P.UnitPrice), 2) AS average_product_price
FROM products AS P
JOIN categories AS C ON P.CategoryID = C.CategoryID
GROUP BY 1, 2
ORDER BY 1;

/* 8. Write a query to find, for all suppliers that provide at least 5 items to Northwind, what
is the name of each supplier and the number of items they supply.*/
SELECT S.SupplierID, CompanyName, COUNT(ProductID) AS product_total
FROM suppliers as S
JOIN products as P ON S.SupplierID = P.SupplierID
GROUP BY 1
HAVING product_total > 4;

/* 9. Write a query to list products currently in inventory by the product id, product name,
and inventory value (calculated by multiplying unit price by the number of units on
hand). Sort the results in descending order by value. If two or more have the same
value, order by product name. If a product is not in stock, leave it off the list. */
SELECT ProductID, ProductName, ROUND((UnitPrice * UnitsInStock),2) AS inventory_value
FROM products
WHERE UnitsInStock >= 1
GROUP BY 1
ORDER BY 3 DESC, 2;
