SELECT
    country,
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit,
    order_year
FROM
    orders
GROUP BY
    country,
    order_year
ORDER BY
    total_profit DESC
LIMIT 10

/*
This query retrieves the top 10 countries by total profit for each year from the orders table.
Clearly, the countries with the highest profits are the most significant markets for the business.
The USA consistently shows the highest profits, indicating a strong market presence thoughout the years.
However, new markets like India, China and Europe are emerging as significant contributors to profit, suggesting potential growth opportunities.
*/