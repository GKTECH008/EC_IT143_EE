/******************************************************************************
NAME: EC_IT143_W4.2_Northwind_s3_EE.sql

PURPOSE:
Ad hoc query

DESCRIPTION:
Step 3 query

AUTHOR: EE
DATE: 2026-03-25

MODIFICATION LOG:
Ver    Date        Author    Description
1.0    2026-03-25  EE        Initial creation

******************************************************************************/

SELECT c.CategoryName, COUNT(p.ProductID) AS total_products
FROM Categories c
LEFT JOIN Products p ON c.CategoryID = p.CategoryID
GROUP BY c.CategoryName;