/* =========================================
    Create database and schemas
   =========================================
   This script creates a new database named 'DataWarehouse' after checking if it already exists.
   If it exists it is dropped and recreated. Additonally, this script creates three schemas within
   the database: bronze,silver and gold

   WARNING: run this script carefully as it will drop any pre-existing database named 'DataWarehouse'
   */

USE master;
GO


-- Drop and recreate the 'DataWarehouse' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
	ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE DataWarehouse;
END;
GO


-- Create the 'DataWarehouse' database
CREATE DATABASE DataWarehouse;
GO



USE DataWarehouse;
GO


--Create schemas
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO
