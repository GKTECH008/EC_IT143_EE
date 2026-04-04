/*****************************************************************************************************************
NAME:   EC_IT143_W5.2_Pubs_EE
PURPOSE: Final Project-My Communities Analysis—Create Answers

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     04/04/2026   EEstrada       1. Built this script for EC IT143

******************************************************************************************************************/


/* Question 5
Question: How many titles are published by each publisher?
*/
SELECT 
    p.pub_id,
    p.pub_name,
    COUNT(t.title_id) AS TotalTitles
FROM publishers p
JOIN titles t ON p.pub_id = t.pub_id
GROUP BY p.pub_id, p.pub_name;


/* Question 6
Question: What is the total sales quantity per title?
*/
SELECT 
    t.title_id,
    t.title,
    SUM(s.qty) AS TotalSalesQuantity
FROM titles t
JOIN sales s ON t.title_id = s.title_id
GROUP BY t.title_id, t.title;


/* Question 7
Question: How many titles has each author contributed to?
*/
SELECT 
    a.au_id,
    a.au_fname,
    a.au_lname,
    COUNT(ta.title_id) AS TotalTitles
FROM authors a
JOIN titleauthor ta ON a.au_id = ta.au_id
GROUP BY a.au_id, a.au_fname, a.au_lname;


/* Question 8
Question: Which publishers have the highest total sales?
*/
SELECT 
    p.pub_id,
    p.pub_name,
    SUM(s.qty) AS TotalSales
FROM publishers p
JOIN titles t ON p.pub_id = t.pub_id
JOIN sales s ON t.title_id = s.title_id
GROUP BY p.pub_id, p.pub_name
ORDER BY TotalSales DESC;