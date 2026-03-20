/*****************************************************************************************************************
NAME:   W3.4 AdventureWorks SQL Script
PURPOSE: SQL script answering 8 business and metadata questions.

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     03/20/2022   EEstrada       1. Built this script for EC IT143

******************************************************************************************************************/
*/

USE AdventureWorks;
GO

/* =========================================================
Question 1 (Marginal)
Author: Christopher Jerome
Question: How many customers in our database have registered an email address?
========================================================= */

SELECT COUNT(DISTINCT EmailAddress) AS TotalCustomersWithEmail
FROM Person.EmailAddress;

-- Answer:
-- There are 19972 customers who have registered an email address.

/* =========================================================
Question 2 (Marginal)
Author: Christopher Jerome
Question: What are the top five products by list price?
========================================================= */

SELECT TOP 5 Name, ListPrice
FROM Production.Product
ORDER BY ListPrice DESC;

-- Answer:
/* Name	ListPrice
Road-150 Red, 62	3578.27
Road-150 Red, 44	3578.27
Road-150 Red, 48	3578.27
Road-150 Red, 52	3578.27
Road-150 Red, 56	3578.27 */

/* =========================================================
Question 3 (Moderate)
Author: Nielen Herman Bester
Question: Which vendors provide bolts and what are their credit ratings?
========================================================= */

SELECT v.Name AS VendorName,
v.CreditRating,
p.Name AS ProductName
FROM Purchasing.Vendor v
JOIN Purchasing.ProductVendor pv ON v.BusinessEntityID = pv.BusinessEntityID
JOIN Production.Product p ON pv.ProductID = p.ProductID
WHERE p.Name LIKE '%Bolt%';

-- Answer:
-- This query shows vendors supplying bolt-related products and their credit ratings.
/* VendorName	CreditRating	ProductName
Training Systems		1			Chainring Bolts
Beaumont Bikes			1			Chainring Bolts
Bike Satellite Inc.		1			Chainring Bolts
Burnett Road Warriors	1			Pinch Bolt*/

/* =========================================================
Question 4 (Moderate)
Author: Nielen Herman Bester
Question: Full names and emails of customers living in Paris
========================================================= */

SELECT p.FirstName + ' ' + p.LastName AS FullName,
ea.EmailAddress,
a.City
FROM Person.Person p
JOIN Person.EmailAddress ea ON p.BusinessEntityID = ea.BusinessEntityID
JOIN Person.BusinessEntityAddress bea ON p.BusinessEntityID = bea.BusinessEntityID
JOIN Person.Address a ON bea.AddressID = a.AddressID
WHERE a.City = 'Paris';

-- Answer:
-- This query retrieves customers living in Paris along with their email addresses.

/* =========================================================
Question 5 (Increased)
Author: Samuel Mwangi
Question: Road bike sales report for 2012
========================================================= */

SELECT DATENAME(MONTH, soh.OrderDate) AS Month,
p.Name AS ProductName,
SUM(sod.OrderQty) AS QuantitySold,
p.ListPrice,
SUM(sod.LineTotal) AS Revenue
FROM Sales.SalesOrderHeader soh
JOIN Sales.SalesOrderDetail sod ON soh.SalesOrderID = sod.SalesOrderID
JOIN Production.Product p ON sod.ProductID = p.ProductID
JOIN Production.ProductSubcategory ps ON p.ProductSubcategoryID = ps.ProductSubcategoryID
WHERE YEAR(soh.OrderDate) = 2012
AND ps.Name LIKE '%Road Bikes%'
GROUP BY DATENAME(MONTH, soh.OrderDate), p.Name, p.ListPrice
ORDER BY Month;

-- Answer:
-- This report shows monthly road bike sales in 2012.
-- It includes quantity sold, list price, and total revenue.

/* =========================================================
Question 6 (Increased)
Author: Samuel Mwangi
Question: Sales performance of employees in 2013
========================================================= */

SELECT p.FirstName + ' ' + p.LastName AS SalesPerson,
COUNT(soh.SalesOrderID) AS TotalOrders,
SUM(soh.TotalDue) AS TotalSales
FROM Sales.SalesOrderHeader soh
JOIN Sales.SalesPerson sp ON soh.SalesPersonID = sp.BusinessEntityID
JOIN Person.Person p ON sp.BusinessEntityID = p.BusinessEntityID
WHERE YEAR(soh.OrderDate) = 2013
GROUP BY p.FirstName, p.LastName
ORDER BY TotalSales DESC;

-- Answer:
-- This report evaluates salesperson performance in 2013.
-- It shows total orders handled and total revenue generated.

/* =========================================================
Question 7 (Metadata)
Author: Edgar Estrada
Question: Tables containing ProductID column
========================================================= */

SELECT TABLE_SCHEMA,
TABLE_NAME,
COLUMN_NAME
FROM INFORMATION_SCHEMA.COLUMNS
WHERE COLUMN_NAME = 'ProductID';

-- Answer:
-- This query lists all tables that include the ProductID column.
-- Useful for understanding relationships across the database.

/* =========================================================
Question 8 (Metadata)
Author: Edgar Estrada
Question: Number of base tables per schema
========================================================= */

SELECT TABLE_SCHEMA,
COUNT(*) AS TotalTables
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_TYPE = 'BASE TABLE'
GROUP BY TABLE_SCHEMA
ORDER BY TotalTables DESC;

-- Answer:
-- This query shows how many base tables exist in each schema.
-- Helps understand database structure and organization.
