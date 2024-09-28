Drop TABLE IF EXISTS all_sales;
CREATE TABLE `all_sales` (
  `SalesRepID` bigint DEFAULT NULL,
  `ProductID` bigint DEFAULT NULL,
  `ChannelID` bigint DEFAULT NULL,
  `SegmentID` bigint DEFAULT NULL,
  `RegionID` bigint DEFAULT NULL,
  `Date` text,
  `Quantity` bigint DEFAULT NULL,
  `Discount` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP PROCEDURE IF EXISTS Combine_sales;

DELIMITER //
CREATE PROCEDURE Combine_sales()
BEGIN
	DECLARE year INT DEFAULT 2011;
    
    -- loop from 2011 to 2020
    WHILE year <= 2020 Do
		-- Dynamically create the SQL to insert data from each table
        SET @sql = CONCAT('INSERT INTO all_sales (SalesRepID, ProductID, ChannelID, SegmentID, RegionID, Date, Quantity, Discount) ',
                  'SELECT SalesRepID, ProductID, ChannelID, SegmentID, RegionID, Date, Quantity, Discount FROM sales', year, ';');

        -- Prepare and execute the dynamic SQL
        PREPARE stmt FROM @sql;
        EXECUTE stmt;
        DEALLOCATE PREPARE stmt;

        -- Move to the next year
        SET year = year + 1;
    END WHILE;
END //

DELIMITER ;

CALL Combine_sales();
select COUNT(1) from all_sales;

DROP TABLE IF EXISTS sales2011, sales2012, sales2013, sales2014, sales2015, sales2016, sales2017, sales2018, sales2019, sales2020;
