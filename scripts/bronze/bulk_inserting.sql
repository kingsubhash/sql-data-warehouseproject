/*
This is just basic bulk inserting , where we are inserting data from our source file
First we are truncating , which means deleting the table and then inserting the data into their respective table.
But this is not the recommened method whie inserting, since we need to create a procedure , and by just one line of code we can load all the data 
Procedure method is explained on the "procedure_insert.sql"
*/



TRUNCATE TABLE bronze.crm_cust_info
BULK INSERT bronze.crm_cust_info
FROM 'E:\sql-data-warehouse-project\datasets\source_crm\cust_info.csv'
WITH(
	FIRSTROW=2,-- First row is always header
	FIELDTERMINATOR = ',',--Field seperator
	TABLOCK--Locking entire table for performance issue 
);
/* Better to check the quality of insert after executing the insert query
Select * from bronze.crm_cust_info;
*/
TRUNCATE TABLE bronze.crm_prd_info
BULK INSERT bronze.crm_prd_info
FROM 'E:\sql-data-warehouse-project\datasets\source_crm\prd_info.csv'
WITH(
	FIRSTROW=2,-- First row is always header
	FIELDTERMINATOR = ',',--Field seperator
	TABLOCK--Locking entire table for performance issue 
);

/* Better to check the quality of insert after executing the insert query
Select * from bronze.crm_prd_info;
*/
TRUNCATE TABLE bronze.crm_sales_details
BULK INSERT bronze.crm_sales_details
FROM 'E:\sql-data-warehouse-project\datasets\source_crm\sales_details.csv'
WITH(
	FIRSTROW=2,-- First row is always header
	FIELDTERMINATOR = ',',--Field seperator
	TABLOCK--Locking entire table for performance issue 
);

--Select *from bronze.crm_sales_details
TRUNCATE TABLE bronze.erp_cust_az12
BULK INSERT bronze.erp_cust_az12
FROM 'E:\sql-data-warehouse-project\datasets\source_erp\CUST_AZ12.csv'
WITH(
	FIRSTROW=2,-- First row is always header
	FIELDTERMINATOR = ',',--Field seperator
	TABLOCK--Locking entire table for performance issue 
);

--Select * from bronze.erp_cust_az12
TRUNCATE TABLE bronze.erp_loc_a101
BULK INSERT bronze.erp_loc_a101
FROM 'E:\sql-data-warehouse-project\datasets\source_erp\LOC_A101.csv'
WITH(
	FIRSTROW=2,-- First row is always header
	FIELDTERMINATOR = ',',--Field seperator
	TABLOCK--Locking entire table for performance issue 
);
TRUNCATE TABLE bronze.erp_px_cat_g1v2
BULK INSERT bronze.erp_px_cat_g1v2
FROM 'E:\sql-data-warehouse-project\datasets\source_erp\PX_CAT_G1V2.csv'
WITH(
	FIRSTROW=2,-- First row is always header
	FIELDTERMINATOR = ',',--Field seperator
	TABLOCK--Locking entire table for performance issue 
);
