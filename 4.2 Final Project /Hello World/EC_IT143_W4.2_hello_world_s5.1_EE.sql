/******************************************************************************
NAME: EC_IT143_W4.2_hello_world_s5.1_EE.sql

PURPOSE:
Create table from view

DESCRIPTION:
Step 5.1

AUTHOR: EE
DATE: 2026-03-25

MODIFICATION LOG:
Ver    Date        Author    Description
1.0    2026-03-25  EE        Initial creation

******************************************************************************/

SELECT * INTO dbo.t_ec_it143_w4.2_hello_world FROM dbo.v_ec_it143_w4.2_hello_world;