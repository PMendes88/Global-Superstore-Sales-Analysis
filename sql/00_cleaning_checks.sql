-- SQL query to check for null values in any column of the 'orders' table
SELECT COUNT(*) AS rows_with_nulls
FROM orders
WHERE 
    Category IS NULL
 OR city IS NULL
 OR country IS NULL
 OR customer_ID IS NULL
 OR customer_Name IS NULL
 OR discount IS NULL
 OR market_1 IS NULL
 OR number_of_records IS NULL
 OR order_date IS NULL
 OR order_ID IS NULL
 OR order_priority IS NULL
 OR product_id IS NULL
 OR product_name IS NULL
 OR quantity IS NULL
 OR region IS NULL
 OR row_id IS NULL
 OR sales IS NULL
 OR segment IS NULL
 OR ship_date IS NULL
 OR ship_mode IS NULL
 OR shipping_cost IS NULL
 OR state IS NULL
 OR sub_category IS NULL
 OR market_2 IS NULL
 OR week_number IS NULL
 OR year IS NULL;


-- Ensure all ship dates come on or after the order date
SELECT COUNT(*) AS bad_dates
FROM orders
WHERE Ship_Date < Order_Date;




