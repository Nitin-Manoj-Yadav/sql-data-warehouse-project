/*
===========================================================
DDL Script: Create Silver Tables
===========================================================
Script Purpose:
    This script creates tables in the 'silver' schema, dropping existing tables
    if they already exist.
    Run this script to re-define the DDL structure of 'bronze' Tables
===========================================================
*/
IF OBJECT_ID('silver.crm_cust_info', 'U') IS NOT NULL
    DROP TABLE silver.crm_cust_info;
GO
  
  CREATE TABLE silver.crm_cust_info (
    cst_id INT,
    cst_key NVARCHAR(50),
    cst_firstname NVARCHAR(50),
    cst_lastname NVARCHAR(50),
    cst_marital_status NVARCHAR(50),
    cst_gndr NVARCHAR(50),
    cst_create_date DATE,
	dwh_create_date Datetime2 default getdate()
);
GO
  
if OBJECT_ID('silver.crm_prd_info','U') is not null
Drop table silver.crm_prd_info;
GO
  
create table silver.crm_prd_info(
prd_id int,
ped_key nvarchar(50),
prd_nm nvarchar(50),
prd_cost nvarchar(50),
prd_line nvarchar(50),
prd_start_dt date,
prd_end_dt date,
dwh_create_date Datetime2 default getdate()
);
GO
  

if OBJECT_ID('silver.crm_sales_details','U') is not null
drop table silver.crm_sales_details;
GO
  
create table silver.crm_sales_details(
sls_ord_num nvarchar(50),
sls_prd_key nvarchar(50),
sls_cust_id int,
sls_order_dt int,
sls_ship_dt int,
sls_due_dt int ,
sls_sales int,
sls_quantity int,
sls_price int,
dwh_create_date Datetime2 default getdate()
);
GO


if OBJECT_ID('silver.erp_cust_az12','U') is not null
drop table silver.erp_cust_az12;

GO
create table silver.erp_cust_az12(
cid nvarchar(50),
bdate date,
gen varchar(40),
dwh_create_date Datetime2 default getdate()
);
GO


if OBJECT_ID('silver.erp_loc_a101','U') is not null
drop table silver.erp_loc_a101;
GO
create table silver.erp_loc_a101(
cid nvarchar(50),
country varchar(50),
dwh_create_date Datetime2 default getdate()
);
GO

if OBJECT_ID('silver.erp_px_cat_g1v2','U') is not null
drop table silver.erp_px_cat_g1v2;
GO
create table silver.erp_px_cat_g1v2(
id nvarchar(50),
cat varchar(50),
subcat varchar(50),
maintenance varchar(50),
dwh_create_date Datetime2 default getdate()
);

GO

  
);
