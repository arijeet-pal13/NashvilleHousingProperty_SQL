# NashvilleHousingProperty_SQL

### Data Cleaning in SQL
Data cleaning is the process of fixing or removing incorrect, incomplete, duplicate, corrupted, incorrectly structured, or otherwise erroneous data in a data set. These issues can arise from human error during data entry, merging different data structures, or combining different datasets that might use different terminology. Many of these errors can lead to wrong but believable results, skewing our understanding of the data.

### Why is Data Cleaning important?
Important business strategies, such as allocating funds and improving customer service, are often supported by data. When this data is questionable, the insights gathered from it and the consequential decisions can easily steer businesses down the wrong path. Data cleaning will improve the quality of information on which you base your decisions.

Data cleaning can also increase productivity. For example, customer data can often be inconsistent or out of date. Cleaning CRM and sales data can improve the productivity of sales and marketing efforts by eliminating the need to wade through outdated or incorrect data.


### Data cleaning overview
The specifics for data cleaning will vary depending on the nature of your dataset and what it will be used for. However, the general process is similar across the board.

Here is a 8-step data cleaning process that will help you prepare your data:

* Remove irrelevant data
* Remove duplicate data
* Fix structural errors
* Do type conversion
* Handle missing data
* Deal with outliers
* Standardize/Normalize data
* Validate data

### My Project Work Step by Step.
1. LOAD Data From Dataset to Database using IMPORT data wizard of MS SQL Server. This dataset is for Nashville Husing Details.
2.  Start Cleaning Process:
   * In the data table SaleDate column contained DateTime(Like 2020-06-13 00:00:00) format. Since the time part is 00:00:00 in all the         values so remove the time part and save the column as SaleDateConvert as only Date format. Code location         SQLCODE/Nashville_Date_CleanTransform_SQL.sql
   *  In the Property Address field many values ar NULL after looking some data I can understand that those NULL values can be replaced by PropertyAddress of same PercelId PropertyAddress. So I replaced the NULL values. Code location SQLCODE/Nashville_PropertyAddress_CleanTransform_SQL.sql
   *  In the PropertyAddress and OwnerAddress the values are all together like "address,city,state". Split the data into three part "Address","City","State" for both PropertyAddress and OwnerAddress Values. Code location SQLCODE/Nashville_Address_Transform.sql
   *  In the SoldAsVacant column maximum data is consist of "Yes" and "No". But some data is consist of "Y" and "N". So I changed the value "Y" to "Yes" and "N" to "No". Code location SQLCODE/Nashville_Change_Attribute_SoldASVacantColumn.sql
   *  In the Dataset many values are repeatating. So I remove the duplicate data using ROW_NUMBER() SQL Function and CTE. Code location SQLCODE/Nashville_RemoveDuplicate.sql
   *  In the Dataset there are many unused columns and NULL columns those data is not required for any further use. So DELETE those unused column from the dataset. Code location SQLCODE/Nashville_Delete_Unused_Column.sql
