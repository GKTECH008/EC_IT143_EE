/*****************************************************************************************************************
NAME:   EC_IT143_W5.2_Northwind_EE
PURPOSE: Final Project-My Communities Analysis—Create Answers

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     04/04/2026   EEstrada       1. Built this script for EC IT143

******************************************************************************************************************/

/* Question 1
Question: What is the total number of orders per customer?
*/
SELECT 
    c.CustomerID,
    c.CustomerName as Company,
    COUNT(o.OrderID) AS TotalOrders
FROM Customers c
JOIN Orders o ON c.CustomerID = o.CustomerID
GROUP BY c.CustomerID, c.CustomerName;


/* Question 2
Question: What is the total sales amount per product?
*/
SELECT 
    p.ProductID,
    p.ProductName,
    SUM(od.UnitPrice * od.Quantity) AS TotalSales
FROM Products p
JOIN [Order Details] od ON p.ProductID = od.ProductID
GROUP BY p.ProductID, p.ProductName;


/* Question 3
Question: How many products are in each category?
*/
SELECT 
    c.CategoryID,
    c.CategoryName,
    COUNT(p.ProductID) AS TotalProducts
FROM Categories c
JOIN Products p ON c.CategoryID = p.CategoryID
GROUP BY c.CategoryID, c.CategoryName;


/* Question 4
Question: Which employees handled the most orders?
*/
SELECT 
    e.EmployeeID,
    e.FirstName,
    e.LastName,
    COUNT(o.OrderID) AS TotalOrdersHandled
FROM Employees e
JOIN Orders o ON e.EmployeeID = o.EmployeeID
GROUP BY e.EmployeeID, e.FirstName, e.LastName
ORDER BY TotalOrdersHandled DESC;
