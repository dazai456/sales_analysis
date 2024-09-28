-- create a staging table 
DROP TABLE IF EXISTS sales_staging;
CREATE TABLE `sales_staging` (
  `SalesRepID` bigint DEFAULT NULL,
  `ProductID` bigint DEFAULT NULL,
  `ChannelID` bigint DEFAULT NULL,
  `SegmentID` bigint DEFAULT NULL,
  `RegionID` bigint DEFAULT NULL,
  `Date` text,
  `Quantity` bigint DEFAULT NULL,
  `Discount` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- insert Data
INSERT INTO sales_staging SELECT * FROM all_sales;

-- changing datatype of discount and date form text to suitable type
DESCRIBE sales_staging;

UPDATE sales_staging
SET 
	`Date` =  STR_TO_DATE(Date, '%d-%m-%y'),
	Discount = SUBSTRING_INDEX(Discount, '%', 1) / 100;
ALTER TABLE new_sales 
	MODIFY `Date` DATE,
    MODIFY Discount Float;

