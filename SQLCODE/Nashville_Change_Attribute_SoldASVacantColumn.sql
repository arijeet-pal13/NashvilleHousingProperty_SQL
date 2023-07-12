

-- Change Y to Yes and N to No in SoldAsVacant Column

SELECT * FROM Nashville

SELECT DISTINCT(SoldAsVacant),COUNT(SoldASVacant)
FROM Nashville
GROUP BY SoldAsVacant



SELECT SoldAsVacant,
CASE WHEN SoldAsVacant = 'Y' THEN 'Yes'
	 WHEN SoldAsVacant = 'N' THEN 'No'
	 ELSE SoldAsVacant
END
FROM Nashville


UPDATE Nashville
SET SoldAsVacant =CASE WHEN SoldAsVacant = 'Y' THEN 'Yes'
					   WHEN SoldAsVacant = 'N' THEN 'No'
					   ELSE SoldAsVacant
				  END

SELECT * FROM Nashville