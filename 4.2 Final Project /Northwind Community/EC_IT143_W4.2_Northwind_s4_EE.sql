/******************************************************************************
NAME: EC_IT143_W4.2_Northwind_s4_EE.sql

PURPOSE:
Create view

DESCRIPTION:
Step 4 view

AUTHOR: EE
DATE: 2026-03-25

MODIFICATION LOG:
Ver    Date        Author    Description
1.0    2026-03-25  EE        Initial creation

******************************************************************************/

DROP VIEW IF EXISTS dbo.v_ec_it143_w_northwind;
GO
CREATE VIEW dbo.v_ec_it143_w_northwind AS
SELECT c.CategoryName, COUNT(p.ProductID) AS total_products
FROM Categories c
LEFT JOIN Products p ON c.CategoryID = p.CategoryID
GROUP BY c.CategoryName;
