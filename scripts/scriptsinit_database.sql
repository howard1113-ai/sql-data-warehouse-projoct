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