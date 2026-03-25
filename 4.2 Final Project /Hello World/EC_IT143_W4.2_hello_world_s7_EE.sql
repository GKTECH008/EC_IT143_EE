/******************************************************************************
NAME: EC_IT143_W4.2_hello_world_s7_EE.sql

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

CREATE PROCEDURE dbo.usp_ec_it143_w4.2_hello_world AS BEGIN TRUNCATE TABLE dbo.t_ec_it143_w4.2_hello_world; INSERT INTO dbo.t_ec_it143_w4.2_hello_world SELECT * FROM dbo.v_ec_it143_w4.2_hello_world; END;