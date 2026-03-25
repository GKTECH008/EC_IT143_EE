/******************************************************************************
NAME: EC_IT143_W4.2_Pubs_s6_EE.sql

PURPOSE:
Load table

DESCRIPTION:
Step 6

AUTHOR: EE
DATE: 2026-03-25

MODIFICATION LOG:
Ver    Date        Author    Description
1.0    2026-03-25  EE        Initial creation

******************************************************************************/


TRUNCATE TABLE dbo.t_pubs_titles_per_type;

INSERT INTO dbo.t_pubs_titles_per_type
SELECT * FROM dbo.v_pubs_titles_per_type;
