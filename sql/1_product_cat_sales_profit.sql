-- Top categories by revenue and profit
SELECT
    category,
    SUM(sales) AS total_revenue,
    ROUND(SUM(profit)) AS total_profit_pounds
FROM
    orders
GROUP BY
    category
ORDER BY
    total_revenue DESC,
    total_profit_pounds DESC

/* 

The product categories that generate the most ammount of revenue is technology,
closely followed up by furniture and office supplies.

However, when we look at profit, technology leads and furniture is the least profitable category.

This indicates that while furniture generates a lot of revenue, its profit margins are lower compared to technology and office supplies.

*/



