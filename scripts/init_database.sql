/*
=============================================================
Create Database and Schemas
=============================================================
Script Purpose:
    This script creates a new database named 'DataWarehouse' after checking if it already exists. 
    If the database exists, it is dropped and recreated. Additionally, the script sets up three schemas 
    within the database: 'bronze', 'silver', and 'gold'.
	
WARNING:
    Running this script will drop the entire 'DataWarehouse' database if it exists. 
    All data in the database will be permanently deleted. Proceed with caution 
    and ensure you have proper backups before running this script.
*/

USE master;
Go 
-- Dropping  the databse'DataWarehouse' database if exists
IF EXISTS( SELECT 1 FROM sys.databases WHERE name= 'DataWarehouse')
BEGIN 
	ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE Datawarehouse;
END;
GO

--Creating the "DateWarehouse" database

CREATE DATABASE DataWarehouse;
Go

--Now USing the "DataWarehouse" database, so that we can build and fill the necessary contents into ur database

USE DataWarehouse;
Go

--Now creating the schemas. Schemas are basically folders or containers thats helps to keep things organized. As we will be working on Medallion Architecture, so we will be creating 3 schemas

CREATE SCHEMA bronze;
Go

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO


--You can see the just cretaed Schemas under Security under Schemas. If not just refresh your database
