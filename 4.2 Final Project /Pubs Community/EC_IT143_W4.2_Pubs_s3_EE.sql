/******************************************************************************
NAME: EC_IT143_W4.2_Pubs_s3_EE.sql

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

SELECT type, COUNT(title_id) AS total_titles
FROM titles
GROUP BY type;