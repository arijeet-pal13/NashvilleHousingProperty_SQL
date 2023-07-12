
-- Remove Duplicate values




WITH RowNumberCTE AS
(
SELECT *,
ROW_NUMBER() OVER(
PARTITION BY ParcelID,
			 PropertyAddress,
			 SaleDate,
			 SalePrice,
			 LegalReference
			 ORDER BY UniqueID
) row_num
FROM Nashville
)
DELETE FROM RowNumberCTE
WHERE row_num >1


WITH RowNumberCTE AS
(
SELECT *,
ROW_NUMBER() OVER(
PARTITION BY ParcelID,
			 PropertyAddress,
			 SaleDate,
			 SalePrice,
			 LegalReference
			 ORDER BY UniqueID
) row_num
FROM Nashville
)
SELECT * FROM RowNumberCTE
WHERE row_num >1
ORDER BY PropertyAddress


SELECT * FROM Nashville