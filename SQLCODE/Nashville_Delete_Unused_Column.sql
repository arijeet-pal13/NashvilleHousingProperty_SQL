
--Delete unused columns

SELECT * FROM Nashville

ALTER TABLE Nashville
DROP COLUMN PropertyAddress,SaleDate,OwnerAddress
