/******************************************************************************
NAME: EC_IT143_W4.2_hello_world_s6_EE.sql

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

TRUNCATE TABLE dbo.t_ec_it143_w4.2_hello_world;
INSERT INTO dbo.t_ec_it143_w4.2_hello_world SELECT * FROM dbo.v_ec_it143_w4.2_hello_world;