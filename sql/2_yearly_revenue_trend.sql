
-- Add new columns for year, month, and day
ALTER TABLE orders
ADD COLUMN order_year INT,
ADD COLUMN order_month INT,
ADD COLUMN order_day INT;

-- Populate the new columns with extracted values from order_date
UPDATE orders
SET 
    order_year  = EXTRACT(YEAR FROM order_date),
    order_month = EXTRACT(MONTH FROM order_date),
    order_day   = EXTRACT(DAY FROM order_date);

-- Delete previous YEAR column
ALTER TABLE orders
DROP COLUMN YEAR

-- Yearly revenue trend
SELECT
    order_year,
    SUM(sales) AS total_revenue
FROM
    orders
GROUP BY
    order_year
ORDER BY
    order_year DESC

/*
The yearly revenue trend shows a consistent increase in revenue from 2011 to 2014.
This indicates a positive growth trajectory for the business over these years.
*/

-- Monthly revenue trend for 2014
SELECT
    order_month,
    SUM(sales) AS total_revenue
FROM
    orders
WHERE
    order_year = 2014
GROUP BY
    order_month
ORDER BY
    total_revenue DESC

/*
The monthly revenue trend for 2014 shows fluctuations throughout the year.
Notably, there is a significant peak in November and December, likely due to holiday shopping.
This suggests that seasonal factors play a crucial role in revenue generation.
*/