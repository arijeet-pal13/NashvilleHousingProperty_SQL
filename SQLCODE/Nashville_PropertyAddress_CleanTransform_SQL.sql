
-- REMOVE NULL Values From PropertyAddress

SELECT [UniqueID ],ParcelID, PropertyAddress
From Project..Nashville
WHERE PropertyAddress is NULL
ORDER BY ParcelID

SELECT a.ParcelID,a.PropertyAddress,b.ParcelID,b.PropertyAddress
FROM Nashville a
JOIN Nashville b
	ON a.ParcelID = b.ParcelID
	AND a.[UniqueID ] <> b.[UniqueID ]
WHERE a.PropertyAddress is NULL

UPDATE a
SET PropertyAddress = ISNULL(a.PropertyAddress,b.PropertyAddress)
FROM Nashville a
JOIN Nashville b
	ON a.ParcelID = b.ParcelID
	AND a.[UniqueID ] <> b.[UniqueID ]


SELECT * FROM Nashville 
