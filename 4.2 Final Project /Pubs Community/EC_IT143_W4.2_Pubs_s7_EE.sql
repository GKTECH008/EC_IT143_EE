/******************************************************************************
NAME: EC_IT143_W4.2_Pubs_s7_EE.sql

PURPOSE:
Stored procedure

DESCRIPTION:
Step 7

AUTHOR: EE
DATE: 2026-03-25

MODIFICATION LOG:
Ver    Date        Author    Description
1.0    2026-03-25  EE        Initial creation

******************************************************************************/

CREATE PROCEDURE dbo.usp_pubs_load
AS
BEGIN
    TRUNCATE TABLE dbo.t_pubs_titles_per_type;

    INSERT INTO dbo.t_pubs_titles_per_type
    SELECT * FROM dbo.v_pubs_titles_per_type;
END;
