USE northwind;

/* Take a moment to carefully consider each table. What do you believe a record in the table represents*/

SELECT * FROM  categories; -- a table organized of the products respective to the category type
SELECT * FROM customers; --  a table of descriptive customer info that buys the products from contact info to custimer title
SELECT * FROM employees; -- a table of descriptive, employee personal info containing salary, who they report to, but not sales info. 
SELECT * FROM employeeterritories; -- a table of ID employee and the territory(s) they sell to
SELECT * FROM  orderdetails; /* a table where each product represents a transaction within an order.  
							Multiple records can share the same OrderID because one order may contain several products */
SELECT * FROM  orders;  -- a table with info of full customer order, like who ordered it, when it was shipped, and where it was sent.
SELECT * FROM  products; -- detailed product info 
SELECT * FROM  region; -- region info and their respective ID
SELECT * FROM  shippers; -- the delivery drivers that transport the materials from suppliers
SELECT * FROM  suppliers; -- seller information 
SELECT * FROM  territories; -- detailed city origin with foreign key 'region id' identifying it is north,south,etc for the seller location