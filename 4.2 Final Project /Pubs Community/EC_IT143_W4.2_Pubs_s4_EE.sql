/******************************************************************************
NAME: EC_IT143_W4.2_Pubs_s4_EE.sql

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

DROP VIEW IF EXISTS dbo.v_pubs_titles_per_type;
GO

CREATE VIEW dbo.v_pubs_titles_per_type AS
SELECT type,
       COUNT(title_id) AS total_titles
FROM titles
GROUP BY type;
