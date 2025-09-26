/*
============================================================
File: init_database.sql
Author: Howard Lee Hao Zhe
Date: 2025-09-26
Project: SQL Data Warehouse (E-Commerce)

Purpose:
  - Initialize the SQL Data Warehouse environment
  - Create a clean database called "Data_Warehouse"
  - Set up three schemas for the layered architecture:
      🥉 bronze → raw data (as-is from source systems)
      🥈 silver → cleansed, standardized data
      🥇 gold   → business-ready dimensions, facts, aggregates
  - This script is designed for repeatable execution during development.
    It will drop the database if it already exists.

Warning:
  ⚠️ Running this script will drop the entire 'DateWarehouse' if it exists. 
      All data will be permanently deleted. 
      Proceed with caution
============================================================
*/

-- 1. Drop existing database (clean reset for testing)
IF EXISTS (SELECT name FROM sys.databases WHERE name = 'Data_Warehouse')
BEGIN
    ALTER DATABASE Data_Warehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE Data_Warehouse;
END
GO
  
--Create DataBase 'DataWarehouse'

use master

create DataBase DataWarehouse

USE Data_Warehouse;
GO

CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO

