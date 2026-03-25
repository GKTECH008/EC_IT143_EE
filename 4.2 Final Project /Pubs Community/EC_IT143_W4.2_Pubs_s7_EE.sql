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

CREATE PROCEDURE dbo.usp_ec_it143_w4.2_pubs AS BEGIN TRUNCATE TABLE dbo.t_ec_it143_w4.2_pubs; INSERT INTO dbo.t_ec_it143_w4.2_pubs SELECT * FROM dbo.v_ec_it143_w4.2_pubs; END;