USE northwind;
-- Jessica Navarro 04/21/2026

/* 1. Create a single query to list the product id, product name, unit price and category
name of all products. Order by category name and within that, by product name.*/
SELECT ProductID, ProductName, UnitPrice, CategoryName
FROM products JOIN categories
ON products.CategoryID = categories.CategoryID
ORDER BY 4, 2; -- 77 rows returned

/* 2. Create a single query to list the product id, product name, unit price and supplier
name of all products that cost more than $75. Order by product name. */
SELECT ProductID, ProductName, UnitPrice, CompanyName
FROM products JOIN suppliers
ON products.SupplierID = suppliers.SupplierID
WHERE UnitPrice > 75
ORDER BY 2; 
/* 38 | Cte de Blaye | 263.5000	| Aux joyeux ecclsiastiques
9 | Mishi Kobe Niku	| 97.0000 | Traders
20 | Sir Rodney's Marmalade	| 81.0000 | Specialty Biscuits, Ltd.
29 | Thringer Rostbratwurst	| 123.7900 | Plutzer Lebensmittelgromrkte AG*/

/* 3. Create a single query to list the product id, product name, unit price, category name,
and supplier name of every product. Order by product name.*/
SELECT ProductID, ProductName, UnitPrice, CategoryName, CompanyName
FROM products
	JOIN categories ON products.CategoryID = categories.CategoryID
    JOIN  suppliers ON products.SupplierID = suppliers.SupplierID
ORDER BY 2;

/* 4. Create a single query to list the order id, ship name, ship address, and shipping
company name of every order that shipped to Germany. Assign the shipping company
name the alias ‘Shipper.’ Order by the name of the shipper, then the name of who it
shipped to. */
SELECT OrderID, ShipName, ShipAddress, CompanyName AS Shipper
FROM orders
	JOIN shippers ON orders.ShipVia = shippers.ShipperID
    WHERE ShipCountry = 'Germany'
    ORDER BY 4, 2;
    
/* 5. Start from the same query as above (#4), but omit OrderID and add logic to group by
ship name, with a count of how many orders were shipped for that ship name. */
SELECT ShipAddress, CompanyName AS Shipper, COUNT(ShipName)
FROM orders
	JOIN shippers ON orders.ShipVia = shippers.ShipperID
WHERE ShipCountry = 'Germany'
GROUP BY ShipName, ShipAddress, Shipper
	ORDER BY Shipper, ShipName;

/* 6. Create a single query to list the order id, order date, ship name, ship address of all
orders that included Sasquatch Ale. */
SELECT orders.OrderID, orders.OrderDate, orders.ShipName, orders.ShipAddress
FROM orders
JOIN orderdetails AS OD
ON orders.OrderID = OD.OrderID
JOIN products AS p
ON OD.ProductID = p.ProductID
Where p.ProductName = 'Sasquatch Ale';
