
-- Change Date Time format

SELECT SaleDate
FROM Project.dbo.Nashville

SELECT CONVERT(Date,SaleDate) as SaleDateConvert
FROM Project..Nashville

ALTER TABLE Project..Nashville
ADD SalesDateConvert Date;

UPDATE Nashville
SET SalesDateConvert = CONVERT(Date,SaleDate)

SELECT * FROM Nashville