/******************************************************************************
NAME: EC_IT143_W4.2_Pubs_s5.2_EE.sql

PURPOSE:
Define table

DESCRIPTION:
Step 5.2

AUTHOR: EE
DATE: 2026-03-25

MODIFICATION LOG:
Ver    Date        Author    Description
1.0    2026-03-25  EE        Initial creation

******************************************************************************/

DROP TABLE IF EXISTS dbo.t_pubs_titles_per_type;
GO

CREATE TABLE dbo.t_pubs_titles_per_type (
    type VARCHAR(50) NOT NULL,
    total_titles INT NOT NULL,
    CONSTRAINT PK_pubs PRIMARY KEY (type)
);
