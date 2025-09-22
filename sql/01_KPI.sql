-- Total revenue for the year 2014
SELECT
    SUM(sales) AS total_revenue
FROM
    orders
WHERE
    order_year = 2014

-- Total profit for the year 2014
SELECT
    SUM(profit) AS total_profit
FROM
    orders
WHERE
    order_year = 2014

-- Average Profit Margin for the year 2014
SELECT
    ((SUM(profit) / SUM(sales)) * 100) AS profit_margin_percentage
FROM
    orders
WHERE
    order_year = 2014

-- Total number of unique customers

SELECT
    COUNT(DISTINCT customer_id) AS total_customers
FROM
    orders

-- Total number of unique customers in 2014
SELECT
    COUNT(DISTINCT customer_id) AS total_unique_customers_2014
FROM
    orders
WHERE
    order_year = 2014
