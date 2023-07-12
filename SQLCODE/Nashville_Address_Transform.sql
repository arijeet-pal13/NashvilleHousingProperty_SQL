
-- Split Property Address & Owner Address into Address,City,State
-- Property Address

SELECT  PropertyAddress
FROM Nashville


SELECT PropertyAddress,
SUBSTRING(PropertyAddress,1,CHARINDEX(',',PropertyAddress)-1) AS PropertySplitAddress,
SUBSTRING(PropertyAddress,CHARINDEX(',',PropertyAddress)+1,LEN(PropertyAddress)) AS PropertySplitCity
FROM Nashville

ALTER TABLE Nashville
ADD PropertySplitAddress nvarchar(255) , PropertySplitCity nvarchar(255)

UPDATE Nashville
SET PropertySplitAddress = SUBSTRING(PropertyAddress,1,CHARINDEX(',',PropertyAddress)-1)

UPDATE Nashville
SET PropertySplitCity = SUBSTRING(PropertyAddress,CHARINDEX(',',PropertyAddress)+1,LEN(PropertyAddress))

SELECT * FROM Nashville

-- Owner Address

SELECT OwnerAddress,
PARSENAME(REPLACE(OwnerAddress,',','.'),1) as OwnerState,
PARSENAME(REPLACE(OwnerAddress,',','.'),2) as OwnerCity,
PARSENAME(REPLACE(OwnerAddress,',','.'),3) as OwnerAddress
FROM Nashville
Where OwnerAddress is not null


ALTER TABLE Nashville
ADD OwnerSplitAddress nvarchar(255) , OwnerSplitCity nvarchar(255),OwnerSplitState nvarchar(255)

UPDATE Nashville
SET OwnerSplitAddress=PARSENAME(REPLACE(OwnerAddress,',','.'),3)


UPDATE Nashville
SET OwnerSplitCity=PARSENAME(REPLACE(OwnerAddress,',','.'),2)

UPDATE Nashville
SET OwnerSplitState=PARSENAME(REPLACE(OwnerAddress,',','.'),1)

SELECT * FROM Nashville
