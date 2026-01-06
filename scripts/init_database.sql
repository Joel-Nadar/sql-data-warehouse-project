/*
================================================
Create Database  and Scchemas
================================================
Script Purpose: 
  This script creates a new database amed 'DataWarehouse' after checking if it already exits.
  If the database exists, it is dropped and recreated. Additionally, the scrip tsets up three schemas 
  within the database: 'bronze','silver', and 'gold'.
WARING :
  Running this script will drop the entire 'DataWarehouse' databse if it exists.
  All data in the database will be permantly deleted. Proceed with caution 
  and ensure you have proper backups before running this script .
*/
--Create Database 'DataWarehouse'
USE master;
IF EXISTS (SELECT 1 FROM sys.databases WHERE name='DataWarehouse')
BEGIN
	ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE DataWarehouse;
END;
GO
CREATE DATABASE DataWarehouse;

USE DataWarehouse;
GO
--Creating Schemas
CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
