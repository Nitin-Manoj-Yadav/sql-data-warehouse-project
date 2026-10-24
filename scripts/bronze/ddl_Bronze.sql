/*
===============================================================================
DDL Script: Create Bronze Tables
===============================================================================
Script Purpose:
    This script creates tables in the 'bronze' schema, dropping existing tables
    if they already exist.

    Run this script to re-define the DDL structure of 'bronze' Tables
===============================================================================
*/

IF OBJECT_ID('bronze.crm_cust_info', 'U') IS NOT NULL
    DROP TABLE bronze.crm_cust_info;
GO
  
  CREATE TABLE bronze.crm_cust_info (
    cst_id INT,
    cst_key NVARCHAR(50),
    cst_firstname NVARCHAR(50),
    cst_lastname NVARCHAR(50),
    cst_material_status NVARCHAR(50),
    cst_gndr NVARCHAR(50),
    cst_create_date DATE
);

create table bronze.crm_prd_info(
prd_id int,
ped_key nvarchar(50),
prd_nm nvarchar(50),
prd_cost nvarchar(50),
prd_line nvarchar(50),
prd_start_dt date,
prd_end_dt date);


create table bronze.crm_sales_details(
sls_ord_num nvarchar(50),
sls_prd_key nvarchar(50),
sls_cust_id int,
sls_order_dt int,
sls_ship_dt int,
sls_due_dt int ,
sls_sales int,
sls_quantity int,
sls_price int);

create table bronze.erp_cust_az12(
cid nvarchar(50),
bdate date,
gen varchar(40));

create table bronze.erp_loc_a101(
cid nvarchar(50),
country varchar(50));

create table bronze.erp_px_cat_g1v2(
id nvarchar(50),
cat varchar(50),
subcat varchar(50),
maintenance varchar(50));
