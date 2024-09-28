# Sales Data Analysis Project

This project involves analyzing sales data using a combination of Power Query, Power Pivot, Excel Pivot Tables, Power BI, and MySQL. The goal is to provide a comprehensive overview of sales performance, identify key insights, and generate interactive reports and dashboards.

## Table of Contents

- [Power Query](#power-query)
- [Power Pivot](#power-pivot)
- [Pivot Tables](#pivot-tables)
- [Excel Report](#excel-report)
- [Power BI](#power-bi)
- [MySQL and Python](#mysql-and-python)
- [Tools and Libraries](#tools-and-libraries)
- [Unresolved Issues](#unresolved-issues)

## Power Query

1. Imported all CSV files from the data folder.
2. Imported lookup tables.
3. Checked and corrected data types.
4. Fixed the date data type.
5. Created a calendar table.

## Power Pivot

1. Added the sales table to the data model.
2. Added lookup tables to the data model.
3. Created a star schema.
4. Hid unnecessary columns from the client side.
5. Created an `Age` column for Sales Reps.
6. Created several measures:
   - **Total Quantity**
   - **Revenue**
   - **Avg, Min, Max Discount**
   - **Avg, Min, Max Price**
   - **Avg, Min, Max Commission Points**
   - **Avg, Min, Max Age**

## Pivot Tables

### Product Pivot Tables:
- **prod_01**: Revenue by product.
- **prod_02**: Total quantity sold by product.
- **prod_03**: Average commission points by product.
- **prod_04**: Min, Avg, Max commission points.
- **prod_05**: Min, Avg, Max discount.
- **prod_06**: Min, Avg, Max price.

### Channel Pivot Tables:
- **channel_01**: Revenue by channel.
- **channel_02**: Sales rep revenue by channel.
- **channel_03**: Total quantity sold by channel.
- **channel_04**: Sales rep total quantity by channel.
- **channel_05**: Revenue by segment.
- **channel_06**: Total quantity sold by segment.

### Sales Rep Pivot Tables:
- **sales_rep_01**: Age of each sales rep (Avg, Min, Max age).
- **sales_rep_02**: Count of reps by hiring date.
- **sales_rep_03**: Count of reps by marital status.
- **sales_rep_04**: Count of reps by bands.
- **sales_rep_05**: Count of reps by address.
- **sales_rep_06**: Count of reps by age.
- **sales_rep_07**: Reps revenue and total quantity by segment.

## Excel Report

Analyzed each sales rep's performance based on:
- **Channel** & **Segment** against **Product** & **Product Category**.
- Identifying:
   - **Revenue**
   - **Quantity Sold**
   - **Average Discount**

### Excel Filters:
- **Month**
- **Quarter**
- **Year**
- **Region**

## Power BI

### Product Page
- **Visuals**:
  - Price range
  - Discount range
  - Total revenue
  - Total quantity
  - Revenue by product
  - Quantity by product
- **Filters**: Product category.

### Channel Page
- **Visuals**:
  - Sales rep revenue by channel
  - Sales rep quantity by channel
  - Discount range
  - Total revenue
  - Total quantity by channel
  - Revenue by channel
- **Filters**: Channel, Segment.

### Sales Rep Page
- **Visuals**:
  - Distribution of sales reps by hiring date
  - Distribution of sales reps by age
  - Age range
  - Number of sales reps
  - Distribution by marital status
- **Filters**: Region.

### Sales Page
- **Visuals**:
  - Distribution of sales & quantity by date
  - Revenue & quantity by sales rep
- **Filters**: Month, Quarter, Year.

### All Pages Filter
- **Region**.

## MySQL and Python

### Python
- Imported data to MySQL using Python:
  - Selected all CSV files in the `CSV2011-2020` folder.
  - Chunks of 10,000 rows were used for import.
  - Imported lookup tables into the database.

### MySQL
- Combined sales tables into a single table.
- Removed individual sales tables after combining.

## Tools and Libraries

- **MySQL**
- **Python**:
  - Pandas
  - SQLAlchemy
  - PyMySQL

## Unresolved Issues

- **Error**: "Lost connection to MySQL server during query" is still unresolved.

---

This project involves a mix of data processing, pivot table analysis, report generation, and visual storytelling through Power BI. Contributions and suggestions are welcome!
