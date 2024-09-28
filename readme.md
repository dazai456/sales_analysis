# Power Query
1. import all csv files from data folder
2. import look up tables 
3. checked data types
4. fixed the date date type
5. created a calender

# Power pivot
1. added sales table to the data model
2. added lookup table to the data model
3. created star schema
4. hide some columns from client side
5. created age column
6. created some measures
    - total quantity
    - revenue
    - avg, min, max Discount
    - avg, min, max Price
    - avg, min, max Commission Points
    - avg, min, max Age

# pivot tables
prod_01 => revenue by product
prod_02 => sum_qty by product
prod_03 => products avg commision points
prod_04 => min & avg & max points
prod_05 => min & avg & max points
prod_06 => min & avg & max price

channel_01 => revenue by channel 
channel_02 => sales rep revenue by channel 
channel_03 => sum_qty by channel
channel_04 => sales rep sum_qty by channel 
channel_05 => revenue by Segment 
channel_06 => sum_qty by Segment

sales_rep_01 => age of each rep & (avg || min || max) age 
sales_rep_02 => count of reps by hiring date 
sales_rep_03 => count of reps by Marital Status
sales_rep_04 => count of reaps by bands
sales_rep_05 => count of reaps by address
sales_rep_06 => count of reps by age 
sales_rep_07 => reps revenue & sum_qty by sigmant 

# Excel Report 
Analyzing each Sales Rep preformance by 
    - channel & segment aginest product & product category
    - measuring identifing Revenue & Qty & avg_discount
## Filters
- month
- quarter
- year
- Region

# Power BI

## Product page
- Price Range
- Discount Range
- Revenue
- Total Qty
- Revenue By Product
- QTY By Product
### Filter
- Product category

## Channel page
- sales rep revenue by channel
- sales rep Qty by channel
- Discount Range
- Revenue
- Total Qty By Channel
- Revenue By Channel
### Filter
- Channel 
- Segment

## Sales rep page
- Distribution of Sales Rep by hiring date
- Distribution of Sales Rep by Age
- Age Range
- Number of sales Rep
- Distribution of Sales Rep by Martial Status
### Filter
- Region

## Sales page
- Distribution of Sales & QTY by Date
- Revenue & Qty by Sales Rep 
### Filter
- month
- quarter
- year

## All Pages Filter
- Region


# MYSQL Part
1. Python
- importing the data to mysql db 
    - selecting all files in CSV2011-2020 folder
    - chunk each one to 10000 size 
    - import them to the database
    - Imported lookup tables to the database
2. MYSQL
- Combined sales tables to 1 table 
- Removed sales tables
- 
## used tools and libs
 - mysql
 - python
    - pandas
    - sqlalchemy
    - pymysql
## error didn't solve yet
- retruns lost connection to mysql server during query