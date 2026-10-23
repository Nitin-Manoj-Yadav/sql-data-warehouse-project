/*
========================================================
Create Database and Schemas
========================================================

Script Purpose:
    This script creates a new database named 'DWarehouse' after checking if it already exists.
    If the database exists, it is dropped and recreated. Additionally, the script sets up three schemas
    within the database: 'bronze', 'silver', and 'gold'.

WARNING:
    Running this script will drop the entire 'DWarehouse' database if it exists.
    All data in the database will be permanently deleted. Proceed with caution
    and ensure you have proper backups before running this script.
*/

USE master;
GO

-- Drop and recreate the 'DWarehouse' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DWarehouse')
BEGIN
    ALTER DATABASE DWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE DataWarehouse;
END;
GO

--Create The "DWarehouse" databse

Create Database DWarehouse;
go

--create Schemas

create schema bronze;
go

create schema silver;
go

create schema gold;
go


